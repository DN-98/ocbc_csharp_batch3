using System;

namespace Tugas1_Batch
{
    class SegitigaAngka
{   
    public int n;
    public void buatSegitigaAngka(){
        int n = this.n;
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
}