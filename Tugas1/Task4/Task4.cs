using System;

class ReversedNumber
{
    public static void Main(){
        int n;
        string str;

        Console.Write("Enter the Number = ");
        n = Convert.ToUInt16(Console.ReadLine());
        str = Convert.ToString(n);
        char[] chararr = str.ToCharArray();
        Array.Reverse(chararr);
        str = new string(chararr);


        Console.WriteLine($"Revesed number = {str}");

    }
}