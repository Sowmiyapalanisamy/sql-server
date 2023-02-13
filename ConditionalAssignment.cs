using System;
using System.Collections.Generic;

namespace ControlStatements
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i;// ODD OR EVEN
            Console.Write("Enter a Number : ");
            i = int.Parse(Console.ReadLine());
            if (i % 2 == 0)
            {
                Console.Write("It is an even Number");
                Console.Read();
            }
            else
            {
                Console.WriteLine("It is an odd number");
            }


            {
                int num; // DIVISIBLE BY 7 AND 5
                Console.WriteLine("Enter a number: ");
                num = int.Parse(Console.ReadLine());
                if (num % 7 == 0 && num % 3 == 0)
                {
                    Console.Write(num + " is divisible by 7 and 3");
                    Console.Read();
                }
                else
                {
                    Console.WriteLine(num + " is not divisible by 7 and 3");

                }


                {
                    int num1, num2, num3; //MAXIMUM NUMBERS
                    Console.Write("Enter the first number:");
                    num1 = int.Parse(Console.ReadLine());
                    Console.Write("Enter the second number :");
                    num2 = int.Parse(Console.ReadLine());
                    Console.Write("Enter the third number :");
                    num3 = int.Parse(Console.ReadLine());



                    if (num1 > num2)
                    {
                        if (num1 > num3)
                        {
                            Console.Write(num1 + "is the maximum number");
                        }
                        else
                        {
                            Console.Write(num3 + "is the maximum number");
                        }
                    }
                    else if (num2 > num3)
                        Console.Write(num2 + "is the maximum number");
                    else
                        Console.Write(num3 + "is the maximum number");
                }


                {
                    int year; // LEAP YEAR OR NOT
                    Console.Write("Enter the year");
                    year = int.Parse(Console.ReadLine());

                    if (((year % 4 == 0) && (year % 100 != 0 || (year % 400 == 0))))
                    {
                        Console.WriteLine(year + " is a leap year");
                    }
                    else
                    {
                        Console.WriteLine(year + "is not a leap year");
                    }

                }



                {
                    int num, rem, sum = 0, temp;  // PALINDROME OR NOT


                    Console.Write("Enter a number: ");
                    num = int.Parse(Console.ReadLine());
                    temp = num;
                    while (num > 0)
                    {
                        rem = num % 10;
                        num = num / 10;
                        sum = sum * 10 + rem;

                    }

                    if (temp == sum)
                    {
                        Console.WriteLine("Yes");
                    }
                    else
                    {
                        Console.WriteLine("No");
                    }
                    Console.ReadLine();
                }


                {
            int marks = new int[6]; // GRADE CALCULATION
                    if (marks[i] == 100)
                     {
                        Console.WriteLine("The student obtained S Grade");
            }


                    else if (marks[i]>90)
                    {
                        Console.WriteLine("The student obtained A Grade");
                    }
                    else if (marks[i]>80)
                    {
                        Console.WriteLine("The student obtained B Grade");
                    }
                    else if (marks[i]>70)
                    {
                        Console.WriteLine("The student obtained C Grade");

                    }
                    else if (marks[i]>60)
                    {
                        Console.WriteLine("The student obtained  D Grade");
                    }
                    else if (marks[i]>50)
                    {
                        Console.WriteLine("The student obtained E Grade");
                    }
                    else
                    {
                        Console.WriteLine("The student got FAIL");
                    }

                }
                
       