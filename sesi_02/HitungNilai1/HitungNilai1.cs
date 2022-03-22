using System;
class HitungRata
{
    public static void Main(String[] args){
        
        int n, jumlah = 0;
        n = 3;
        int[] nilai = new int[n];

        for (int i = 0; i < n; i++)
        {
            Console.WriteLine($"Masukan Nilai ke-{i+1}: ");
            nilai[i] = Convert.ToInt16(Console.ReadLine());
            jumlah += nilai[i];
        }

        Console.WriteLine($"Total Nilai : {jumlah}");
        Console.WriteLine($"Rata-rata Nilai : {((double)(jumlah))/n}");

        // Console.WriteLine("Masukan Nilai Pertama: ");
        // a = Convert.ToInt16(Console.ReadLine());
        // Console.WriteLine("Masukan Nilai Kedua: ");
        // b = Convert.ToInt16(Console.ReadLine());
        // Console.WriteLine("Masukan Nilai Ketiga: ");
        // c = Convert.ToInt16(Console.ReadLine());

        // Console.WriteLine($"Total Nilai : {a+b+c}");
        // Console.WriteLine($"Rata-rata Nilai : {(a+b+c)/3}");
    }
}