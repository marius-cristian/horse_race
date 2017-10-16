#!/usr/bin/env python3
import fileinput

with fileinput.FileInput('integer.h++', inplace=True, backup='.bak') as file:
    for line in file:
        print(line.replace(chr(235), 'SIDHARTH'), end='')