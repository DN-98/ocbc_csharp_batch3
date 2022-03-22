using System;

namespace Pesawat
{
    class Program
    {
        public static void Main()
        {
            class_pesawat pesawat = new class_pesawat();
            pesawat.nama = "GARUDAKU";
            pesawat.Ketinggian = "2500 kaki";

            pesawat.terbang();
            pesawat.sudahTerbang();
            Console.ReadLine();
            
        }
    }
}
