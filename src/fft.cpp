/*****************************************************************************
 * Inline FFT algorithm implemented using template metaprograms
 * Author: Todd Veldhuizen        (tveldhui@seurat.uwaterloo.ca)
 *
 * This program may be redistributed in an unmodified form.  It may not be
 * sold or used in a commercial product.
 *
 * For more information on these template techniques, please see the
 * Blitz++ Numerical Library Project, at URL http://monet.uwaterloo.ca/blitz/
 *
 * $Id: fft.cpp,v 1.2 1996/05/07 15:16:06 tveldhui Exp $
 *
 * $Log: fft.cpp,v $
 * Revision 1.2  1996/05/07 15:16:06  tveldhui
 * Changed use of "go ? X : 0" to "go * X" for g++
 *
 * Revision 1.1  1996/05/07 15:12:48  tveldhui
 * Initial revision
 *
 */

/*
 *  Modified to compile with  g++ --version
 *                            g++ (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609
 *  2017-10-16
 *
 *  Marius-Florin Cristian
 *
*/ 

//#ifndef __FFT__
//#define __FFT__

#include <iostream>
#include <iomanip>
#include <cmath>
#include <float.h>

/*****************************************************************************
 * four1() implements a Cooley-Tukey FFT on N points, where N is a power of 2.
 * "Numerical Recipes in C", 2nd Edition (Teukolsky,Press,Vetterling,Flannery).
 *
 * It serves as the basis for the inline version found below.  All of the
 * variable names have been preserved in the inline version for comparison
 * purposes.  Also, the line numbers are referred to in the corresponding
 * template classes.
 ****************************************************************************/

namespace FFT{

    #define SWAP(a,b) tempr=(a); (a)=(b); (b) = tempr
    
    // Replaces data[1..2*nn] by its discrete Fourier transform.  data[] is a
    // complex array
    void four1(float data[], unsigned long nn, int isign)
    {
        unsigned long n, mmax, m, j, istep, i;
        double wtemp, wr, wpr, wpi, wi, theta;
        float tempr, tempi;
    
        n = nn << 1;
        j=1;
    
        for (i=1; i < n; i+= 2) {                                       //   1
            if (j > i)                                                  //   2
            {                                                           //   3
                SWAP(data[j], data[i]);                                 //   4
                SWAP(data[j+1], data[i+1]);                             //   5
            }                                                           //   6
            m = n >> 1;                                                 //   7
            while (m >= 2 && j > m) {                                   //   8
                j -= m;                                                 //   9
                m >>= 1;                                                //  10
            }                                                           //  11
            j += m;                                                     //  12
        };                                                              //  13
                                                                        //  14
        mmax=2;                                                         //  15
                                                                        //  16
        while (n > mmax) {                                              //  17
            istep = mmax << 1;                                          //  18
            theta = isign * (6.28318530717959/mmax);                    //  19
            wtemp = sin(0.5*theta);                                     //  20
            wpr = -2.0*wtemp*wtemp;                                     //  21
            wpi = sin(theta);                                           //  22
            wr = 1.0;                                                   //  23
            wi = 0.0;                                                   //  24
                                                                        //  25
            for (m=1; m < mmax; m += 2) {                               //  26
                                                                        //  27
                for (i=m; i <= n; i += istep) {                         //  28
                                                                        //  29
                    j=i+mmax;                                           //  30
                    tempr = wr*data[j] - wi*data[j+1];                  //  31
                    tempi = wr * data[j+1] + wi*data[j];                //  32
                                                                        //  33
                                                                        //  34
                    data[j] = data[i] - tempr;                          //  35
                    data[j+1] = data[i+1] - tempi;                      //  36
                    data[i] += tempr;                                   //  37
                    data[i+1] += tempi;                                 //  38
                }                                                       //  39
                                                                        //  40
                  wr = (wtemp=wr)*wpr-wi*wpi+wr;                        //  41
                  wi=wi*wpr+wtemp*wpi+wi;                               //  42
            }                                                           //  43
            mmax=istep;                                                 //  44
        }                                                               //  45
    }
    
