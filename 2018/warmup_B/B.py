n = int(input())
x1, y1 = [int(i) for i in input().split()]
x2, y2 = [int(i) for i in input().split()]

half = n / 2

if (x1 <= half and x2 > half) or (x1 > half and x2 <= half):
    print("S")
elif (y1 <= half and y2 > half) or (y1 > half and y2 <= half):
    print("S")
else:
    print("N")
