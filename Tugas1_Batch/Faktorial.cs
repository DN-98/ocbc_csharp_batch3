using System;

namespace Tugas1_Batch
{
    class Faktorial
{   
    public int n;
    public void getFaktorial(){
        int n = this.n, result = 1;

        for (int i = 1; i <= n; i++)
        {
            result *= i;
        }

        Console.WriteLine($"Hasil {n}! = {result}");
    }
}
}