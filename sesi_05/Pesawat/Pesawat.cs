using System;
namespace Pesawat
{   
    class class_pesawat
    {
        public string nama;
        private string ketinggian;
        public string Ketinggian
        {
            get {return ketinggian;}
            set {ketinggian = value;}
        }
        

        public void terbang(){
            Console.WriteLine($"Pesawat dengan nama {this.nama}, sedang take off");
        }

        public void sudahTerbang(){
            Console.WriteLine($"Pesawat sekarang berada pada ketinggian {this.ketinggian}");
        }
    }
}