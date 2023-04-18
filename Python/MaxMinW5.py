import math
import os
import random
import re
import sys

def maxMin(k, arr):
    n = len(arr)
    if n < 2 or n > pow(10,5):
        return
    if k < 2 or k > n:
        return
    arr.sort(reverse=False)
    min_value: int = None

    for i in range(len(arr)-k + 1 ):
        min_denote: int = arr[i + k - 1] - arr[i]
        if min_value is None:
            min_value = min_denote
        elif min_value > min_denote:
            min_value = min_denote
    #     max_denote = max(arr[i:i+k])
    #     min_denote = min(arr[i:i+k])
        # for j in range(k):
        #     value = arr[i+j]
        #     if value < 0 or value > pow(10,9):
        #         return
        #     if max_denote is None:
        #         max_denote = value
        #     elif value > max_denote:
        #         max_denote = value
        #
        #     if min_denote is None:
        #         min_denote = value
        #     elif value < min_denote:
        #         min_denote = value

        # if min_value is None:
        #     min_value = max_denote - min_denote
        # elif min_value > max_denote - min_denote:
        #     min_value = max_denote - min_denote
    return min_value
    # Write your code here


if __name__ == '__main__':
    print(maxMin(2, [1,4,7,2]))