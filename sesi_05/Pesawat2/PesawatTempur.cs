using System;

namespace Pesawat2
{

    class Pesawat_Tempur:Pesawat{

        public Pesawat_Tempur(){
            Console.WriteLine("------- Tipe : Pesawat Tempur ------- ");
        }

        public void terbang(string t_name) {
            Console.WriteLine($"Pesawat Tempur dengan nama {this.nama}, mempunyai jumlah roda {this.jumlah_roda} dengan penumpang sebanyak {this.jumlah_penumpang} sedang berada pada ketinggian {this.Ketinggian} akan \"Meledakkan Senjata\" pada target pesawat: {t_name}");
        }
    }
}