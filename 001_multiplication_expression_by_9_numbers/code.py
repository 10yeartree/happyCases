def getNextiArr(arr, *num):
    newArr = []
    for i in arr:
        isNeed = True
        for j in num:
            if i == j:
                isNeed = False
                break
        if isNeed == True:
            newArr.append(i)
    return newArr

def main():
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    for i1 in arr:
        for i2 in getNextiArr(arr, i1):
            for i3 in getNextiArr(arr, i1, i2):
                for i4 in getNextiArr(arr, i1, i2, i3):
                    for i5 in getNextiArr(arr, i1, i2, i3, i4):
                        for i6 in getNextiArr(arr, i1, i2, i3, i4, i5):
                            for i7 in getNextiArr(arr, i1, i2, i3, i4, i5, i6):
                                for i8 in getNextiArr(arr, i1, i2, i3, i4, i5, i6, i7):
                                    i9 = getNextiArr(arr, i1, i2, i3, i4, i5, i6, i7, i8)[0]
                                    num1 = i1 * 1000 + i2 * 100 + i3 * 10 + i4
                                    num2 = i5
                                    result = i6 * 1000 + i7 * 100 + i8 * 10 + i9
                                    if num1 * num2 == result:
                                        print '%d * %d = %d' % (num1, num2, result)

if "__main__" == __name__:
    main()
