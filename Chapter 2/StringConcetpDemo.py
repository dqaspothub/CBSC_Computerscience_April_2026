# ============================================
# PYTHON STRING CONCEPTS - SINGLE PROGRAM
# ============================================

# 1. Creating Strings
single_quote = 'Python'
double_quote = "Programming"
full_name = single_quote+double_quote
multi_line = """Welcome
to
Python"""
CSMark="90"

print("Single Quote String :", single_quote)
print("Double Quote String :", double_quote)
print("Multi Line String :")
print(multi_line)
print(double_quote[10])
print(full_name)
print(3*"Pranv")
s1 = "ABC"
s2 = "AbC"
print("The boolean result" , s1!=s2)
print(chr(98))
print(ord('A'))


print("\n===================================")

# 2. String Length
text = "Python"

print("Length :", len(text))

print("\n===================================")

# 3. Indexing
print("First Character :", text[0])
print("Second Character :", text[1])
print("Last Character :", text[-1])

print("\n===================================")

# 4. Slicing
print("0 to 3 :", text[0:3])
print("2 to 5 :", text[2:5])
print("Full String :", text[:])

print("\n===================================")

# 5. Step Slicing
print("Step 2 :", text[0:6:2])

print("\n===================================")

# 6. Reverse String
print("Reverse :", text[::-1])

print("\n===================================")

# 7. String Concatenation
first = "Hello"
second = "World"

result = first + " " + second

print("Concatenation :", result)

print("\n===================================")

# 8. String Repetition
print("Repeat :", "Hi " * 3)

print("\n===================================")

# 9. Membership Operators
print("Py" in text)
print("Java" not in text)

print("\n===================================")

# 10. Traversing String
print("Traversing Characters")

for ch in text:
    print(ch)

print("\n===================================")

# 11. String Methods

sample = "python programming"

print("Upper :", sample.upper())
print("Lower :", sample.lower())
print("Title :", sample.title())
print("Capitalize :", sample.capitalize())

print("\n===================================")

# 12. strip()

space_text = "   Python   "

print("Before Strip :", space_text)
print("After Strip :", space_text.strip())

print("\n===================================")

# 13. replace()

lang = "I like Java"

print(lang.replace("Java", "Python"))

print("\n===================================")

# 14. split()

fruits = "apple,banana,orange"

fruit_list = fruits.split(",")

print("Split :", fruit_list)

print("\n===================================")

# 15. join()

languages = ['Python', 'Java', 'C++']

joined = "-".join(languages)

print("Join :", joined)

print("\n===================================")

# 16. find()

word = "Programming"

print("Index of g :", word.find("g"))

print("\n===================================")

# 17. count()

print("Count of m :", word.count("m"))

print("\n===================================")

# 18. String Comparison

print("abc" == "abc")
print("abc" == "ABC")

print("\n===================================")

# 19. Escape Characters

print("Hello\nPython")
print("Hello\tPython")

print("\n===================================")

# 20. Raw String

path = r"C:\newfolder\test"

print(path)

print("\n===================================")

# 21. String Formatting

name = "John"
age = 25

print("My name is {} and age is {}".format(name, age))

print(f"My name is {name} and age is {age}")

print("\n===================================")

# 22. Checking Functions

print("Python".isalpha())
print("123".isdigit())
print("Python123".isalnum())
print("python".islower())
print("PYTHON".isupper())

print("\n===================================")

# 23. startswith() and endswith()

filename = "report.pdf"

print(filename.startswith("report"))
print(filename.endswith(".pdf"))

print("\n===================================")

# 24. String Immutability Example

name1 = "Python"

# name1[0] = 'J'   # ERROR

new_name = "J" + name1[1:]

print("Modified String :", new_name)

print("\n===================================")

# 25. Reverse String Program

text1 = "Python"

reverse = text1[::-1]

print("Reverse :", reverse)

print("\n===================================")

# 26. Palindrome Program

pal = "madam"

if pal == pal[::-1]:
    print("Palindrome")
else:
    print("Not Palindrome")

print("\n===================================")

# 27. Count Vowels

sentence = "python programming"

count = 0

for ch in sentence:
    if ch in "aeiouAEIOU":
        count += 1

print("Vowel Count :", count)

print("\n===================================")

# 28. Count Spaces

line = "Welcome to Python Programming"

space_count = line.count(" ")

print("Space Count :", space_count)

print("\n===================================")

# 29. Replace Spaces with Underscore

print(line.replace(" ", "_"))

print("\n===================================")

# 30. Count Words

words = line.split()

print("Word Count :", len(words))

print("\n===================================")

# 31. Remove Vowels

text2 = "Python Programming"

result = ""

for ch in text2:
    if ch not in "aeiouAEIOU":
        result += ch

print("Without Vowels :", result)

print("\n===================================")

# 32. Email Validation

email = "test@gmail.com"

if "@" in email and ".com" in email:
    print("Valid Email")
else:
    print("Invalid Email")

print("\n===================================")

# END OF PROGRAM