    /*****************************************************************************
     * Now begins the inline FFT implementation.
     *
     * The way to read this code is from the very bottom (starting with FFTServer)
     * upwards.  This is because the classes are declared in order from the
     * optimizations in the innermost loops, to the outer loops, and finally
     * FFTServer itself.
     *
     * Why are floats passed as const float&?  This eliminates some unnecessary
     * instructions under Borland C++ 4.02 compiler for an 80486.  It may be
     * better to pass floats as 'float' for other compilers.
     *
     * Here is a summary of the classes involved:
     *
     * Sine<N,I>         Calculates sin(2*Pi*I/N)
     * Cos<N,I>          Calculates cos(2*Pi*I/N)
     * bitNum<N>         Calculates 16-log2(N), where N is a power of 2
     * reverseBits<N,I>  Reverses the order of the bits in I
     * FFTSwap2<I,R>     Implements swapping of elements, for array reordering
     * FFTSwap<I,R>      Ditto
     * FFTReorder<N,I>   Implements array reordering
     * FFTCalcTempR<M>   Squeezes out an optimization when the weights are (1,0)
     * FFTCalcTempI<M>   Ditto
     * FFTInnerLoop<N,MMAX,M,I> Implements the inner loop (lines 28-39 in four1)
     * FFTMLoop<N,MMAX,M> Implements the middle loop (lines 26, 41-42 in four1)
     * FFTOuterLoop<N,MMAX> Implements the outer loop (line 17 in four1)
     * FFTServer<N>      The FFT Server class
     ****************************************************************************/
    
    
    /*
     * First, compile-time trig functions sin(x) and cos(x).
     */
    
