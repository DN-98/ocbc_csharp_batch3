using System;

namespace Override
{
    class Override:Program{
        public override void penjumlahan_perkalian()
        {
            // base.penjumlahan_perkalian();
            Console.WriteLine("Overriding 1 .... =====>>>>>");
            Console.WriteLine($"Hasil Pembagian angka {bilangan1}, {bilangan2}, {bilangan1 / bilangan2}");
            Console.WriteLine($"Hasil Pengurangan angka {bilangan1}, {bilangan2}, {bilangan1 - bilangan2}");
        }

        static void Main(){
            Program overriding = new Program();
            overriding.bilangan(10,5);
            overriding.penjumlahan_perkalian();
            overriding = new Override();
            overriding.bilangan(20,5);
            overriding.penjumlahan_perkalian();
            overriding = new Program();
            overriding.bilangan(20,5);
            overriding.penjumlahan_perkalian();
            Console.Read();
        }
    }
}