using System;

namespace Tugas1_Batch
{
    class Profile{
        private string nama = "Deah Nisa Azizah", jen_kel = "perempuan", alamat="Manukan Mukti 10B/6, Surabaya", hobi = "music, game", pekerjaan = "Magang", jurusan = "Teknik Elektronika", nama_kampus = "Politeknik Elektronika Negeri Surabaya";

        public void getProfile(){
            Console.WriteLine("-------Tentang Saya-------");
            Console.WriteLine();
            Console.WriteLine($"Nama : {this.nama}");
            Console.WriteLine($"Jenis Kelamin : {this.jen_kel}");
            Console.WriteLine($"Alamat : {this.alamat}");
            Console.WriteLine($"Hobi : {this.hobi}");
            Console.WriteLine($"Pekerjaan : {this.pekerjaan}");
            Console.WriteLine($"Jurusan : {this.jurusan}");
            Console.WriteLine($"Asal Kampus : {this.nama_kampus}");
        }
    }
}