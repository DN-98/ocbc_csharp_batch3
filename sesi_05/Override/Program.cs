using System;

namespace Override
{
    class Program
    {
        public int bilangan1, bilangan2;

        public void bilangan(int angka1, int angka2){
            bilangan1 = angka1;
            bilangan2 = angka2;
        }

        public virtual void penjumlahan_perkalian(){
            Console.WriteLine("Overriding 1 .... =====>>>>>");
            Console.WriteLine($"Hasil Penjumlahan angka {bilangan1}, {bilangan2}, {bilangan1 + bilangan2}");
            Console.WriteLine($"Hasil Perkalian angka {bilangan1}, {bilangan2}, {bilangan1 * bilangan2}");
        }
    }
}
