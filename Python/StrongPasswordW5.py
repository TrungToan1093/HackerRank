import math
import os
import random
import re
import sys


def minimumNumber(n, password):
    # Return the minimum number of characters to make the password strong
    # pattern = re.compile("^([a-z][A-Z][0-9][!@#$%^&*()-+])+$")
    if n < 1 or n > 100:
        return None
    numbers = "0123456789"
    lower_case = "abcdefghijklmnopqrstuvwxyz"
    upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    special_characters = "!@#$%^&*()-+"
    min_count_input = 6
    count_condition = 5
    pass_condition = 0
    wrong_input = 0
    result = 0
    is_numbers_pass: bool = False
    is_lower_case_pass: bool = False
    is_upper_case_pass: bool = False
    is_special_characters_pass: bool = False
    password = str(password)
    for char in password:
        if char in numbers:
            if not is_numbers_pass:
                pass_condition += 1
            is_numbers_pass = True
            # count_condition -= 1
        elif char in lower_case:
            if not is_lower_case_pass:
                pass_condition += 1
            is_lower_case_pass = True
        elif char in upper_case:
            if not is_upper_case_pass:
                pass_condition += 1
            is_upper_case_pass = True
        elif char in special_characters:
            if not is_special_characters_pass:
                pass_condition += 1
            is_special_characters_pass = True
        else:
            wrong_input += 1
    if len(password) >= min_count_input:
        if pass_condition == 0:
            result = len(password)
        else:
            pass_to_fill = count_condition - 1 - pass_condition
            result = max(wrong_input, pass_to_fill)
            # result = (count_condition - 1) - pass_condition + wrong_input
    else:
        count_to_fill = min_count_input - len(password)
        pass_to_fill = count_condition - pass_condition - 1
        result = max(count_to_fill, pass_to_fill)
    return result


def minimumNumber2(n, password):
    # Return the minimum number of characters to make the password strong
    if n < 1 or n > 100:
        return None
    numbers = set("0123456789")
    lower_case = set("abcdefghijklmnopqrstuvwxyz")
    upper_case = set("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    special_characters = set("!@#$%^&*()-+")
    P = set(password)
    N = 0 if len(P.intersection(numbers)) >= 1 else 1
    L = 0 if len(P.intersection(lower_case)) >= 1 else 1
    U = 0 if len(P.intersection(upper_case)) >= 1 else 1
    S = 0 if len(P.intersection(special_characters)) >= 1 else 1
    return max(N + L + U + S, 6 - len(password))


if __name__ == '__main__':
    print(minimumNumber(3, "a7?Z!???"))
    print(minimumNumber2(3, "a7?Z!???"))

    # if len(password) >= 6:
    #     # count_condition -= 1
    #     pass_condition += 1
    #     print("a")
    #     return count_condition - pass_condition
    # elif pass_condition == 4:
    #     print("b")
    #     return count_condition - len(password) + 1
    # else:
    #     print("c")
    #     return 6 - pass_condition

    # return count_condition - pass_condition
    # result: int = 0
    # if n < 1 or n > 100 or pattern.match(password) == False:
    #     return -1
    # return result
