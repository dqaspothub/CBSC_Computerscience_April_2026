fruits = ("Apple", "Mango", "Orange")

print(fruits[0])
print(fruits[1])
print(fruits[2])
print(fruits[-3])


fruits = ("Apple",)

print(fruits)

fruits = (8,)

print(fruits)


fruits = ("Apple", "Mango", "Orange")

for fruit in fruits:
    print(fruit)


numbers = (10, 20, 30)

print(len(numbers))

fruits = ("Apple", "Mango", "Orange")

print("Mango" in fruits)


numbers = (10, 20, 30, 40, 50)

print(numbers[1:5])

a = (1, 2, 3)
b = (4, 5, 6)

c = a + b

print(c)

numbers = (1, 2)

print(numbers * 3)

numbers = (10, 20, 10, 30, 10)

print(numbers.count(10))
print(min(numbers))
print(max(numbers))

numbers = (10, 20, 30)

print(numbers.index(20))

t = tuple("abc")

print(t)