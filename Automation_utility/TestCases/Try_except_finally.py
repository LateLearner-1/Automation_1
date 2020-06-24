

a = input("Enter first value: ")
b = input("Enter first value: ")

try:
    print("addition of numbers is: ", int(a)+int(b))

except ValueError:
    print('values as not numbers')

finally:
    print('this is successful implementation pf try except and finally block')