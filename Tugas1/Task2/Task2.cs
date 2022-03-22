using System;

class Task1
{
    public static void Main(){
        int n;

        Console.Write("Enter the Range = ");
        n = Convert.ToUInt16(Console.ReadLine());

        for (int i = 1; i <= n; i++)
        {   
            int p = 0;
            for (int j = 1; j < n + i; j++)
            {   
                if(j > n-i){
                    if(j > n)
                        Console.Write(--p);
                    else
                        Console.Write(++p);
                } else {
                    Console.Write(" ");
                }
            }
            Console.WriteLine();
        }
    }
}