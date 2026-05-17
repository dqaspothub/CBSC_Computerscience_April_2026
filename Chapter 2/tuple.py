# Creating Tuple
fruits = ("Apple", "Mango", "Orange", "Apple")

print("Original Tuple:")
print(fruits)

# Length
print("\nLength:")
print(len(fruits))

# Accessing
print("\nAccessing Elements:")
print(fruits[0])
print(fruits[-1])

# Slicing
print("\nSlicing:")
print(fruits[1:3])

# Looping
print("\nLooping:")

for fruit in fruits:
    print(fruit)

# count()
print("\nCount Method:")
print(fruits.count("Apple"))

# index()
print("\nIndex Method:")
print(fruits.index("Orange"))

# Membership
print("\nMembership Check:")
print("Mango" in fruits)

# Concatenation
a = (1, 2)
b = (3, 4)

print("\nConcatenation:")
print(a + b)

# Repetition
print("\nRepetition:")
print(a * 3)

# Nested Tuple
students = (
    ("John", 85),
    ("Sam", 90)
)

print("\nNested Tuple:")
print(students)

# Unpacking
person = ("John", 25, "Chennai")

name, age, city = person

print("\nUnpacking:")
print(name)
print(age)
print(city)

# Tuple to List
numbers = (10, 20, 30)

x = list(numbers)

print("\nTuple to List:")
print(x)

# List to Tuple
data = [100, 200, 300]

y = tuple(data)

print("\nList to Tuple:")
print(y)