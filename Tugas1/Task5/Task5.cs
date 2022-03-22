using System;

class ConverterAngka
{
    public static void Main(){
        string[] ListAngka = {"zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"};
        int n;
        string str;

        Console.Write("Enter the Number = ");
        n = Convert.ToUInt16(Console.ReadLine());
        str = Convert.ToString(n);


        for (int i = 0; i < str.Length; i++)
        {   
            Console.Write($"{ListAngka[Int16.Parse(str[i].ToString())]} ");
            
        }
        

    }
}