using System;

class data4
{
    public static void Main(){
        int i, j;
        int[,] data4 = {
            {1,1},
            {2,4},
            {3,9},
            {4,16}
        };
        
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
            {
                Console.Write($"{data4[i,j]}    ");
            }
            Console.WriteLine();
        }
        
    }
}