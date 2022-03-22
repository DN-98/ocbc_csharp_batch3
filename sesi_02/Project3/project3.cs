using System;

class Project3
{
    public static void Main(String[] args){
        string nama;
        int umur;

        Console.WriteLine("==== PROGRAM PENDAFTARAN PENDUDUK ====");
        Console.WriteLine("Masukan Nama: ");
        nama = Console.ReadLine();
        Console.WriteLine("Masukan Alamat: ");
        var alamat = Console.ReadLine();
        Console.WriteLine("Masukan Umur: ");
        umur = Convert.ToInt16(Console.ReadLine());
        // umur = int.Parse(Console.ReadLine());

        Console.WriteLine();
        Console.WriteLine("Terimakasih!");
        Console.WriteLine("Data Berikut: ");
        Console.WriteLine($"Nama: {nama}");
        Console.WriteLine($"Nama: {nama}");
        Console.WriteLine($"Alamat: {alamat}");
        Console.WriteLine($"Umur: {umur} Tahun");
        Console.WriteLine("SUDAH DISIMPAN!");
    }
}