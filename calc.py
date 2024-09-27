# calculator.py

import sys

def multiply(x, y):
    return x * y

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python calculator.py <number1> <number2>")
        sys.exit(1)

    try:
        num1 = float(sys.argv[1])
        num2 = float(sys.argv[2])
    except ValueError:
        print("Both inputs must be numbers.")
        sys.exit(1)

    result = multiply(num1, num2)
    print(f"The result of multiplying {num1} by {num2} is {result}")

