import itertools

def minimumAbsoluteDifference(arr):
    # Write your code here
    n = len(arr)
    if n < 2 or n > pow(10, 5):
        return
    arr.sort(reverse=False)
    result: float = None
    for i in range(len(arr)-1):
        if arr[i] < -pow(10,9) or arr[i] > pow(10, 9):
            return
        temp_value = abs(arr[i] - arr[i+1])
        if result is None or temp_value < result:
            result = temp_value
    # for combination in itertools.combinations(arr, 2):
    #     if combination[0] < -pow(10,9) or combination[0] > pow(10, 9):
    #         return
    #     elif combination[1] < -pow(10,9) or combination[1] > pow(10, 9):
    #         return
    #     temp_value: float = abs(combination[0]-combination[1])
    #     if result == None or temp_value < result:
    #         result = temp_value
    print(f"ToanHT {result}")
    return result

if __name__ == '__main__':
    minimumAbsoluteDifference([-2,4,2])