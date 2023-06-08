using System;

class Calculator
{
    public double Addition(double num1, double num2)
    {
        return num1 + num2;
    }

    public double Subtraction(double num1, double num2)
    {
        return num1 - num2;
    }

    public double Division(double num1, double num2)
    {
        if (num2 == 0)
        {
            Console.WriteLine("Cannot divide by zero");
            return 0;
        }
        return num1 / num2;
    }

    public int ModularDivision(int num1, int num2)
    {
        return num1 % num2;
    }

    public double Multiplication(double num1, double num2)
    {
        return num1 * num2;
    }

    public bool IsPrime(int num)
    {
        if (num <= 1)
        {
            return false;
        }

        for (int i = 2; i <= Math.Sqrt(num); i++)
        {
            if (num % i == 0)
            {
                return false;
            }
        }

        return true;
    }

    public int Factorial(int num)
    {
        if (num == 0)
        {
            return 1;
        }

        return num * Factorial(num - 1);
    }

    public double SquareRoot(double num)
    {
        return Math.Sqrt(num);
    }
}

class Program
{
    static void Main(string[] args)
    {
        Calculator calculator = new Calculator();
        Console.Write("Enter first number:");
		int num1 = Convert.ToInt32(Console.ReadLine());
		Console.Write("Enter second number:");
		int num2 = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Addition: " + calculator.Addition(num1, num2));
        Console.WriteLine("Subtraction: " + calculator.Subtraction(num1, num2));
        Console.WriteLine("Division: " + calculator.Division(num1, num2));
        Console.WriteLine("Modular Division: " + calculator.ModularDivision(num1, num2));
        Console.WriteLine("Multiplication: " + calculator.Multiplication(num1, num2));
        Console.WriteLine("Is Prime: " + calculator.IsPrime(num1));
        Console.WriteLine("Factorial: " + calculator.Factorial(num1));
        Console.WriteLine("Square Root: " + calculator.SquareRoot(num1));

        Console.ReadLine();
    }
}
