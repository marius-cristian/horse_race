import numpy as np
import matplotlib.pyplot as plt

def readFile(file):
	with open(file) as f:
		lines = f.readlines()
		x = [line.split()[0] for line in lines]
		y = [line.split()[1] for line in lines]
	return x,y

def plotFig(title,label_,x_label,y_label,x,y):
	fig = plt.figure()
	ax1 = fig.add_subplot(111)
	
	ax1.set_title(title)
	ax1.set_xlabel(x_label)
	ax1.set_ylabel(y_label)	
	ax1.plot(x,y, c='r', label=label_)
	leg = ax1.legend()
	plt.show()

def plotFig2(title,label1,label2,x_label,y_label,x1,y1,x2,y2):
	fig = plt.figure()
	ax1 = fig.add_subplot(111)
	ax1.set_title(title)
	ax1.set_xlabel(x_label)
	ax1.set_ylabel(y_label)	
	ax1.plot(x1,y1, c='r', label=label1)
	ax1.plot(x2,y2, c='g', label=label2)
	leg = ax1.legend()
	plt.show()



if __name__ == "__main__":
	print("main")
	x,y=readFile('./time.txt')
	a,b=readFile('./z/time.txt')
	#print(x)
	#print(y)
	plotFig2('Test','wrong','correct','length','time',x,y,a,b)