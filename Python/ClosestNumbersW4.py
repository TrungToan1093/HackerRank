import math
import os
import random
import re
import sys

# Tìm 2 số liền kề gần nhỏ nhất

def closestNumbers(arr):
    arr.sort(reverse=False)
    min_value: int = None
    list: [int] = []
    for i in range(len(arr)-1):
        temp_value = arr[i+1] - arr[i]
        if min_value is None:
            min_value = temp_value
        elif temp_value < min_value:
            min_value = temp_value
            list = [arr[i], arr[i+1]]
        elif min_value == temp_value:
            list.append(arr[i])
            list.append(arr[i+1])

    converted_list = [str(element) for element in list]
    print("{}".format(' '.join(converted_list)))

if __name__ == '__main__':
    closestNumbers([-20,-3916237,30,6246457,266854])