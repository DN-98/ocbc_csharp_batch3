using System;

namespace Pesawat2
{
    class Pesawat{
        public Pesawat(){
            Console.WriteLine("------- Object Pesawat Telah Dibuat ------- ");
        }
        public string nama, jumlah_penumpang;
        public uint jumlah_roda;
        private string ketinggian;
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
            Console.WriteLine($"Pesawat ini sedang berada pada ketinggian {this.Ketinggian}");
        }
    }
}