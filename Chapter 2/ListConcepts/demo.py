name = list("kanna")
print(name)

FullNsmr = ('K','A','N','N','A')
print(FullNsmr)
print(list(FullNsmr))

emptyList = list()
print(emptyList)



fruits = ["Apple", "Mango", "Orange","Chickoo"]

print(fruits[0])
print(fruits[1])
print(fruits[2])
print(fruits[3])
print(fruits[-1])
print(fruits[-2])

fruits[3] = "Banana"

print(fruits)

numbers = [10, 20, 30]

numbers.append(40)

print(numbers)

numbers = [10, 20, 30]

numbers.insert(1, 15)

print(numbers)

numbers = [1, 2]

numbers.extend([3, 4, 5])

print(numbers)

fruits = ["Apple", "Mango", "Orange"]

fruits.remove("Mango")

print(fruits)

numbers = [10, 20, 30]

numbers.pop(1)

print(numbers)

numbers = [1, 2, 3]

del numbers[1]

print(numbers)

numbers = [1, 2, 3]

numbers.clear()

print(numbers)

fruits = ["Apple", "Mango", "Orange"]

print(len(fruits))


fruits = ["Apple", "Mango", "Orange"]

for fruit in fruits:
    print(fruit)

fruits = ["Apple", "Mango", "Orange"]

print("Mango" in fruits) #True

print("Chickoo" in fruits) # false

print("Mango" not in fruits) # fasle

print("Chickoo" not in fruits) # true


numbers = [40, 10, 30, 20]

numbers.sort()

print(numbers)

numbers = [40, 10, 30, 20]

numbers.sort(reverse=True)

print(numbers)

numbers = [40, 10, 30, 20]

numbers.reverse()

print(numbers)
