for i in range(1, 6):
    if i == 3:
        break
    print(i)


for i in range(1, 6):
    if i == 3:
        continue
    print(i)


i = 1

while i <= 5:
    if i == 4:
        break
    print(i)
    i += 1

print("**************")
i = 0

while i < 5:
    i += 1
    if i == 3:
        continue
    print(i)