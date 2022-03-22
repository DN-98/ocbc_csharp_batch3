using System;

class Faktorial
{
    public static void Main(){
        int n, result = 1;

        Console.Write("Masukan nilai n = ");
        n = Convert.ToUInt16(Console.ReadLine());
        

        for (int i = 1; i <= n; i++)
        {
            result *= i;
        }

        Console.WriteLine($"Hasil {n}! = {result}");
    }
}