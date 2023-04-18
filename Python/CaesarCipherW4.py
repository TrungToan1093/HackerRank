import math
import os
import random
import re
import sys


def caesarCipher(s, k):
    # Write your code here
    n = len(s)
    if n < 1 or n > 100:
        return
    if k < 0 or k > 100:
        return
    if k > 26:
        k = k % 26
    new_string: str = ""
    for item in str(s):
        if item.isalpha():
            asc = ord(item) + k
            if ord("A") <= ord(item) <= ord("Z"):
                if asc > ord("Z"):
                    a = ord("Z") - ord(item)
                    b = k - a - 1
                    asc = ord("A") + b
            elif ord("a") <= ord(item) <= ord("z"):
                if asc > ord("z"):
                    a = ord("z") - ord(item)
                    b = k - a - 1
                    asc = ord("a") + b
            new_string += chr(asc)
        else:
            new_string += item
    return new_string

if __name__ == '__main__':
    print(caesarCipher("W",62))