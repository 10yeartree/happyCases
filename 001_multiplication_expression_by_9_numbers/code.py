def getNextArr(arr, *num):
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
        for i2 in getNextArr(arr, i1):
            for i3 in getNextArr(arr, i1, i2):
                for i4 in getNextArr(arr, i1, i2, i3):
                    for i5 in getNextArr(arr, i1, i2, i3, i4):
                        for i6 in getNextArr(arr, i1, i2, i3, i4, i5):
                            for i7 in getNextArr(arr, i1, i2, i3, i4, i5, i6):
                                for i8 in getNextArr(arr, i1, i2, i3, i4, i5, i6, i7):
                                    for i9 in getNextArr(arr, i1, i2, i3, i4, i5, i6, i7, i8):
                                        num1 = i1 * 1000 + i2 * 100 + i3 * 10 + i4
                                        num2 = i5
                                        result = i6 * 1000 + i7 * 100 + i8 * 10 + i9
                                        if num1 * num2 == result:
                                            print '%d * %d = %d' % (num1, num2, result)

                                        num1 = i1 * 10 + i2
                                        num2 = i3 * 100 + i4 * 10 + i5
                                        result = i6 * 1000 + i7 * 100 + i8 * 10 + i9
                                        if num1 * num2 == result:
                                            print '%d * %d = %d' % (num1, num2, result)
                                    
if "__main__" == __name__:
    main()
