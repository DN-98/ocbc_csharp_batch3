using System;

namespace Tugas1_Batch
{
    class Program
    {
        public static void Main()
        {   
            SegitigaAbjad segitiga_abjad = new SegitigaAbjad();
            SegitigaAngka segitiga_angka = new SegitigaAngka();
            Faktorial faktorial = new Faktorial();
            ConverterAngka converter_angka = new ConverterAngka();
            ReversedNumber reversed_number = new ReversedNumber();
            ReversedString reversed_string = new ReversedString();
            Profile profile = new Profile();

            int pilih;

            string[] list_menu = {"", "Segitiga Abjad", "Segitiga Angka", "Faktorial", "Revesed Number", "Revesed String", "NumberToString Converter", "Tentang Saya", "Exit"};
            string[] list_q = {"Lanjut", "Menu Utama", "Exit"};

            Console.WriteLine("SELAMAT DATANG DI APLIKASI BATCH-TUGAS 1");
            Console.WriteLine("----------------------------------------");
            
       
            do{
                Console.WriteLine("Berikut Fitur yang dapat anda pilih");
                for(int i = 1; i<list_menu.Length; ++i)
                    Console.WriteLine($"{i}. {list_menu[i]}");
                Console.WriteLine("----------------------------------------");
                Console.WriteLine();
                Console.Write("Masukan Nomor Fitur [Pastikan hanya angka diantara 1-8] = ");
                pilih = Convert.ToUInt16(Console.ReadLine());
                    switch (pilih)
                {
                    case 1:
                        Console.WriteLine(list_menu[pilih]);
                        Console.Write("Mausukan nilai n = ");
                        segitiga_abjad.n = Convert.ToUInt16(Console.ReadLine());
                        Console.WriteLine("------HASIL------");
                        Console.WriteLine();
                        segitiga_abjad.buatSegitigaAbjad();
                        Console.WriteLine();
                        break;
                    case 2:
                        Console.WriteLine(list_menu[pilih]);
                        Console.Write("Enter the Range = ");
                        segitiga_angka.n = Convert.ToUInt16(Console.ReadLine());
                        Console.WriteLine("------HASIL------");
                        Console.WriteLine();
                        segitiga_angka.buatSegitigaAngka();
                        Console.WriteLine();
                        break;
                    case 3:
                        Console.WriteLine(list_menu[pilih]);
                        Console.Write("Masukan nilai n = ");
                        faktorial.n = Convert.ToUInt16(Console.ReadLine());
                        Console.WriteLine("------HASIL------");
                        Console.WriteLine();
                        faktorial.getFaktorial();
                        Console.WriteLine();
                        break;
                    case 4:
                        Console.WriteLine(list_menu[pilih]);
                        Console.Write("Enter the Number = ");
                        reversed_number.n = Convert.ToUInt16(Console.ReadLine());
                        Console.WriteLine("------HASIL------");
                        Console.WriteLine();
                        reversed_number.reversedNumber();
                        Console.WriteLine();
                        break;
                    case 5:
                        Console.WriteLine(list_menu[pilih]);
                        Console.Write("Enter the String = ");
                        reversed_string.str = Console.ReadLine();
                        Console.WriteLine("------HASIL------");
                        reversed_string.reversedString();
                        Console.WriteLine();
                        break;
                    case 6:
                        Console.WriteLine(list_menu[pilih]);
                        Console.Write("Enter the Number = ");
                        converter_angka.n = Convert.ToUInt16(Console.ReadLine());
                        Console.WriteLine("------HASIL------");
                        Console.WriteLine();
                        converter_angka.convertAngka();
                        Console.WriteLine();
                        break;
                    case 7:
                        Console.WriteLine(list_menu[pilih]);
                        Console.WriteLine();
                        profile.getProfile();
                        Console.WriteLine();
                        break;
                    case 8:
                        Console.WriteLine();
                        Console.WriteLine($"-------{list_menu[pilih]}-------");
                        Console.WriteLine();
                        break;
                    default:
                        Console.WriteLine();
                        Console.WriteLine("Fitur Tidak Ada. Silahkan Coba Lagi");
                        Console.WriteLine();
                        break;
                }

            }while(pilih != 8);
        }
    }
}
