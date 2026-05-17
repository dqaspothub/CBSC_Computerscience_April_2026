# =========================================
# PYTHON LIST METHODS - SINGLE PROGRAM
# =========================================

# Creating a List
fruits = ["Apple", "Mango", "Orange", "Apple"]

print("Original List:")
print(fruits)

# -----------------------------------------
# append() -> Add item at end
# -----------------------------------------
fruits.append("Banana")

print("\nAfter append():")
print(fruits)

# -----------------------------------------
# insert() -> Add item at specific position
# -----------------------------------------
fruits.insert(1, "Pineapple")

print("\nAfter insert():")
print(fruits)

# -----------------------------------------
# extend() -> Add multiple items
# -----------------------------------------
fruits.extend(["Grapes", "Kiwi"])

print("\nAfter extend():")
print(fruits)

# -----------------------------------------
# remove() -> Remove specific item
# -----------------------------------------
fruits.remove("Mango")

print("\nAfter remove():")
print(fruits)

# -----------------------------------------
# pop() -> Remove using index
# -----------------------------------------
removed_item = fruits.pop(2)

print("\nAfter pop():")
print("Removed Item:", removed_item)
print(fruits)

# -----------------------------------------
# index() -> Find index position
# -----------------------------------------
position = fruits.index("Banana")

print("\nUsing index():")
print("Banana found at index:", position)

# -----------------------------------------
# count() -> Count occurrences
# -----------------------------------------
apple_count = fruits.count("Apple")

print("\nUsing count():")
print("Apple Count:", apple_count)

# -----------------------------------------
# sort() -> Sort the list
# -----------------------------------------
fruits.sort()

print("\nAfter sort():")
print(fruits)

# -----------------------------------------
# reverse() -> Reverse the list
# -----------------------------------------
fruits.reverse()

print("\nAfter reverse():")
print(fruits)

# -----------------------------------------
# copy() -> Copy list
# -----------------------------------------
new_fruits = fruits.copy()

print("\nAfter copy():")
print("Copied List:", new_fruits)

# -----------------------------------------
# len() -> Find length
# -----------------------------------------
print("\nUsing len():")
print("Length of List:", len(fruits))

# -----------------------------------------
# Checking item using 'in'
# -----------------------------------------
print("\nChecking item existence:")

if "Apple" in fruits:
    print("Apple is present")
else:
    print("Apple is not present")

# -----------------------------------------
# Accessing elements
# -----------------------------------------
print("\nAccessing Elements:")
print("First Element:", fruits[0])
print("Last Element:", fruits[-1])

# -----------------------------------------
# Slicing
# -----------------------------------------
print("\nList Slicing:")
print(fruits[1:4])

# -----------------------------------------
# Looping through list
# -----------------------------------------
print("\nLooping through List:")

for fruit in fruits:
    print(fruit)

# -----------------------------------------
# clear() -> Remove all items
# -----------------------------------------
temp = [1, 2, 3]

print("\nBefore clear():")
print(temp)

temp.clear()

print("After clear():")
print(temp)

# -----------------------------------------
# del -> Delete element
# -----------------------------------------
numbers = [10, 20, 30, 40]

print("\nBefore del:")
print(numbers)

del numbers[1]

print("After del:")
print(numbers)

# -----------------------------------------
# Nested List
# -----------------------------------------
students = [
    ["John", 85],
    ["Sam", 90]
]

print("\nNested List:")
print(students)

print("First Student:", students[0])
print("First Student Name:", students[0][0])

# -----------------------------------------
# Mixed Data Types
# -----------------------------------------
mixed = ["Python", 100, 99.5, True]

print("\nMixed Data Type List:")
print(mixed)

# =========================================
# END OF PROGRAM
# =========================================