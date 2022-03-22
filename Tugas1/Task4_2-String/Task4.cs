using System;

class ReversedNumber
{
    public static void Main(){
        string str;

        Console.Write("Enter the String = ");
        str = Console.ReadLine();
        char[] chararr = str.ToCharArray();
        Array.Reverse(chararr);
        str = new string(chararr);


        Console.WriteLine($"Revesed String = {str}");

    }
}