    template<unsigned N, unsigned I>
    class Sine {
    public:
      static inline float sin()
      {
        // This is a series expansion for sin(I*2*M_PI/N)
        // Since all of these quantities are known at compile time, it gets
        // simplified to a single constant, which can be included in the code:
        // mov dword ptr es:[bx],large 03F3504F3h
    
        return (I*2*M_PI/N)*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/2/3*(1-(I*2*M_PI/N)*
               (I*2*M_PI/N)/4/5*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/6/7*(1-(I*2*M_PI/N)*
               (I*2*M_PI/N)/8/9*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/10/11*(1-(I*2*M_PI/N)*
               (I*2*M_PI/N)/12/13*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/14/15*
               (1-(I*2*M_PI/N)*(I*2*M_PI/N)/16/17*
               (1-(I*2*M_PI/N)*(I*2*M_PI/N)/18/19*(1-(I*2*M_PI/N)*
               (I*2*M_PI/N)/20/21))))))))));
      }
    };
    
    
    template<unsigned N, unsigned I>
    class Cosine {
    public:
      static inline float cos()
      {
        // This is a series expansion for cos(I*2*M_PI/N)
        // Since all of these quantities are known at compile time, it gets
        // simplified to a single number.
        return 1-(I*2*M_PI/N)*(I*2*M_PI/N)/2*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/3/4*
            (1-(I*2*M_PI/N)*(I*2*M_PI/N)/5/6*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/7/8*
            (1-(I*2*M_PI/N)*(I*2*M_PI/N)/9/10*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/11/12*
            (1-(I*2*M_PI/N)*(I*2*M_PI/N)/13/14*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/15/16*
            (1-(I*2*M_PI/N)*(I*2*M_PI/N)/17/18*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/19/20*
            (1-(I*2*M_PI/N)*(I*2*M_PI/N)/21/22*(1-(I*2*M_PI/N)*(I*2*M_PI/N)/23/24
            )))))))))));
      }
    
    };
    
    /*
     * The next few classes (bitNum, reverseBits, FFTSwap, FFTReorder) implement
     * the bit-reversal reordering of the input data set (lines 1-14).  However,
     * the algorithm used here bears no resemblence to that in the routine above.
     */
    
    /*
     * bitNum<N> returns 16-log2(N); this is used to implement the bit-reversal
     * swapping portion of the routine.  There's a nice recursive
     * implementation for this, but Borland C++ 4.0 gives a 'Too many template
     * instances' warning. So use specialization instead.  Note that N must be
     * a power of 2.
     */
    
    template<unsigned N>
    class bitNum {
    public:
       enum _b { nbits = 0 };
    };
    
    template<>class bitNum<1U>     { public: enum _b { nbits = 16    }; };
    template<>class bitNum<2U>     { public: enum _b { nbits = 15    }; };
    template<>class bitNum<4U>     { public: enum _b { nbits = 14    }; };
    template<>class bitNum<8U>     { public: enum _b { nbits = 13    }; };
    template<>class bitNum<16U>    { public: enum _b { nbits = 12    }; };
    template<>class bitNum<32U>    { public: enum _b { nbits = 11    }; };
    template<>class bitNum<64U>    { public: enum _b { nbits = 10    }; };
    template<>class bitNum<128U>   { public: enum _b { nbits = 9     }; };
    template<>class bitNum<256U>   { public: enum _b { nbits = 8     }; };
    template<>class bitNum<512U>   { public: enum _b { nbits = 7     }; };
    template<>class bitNum<1024U>  { public: enum _b { nbits = 6     }; };
    template<>class bitNum<2048U>  { public: enum _b { nbits = 5     }; };
    template<>class bitNum<4096U>  { public: enum _b { nbits = 4     }; };
    template<>class bitNum<8192U>  { public: enum _b { nbits = 3     }; };
    template<>class bitNum<16384U> { public: enum _b { nbits = 2     }; };
    template<>class bitNum<32768U> { public: enum _b { nbits = 1     }; };
    
    /*
     * reverseBits<N,I>::reverse is the number I with the order of its bits
     * reversed.  For example,
     *
     * <8,3>   3 is 011, so reverse is 110 or 6
     * <8,1>   1 is 001, so reverse is 100 or 8
     *
     * The enum types are used as temporary variables.
     */
    
    template<unsigned N, unsigned I>
    class reverseBits {
    public:
        enum _r4 { I4 = (((unsigned)I & 0xaaaa) >> 1)
                      | (((unsigned)I & 0x5555) << 1) };
        enum _r3 { I3 = (((unsigned)I4 & 0xcccc) >> 2)
                      | (((unsigned)I4 & 0x3333) << 2) };
        enum _r2 { I2 = (((unsigned)I3 & 0xf0f0) >> 4)
                      | (((unsigned)I3 & 0x0f0f) << 4) };
        enum _r1 { I1 = (((unsigned)I2 & 0xff00) >> 8)
                      | (((unsigned)I2 & 0x00ff) << 8) };
        enum _r { reverse = ((unsigned)I1 >> bitNum<N>::nbits) };
    };
    
    /*
     * FFTSwap<I,R>::swap(float* array) swaps the (complex) elements I and R of
     * array.  It does this only if I < R, to avoid swapping a pair twice or
     * an element with itself.
     */
    
    template<unsigned I, unsigned R>
    class FFTSwap2 {
    public:
        static inline void swap(float* array)
        {
            register float temp = array[2*I];
            array[2*I] = array[2*R];
            array[2*R] = temp;
            temp = array[2*I+1];
            array[2*I+1] = array[2*R+1];
            array[2*R+1] = temp;
        }
    };
    
    template<>class FFTSwap2<0U,0U> {
    public:
        static inline void swap(float* array)
        { }
    };
    
    template<unsigned I, unsigned R>
    class FFTSwap {
    public:
        enum _go { go = (I < R) };
    
        static inline void swap(float* array)
        {
            // Only swap if I < R
            FFTSwap2<go * I, go * R>::swap(array);
        }
    };
    
    /*
     * FFTReorder<N,0>::reorder(float* array) reorders the complex elements
     * of array[] using bit reversal.
     */
    template<unsigned N, unsigned I>
    class FFTReorder {
    public:
        enum _go { go = (I+1 < N) };    // Loop from I=0 to N.
    
        static inline void reorder(float* array)
        {
            // Swap the I'th element if necessary
            FFTSwap<I,(unsigned)reverseBits<N,I>::reverse>::swap(array);
    
            // Loop
            FFTReorder<go * N, go * (I+1)>::reorder(array);
        }
    };
    
    // Base case to terminate the recursive loop
    template<>class FFTReorder<0U,0U> {
    public:
        static inline void reorder(float* array)
        { }
    };
    
    
    /*
     * FFTCalcTempR and FFTCalcTempI are provided to squeeze out an optimization
     * for the case when the weights are (1,0), on lines 31-32 above.
     */
    template<unsigned M>
    class FFTCalcTempR {
    public:
        static inline float tempr(const float& wr, const float& wi, float* array,
            const int j)
        {
            return wr * array[j] - wi * array[j+1];
        }
    };
    
    template<>class FFTCalcTempR<1U> {
    public:
        static inline float tempr(const float& wr, const float& wi, float* array,
            const int j)
        {
            // For M == 1, (wr,wi) = (1,0), so specialization leads to a nice
            // optimization:
            return array[j];
        }
    };
    
    template<unsigned M>
    class FFTCalcTempI {
    public:
        static inline float tempi(const float& wr, const float& wi, float* array,
            const int j)
        {
            return wr * array[j+1] + wi * array[j];
        }
    };
    
    template<>class FFTCalcTempI<1U> {
    public:
        static inline float tempi(const float& wr, const float& wi, float* array,
            const int j)
        {
            return array[j+1];
        }
    };
    
    /*
     * FFTInnerLoop implements lines 28-39.
     */
    
    template<unsigned N, unsigned MMAX, unsigned M, unsigned I>
    class FFTInnerLoop {
    public:
        // Loop break condition
        enum _go { go = (I+2*MMAX <= 2*N) };
    
        static inline void loop(const float& wr, const float& wi, float* array)
        {
            const int j = I+MMAX;       // Known at compile time
    
            float tempr = FFTCalcTempR<M>::tempr(wr,wi,array,j);
            float tempi = FFTCalcTempI<M>::tempi(wr,wi,array,j);
    
            array[j] = array[I] - tempr;
            array[j+1] = array[I+1] - tempi;
            array[I] += tempr;
            array[I+1] += tempi;
    
            // Loop
            FFTInnerLoop<go * N,
                         go * MMAX,
                         go * M,
                         go * (unsigned)(I+2*MMAX)>::loop(wr,wi,array);
        }
    };
    
    // Specialization to provide base case for loop recursion
    template<>class FFTInnerLoop<0U,0U,0U,0U> {
    public:
        static inline void loop(const float& wr, const float& wi, float* array)
        { }
    };
    
    /*
     * FFTMLoop implements the middle loop (lines 26, 41-42).  However, instead
     * of using a trigonometric recurrence to compute the weights wi and wr, they
     * are computed at compile time using the Sine and Cosine classes.  This way,
     * the weights are inserted into the code, eg.
     *   mov dword ptr [bp-360],large 03F6C835Eh   // Cosine of something or other
     */
    template<unsigned N, unsigned MMAX, unsigned M>
    class FFTMLoop {
    public:
        enum _go { go = (M+2 < MMAX) };
    
        static inline void loop(float* array)
        {
            float wr = Cosine<MMAX,(M-1)/2>::cos();
            float wi = Sine<MMAX,(M-1)/2>::sin();
    
            // Call the inner loop
            FFTInnerLoop<N,MMAX,M,M>::loop(wr,wi,array);
    
            // Loop
            FFTMLoop<go * N,
                     go * MMAX,
                     go * (unsigned)(M+2)>::loop(array);
        }
    };
    
    // Specialization for base case to terminate recursive loop
    template<>class FFTMLoop<0U,0U,0U> {
    public:
        static inline void loop(float* array)
        { }
    };
    
    /*
     * FFTOuterLoop implements the outer loop (Line 17).
     */
    template<unsigned N, unsigned MMAX>
    class FFTOuterLoop {
    public:
        // Loop break condition
        enum _go { go = ((MMAX << 1) < (2*N)) };
    
        static inline void loop(float* array)
        {
            // Invoke the middle loop
            FFTMLoop<N, MMAX, 1U>::loop(array);
    
            // Loop
            FFTOuterLoop<go * N,
                         go * (unsigned)(MMAX << 1)>::loop(array);
        }
    };
    
    // Specialization for base case to terminate recursive loop
    template<>class FFTOuterLoop<0U,0U> {
    public:
        static inline void loop(float* array)
        { }
    };
    
    
    /*
     * And finally, the FFT server itself.
     *
     * Input is an array of float precision complex numbers, stored in (real,imag)
     * pairs, starting at array[1].  ie. for an N point FFT, need to use arrays of
     * float[2*N+1].  The element array[0] is not used, to be compatible with
     * the Numerical Recipes implementation.  N MUST be a power of 2.
     */
    
    template<unsigned N>
    class FFTServer {
    
    public:
        static void FFT(float* array);
    };
    
    template<unsigned N>
    void FFTServer<N>::FFT(float* array)
    {
        // Reorder the array, using bit-reversal.  Confusingly, the
        // reorder portion expects the data to start at 0, rather than 1.
        FFTReorder<N,0U>::reorder(array+1);
    
        // Now do the FFT
        FFTOuterLoop<N,2U>::loop(array);
    }
    
    /*
     * Test program to take an N-point FFT.
     */
    
    //int main()
    //{
    //    const unsigned N = 8;
    //
    //    float data[2*N];
    //
    //    int i;
    //
    //    for (i=0; i < 2*N; ++i)
    //        data[i] = i;
    //
    //    FFTServer<N>::FFT(data-1);       // Original four1() used arrays starting
    //                                     // at 1 instead of 0
    //
    //    std::cout << "Transformed data:" << std::endl;
    //    
    //    for (i=0; i < N; ++i)
    //        std::cout << std::setw(10) << std::setprecision(5) << data[2*i] << "\t"
    //             << data[2*i+1] << "I" << std::endl;
    //
    //    return 0;
    //}
}
//
//#endif