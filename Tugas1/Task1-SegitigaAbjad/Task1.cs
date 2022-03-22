using System;

class Task1
{
    public static void Main(){
        int n;
        string abjad = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

        Console.Write("n = ");
        n = Convert.ToUInt16(Console.ReadLine());

        for (int i = 1; i <= n; i++)
        {   
            int p = 0;
            for (int j = 0; j < n + i; j++)
            {   
                if(j > n-i){
                    if(p < abjad.Length){
                        if(j >= n)
                        Console.Write(abjad[p--]);
                    else
                        Console.Write(abjad[p++]);
                    } else{
                        if(j >= n)
                        Console.Write(abjad[abjad.Length%p--]);
                    else
                        Console.Write(abjad[abjad.Length%p++]);
                    }

                    
                } else {
                    Console.Write(" ");
                }
            }
            Console.WriteLine();
        }
    }
}