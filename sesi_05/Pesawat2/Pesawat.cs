using System;

namespace Pesawat2
{
    class Pesawat{
        public Pesawat(){
            Console.WriteLine("------- Object Pesawat Telah Dibuat ------- ");
        }
        public string nama, jumlah_penumpang;
        public uint jumlah_roda;
        public string ketinggian;
        public string Ketinggian{
            get { return ketinggian; }
            set { ketinggian = value; }
        }

        public void getInfo(){
            Console.WriteLine($"Nama : {this.nama}");
            Console.WriteLine($"jumlah_penumpang : {this.jumlah_penumpang}");
            Console.WriteLine($"jumlah_roda : {this.jumlah_roda}");
        }

        public void terbang(){
            Console.WriteLine($"Pesawat {this.nama} melakukan take off");
        }

        public void sudahTerbang(){
            Console.WriteLine($"Pesawat ini sedang berada pada ketinggian {this.ketinggian}");
        }
    }

    class Pesawat_Tempur:Pesawat{
        public Pesawat_Tempur(){
            Console.WriteLine("------- Tipe : Pesawat Tempur ------- ");
        }

        public void terbang(string t_name) {
            Console.WriteLine($"Pesawat Tempur dengan nama {this.nama}, mempunyai jumlah roda {this.jumlah_roda} dengan penumpang sebanyak {this.jumlah_penumpang} sedang berada pada ketinggian {this.ketinggian} akan \"Meledakkan Senjata\" pada target pesawat: {t_name}");
        }
    }
}