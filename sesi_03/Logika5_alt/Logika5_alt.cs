using System;

class Logika5
{
    public static void Main(){
        string[] bulan = {"undefined!", "Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "November", "Desember"};
        uint nilai;
        Console.Write("Nilai : ");
        nilai = Convert.ToUInt16(Console.ReadLine());

        if(nilai < bulan.Length)
            Console.WriteLine($"{bulan[nilai]}");
        else
            Console.WriteLine("Not Found!");

        
    }
}