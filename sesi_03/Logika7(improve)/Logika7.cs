using System;

class Logika7
{
    public static void Main(){
        for (int i = 10; i < 20; i++)
        {
            
            if(i == 19)
            for(int j = i; j > 14; --j){
                Console.WriteLine($"Lanjutan iterasi ke - {j}");
            } else
                Console.WriteLine($"iterasi ke - {i}");

        }
        
    }
}