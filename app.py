import streamlit as st

st.title("Simple Calculator Web Application")

num1 = st.number_input("Enter First Number")
num2 = st.number_input("Enter second Number")

choice=st.selectbox("Select Operation",options=['Addition','Substraction','Multiplication','Division',])

if choice == 'Addition':
    result = num1 + num2
    st.success(f'The addition {num1} and {num2} is {result} ')

elif choice == 'Substraction':
    result = num1 - num2
    st.success(f'The substraction of {num1} and {num2} is {result}')

elif choice == 'Multiplication':
    result = num1 * num2
    st.success(f'The multiplication of {num1} and {num2} is {result}')

elif choice == 'Division':
    if num2 != 0:
        result = num1 / num2
        st.success(f'The division of {num1} and {num2} is {result}')
    else :
        st.success(('ERROR'))
       
    