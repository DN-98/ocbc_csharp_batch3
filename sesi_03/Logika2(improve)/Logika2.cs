using System;

class Logika2
{
    public static void Main(){
        int nilai;
        Console.WriteLine("Masukan nilai: ");
        nilai = Convert.ToInt16(Console.ReadLine());

            if(nilai <20){
                Console.WriteLine("Nilai kamu E");
            } else if(nilai <40){
                Console.WriteLine("Nilai kamu D");
            } else if(nilai <60){
                Console.WriteLine("Nilai kamu C");
            } else if(nilai <80){
                Console.WriteLine("Nilai kamu B");
            } else {
                Console.WriteLine("Nilai kamu A");
            }
    }
}