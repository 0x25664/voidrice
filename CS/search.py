data = [1,3,7,3,5,6,9]
target = 4

def linear_search():
    for i in range(len(data)):
        if data[i] == target:
            return True
    return False

def iterative_binary_search():
    low = 0
    high = len(data) - 1

    while low <= high:
        mid = (low + high) // 2
        if target == data[mid]:
            return True
        elif target < data[mid]:
            high = mid - 1
        else:
            low = mid + 1
    return False

print(linear_search())
print(iterative_binary_search())
