using System;

class Logika8
{
    public static void Main(){
        int i = 0;
        do
        {
            Console.WriteLine("i = {0}", i);
            ++i;
            if (i>5)
            {   
                if(i%2 != 0){}
                    Console.WriteLine("i = {0}", i);
                break;
            }
        } while (i < 10);
        
    }
}