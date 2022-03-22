using System;

class HitingNilai3
{
    public static void Main(){
        int nilai1, nilai2;
        
        Console.WriteLine("nilai 1 = ");
        nilai1 = Convert.ToInt16(Console.ReadLine());
        Console.WriteLine("nilai 2 = ");
        nilai2 = Convert.ToInt16(Console.ReadLine());

        Console.WriteLine("Hasil Perbandingan: ");
        
        Console.WriteLine($"nilai1 > nilai2 : {(nilai1>nilai2)}");
        Console.WriteLine($"nilai1 >= nilai2 : {(nilai1>=nilai2)}");
        Console.WriteLine($"nilai1 < nilai2 : {(nilai1<nilai2)}");
        Console.WriteLine($"nilai1 <= nilai2 : {(nilai1<=nilai2)}");
        Console.WriteLine($"nilai1 == nilai2 : {(nilai1==nilai2)}");
        Console.WriteLine($"nilai1 != nilai2 : {(nilai1!=nilai2)}");

    }
}