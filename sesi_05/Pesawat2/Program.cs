using System;

namespace Pesawat2
{
    class Program
    {
        static void Main()
        {
            Pesawat pesawat = new Pesawat();

            pesawat.nama = "Helly";
            pesawat.jumlah_penumpang = "3 penumpang";
            pesawat.jumlah_roda = 3;
            pesawat.Ketinggian = "3000 kaki";
            
            pesawat.getInfo();
            pesawat.terbang();
            pesawat.sudahTerbang();

            Pesawat_Tempur pesawat_tempur = new Pesawat_Tempur();
            pesawat_tempur.nama = "P-51D Mustang";
            pesawat_tempur.jumlah_penumpang = "1 penumpang";
            pesawat_tempur.jumlah_roda = 2;
            pesawat_tempur.Ketinggian = "3000 kaki";
            
            pesawat_tempur.getInfo();
            pesawat_tempur.terbang(pesawat.nama);
        }
    }
}
