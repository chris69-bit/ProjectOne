public class Calculator {
    public static void main(String[] args) {
        if (args.length < 3) {
            System.out.println("Usage: java Calculator <num1> <operator> <num2>");
            return;
        }

        double num1 = Double.parseDouble(args[0]);
        double num2 = Double.parseDouble(args[2]);
        String operator = args[1];
        double result = 0;

        switch (operator) {
            case "+":
                result = num1 + num2;
                break;
            case "-":
                result = num1 - num2;
                break;
            case "*":
                result = num1 * num2;
                break;
            case "/":
                result = num1 / num2;
                break;
            default:
                System.out.println("Unknown operator: " + operator);
                return;
        }

        System.out.println("Result: " + result);
    }
}

