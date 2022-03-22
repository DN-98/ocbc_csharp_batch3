using System;

class Logika4
{
    public static void Main(){
        double nilai;
        Console.Write("Nilai : ");
        nilai = Convert.ToDouble(Console.ReadLine());

            if(nilai >= 85){
                Console.WriteLine("Kamu Dapat Grade A");
            } else if(nilai >= 65){
                Console.WriteLine("Kamu Dapat Grade B");
            } else if(nilai >= 45){
                Console.WriteLine("Kamu Dapat Grade C");
            } else if(nilai >= 25){
                Console.WriteLine("Kamu Dapat Grade D");
            } else {
                Console.WriteLine("Kamu Dapat Grade E");
            }
    }
}