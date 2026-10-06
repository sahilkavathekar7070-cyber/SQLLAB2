from src.addition import addition
from src.substraction import substraction
from src.multiplication import multiplication
from src.division import division

num1 = float(input("Enter a first number :"))
num2 = float(input("Enter a second number :"))

choice = input("Enter a choice :")


def main():

    if choice == 'addtion':
        ans = addition(num1,num2) # function Calling
        print(f'The addition of two numbers is {ans}')

    elif choice == 'substraction':
        ans = substraction(num1,num2)  # function Calling
        print(f'The substraction of two numbers is {ans}')

    elif choice == 'multiplication':
        ans = multiplication(num1,num2)  # function Calling
        print(f'The multiplication of two numbers is {ans}')

    elif choice == 'division':
        ans = division(num1,num2)  # function Calling
        print(f'The division of two numbers is {ans}')

    else :
        print("Enter Valid Choice !")

main()