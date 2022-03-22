using System;

class biodata
{
    public static void Main(){
        
        Console.WriteLine("Section Biodata");
        string username, password, status_nikah, jenkel;
        uint umur;
        
        Console.Write("Masukan username :");
        username = Console.ReadLine();
        Console.Write("Masukan password :");
        password = GetHiddenConsoleInput();
        Console.Write("Masukan age :");
        umur = Convert.ToUInt16(Console.ReadLine());
        // Console.Write("Masukan Jenis kelamin :");
        // jenkel = Console.ReadLine();
        // Console.Write("Status Nikah :");
        // status_nikah = Console.ReadLine();
        do{
            Console.Write("Masukan Jenis Kelamin : (pastikan memasukan \"perempuan\" ataupun \"laki-laki\")");    
            jenkel = Console.ReadLine();
        } while(!(jenkel != "perempuan" || jenkel != "laki-laki"));

        do{
            Console.Write("Masukan Status Nikah : (Pastikan memasukan \"nikah\" ataupun \"belum nikah\")");    
            status_nikah = Console.ReadLine();
        } while(!(status_nikah != "belum nikah" || status_nikah != "nikah"));
        

        Console.WriteLine("Section Aritmatika");

        int n;

        Console.WriteLine($"Masukan Jumlah Angka: ");
        n = Convert.ToUInt16(Console.ReadLine());
        double[] nilai = new double[n];
        double jumlah_nilai = 0;

        for (int i = 0; i < n; i++)
        {
            Console.WriteLine($"Masukan Nilai ke-{i+1}: ");
            nilai[i] = Convert.ToInt16(Console.ReadLine());
            jumlah_nilai += nilai[i];
        }

        Console.WriteLine("-----------Hasil Output-----------");
        Console.WriteLine("BIODATA:");
        Console.WriteLine($"- umur : {umur}");
        Console.WriteLine($"- username : {username}");
        Console.WriteLine($"- jenis kelamin : {jenkel}");
        if(status_nikah == "nikah"){
            Console.WriteLine($"- status nikah : {true}");
        } else
            Console.WriteLine($"- status nikah: {false}");

        Console.WriteLine("Aritmatika:");
        
        double rata_rata_nilai = jumlah_nilai/n;
        Console.WriteLine($"Total nilai = {jumlah_nilai}");
        Console.WriteLine($"Rata-rata = {rata_rata_nilai}");

    }

    private static string GetHiddenConsoleInput(){

        string result = "";

        while(true){
            int x = Console.CursorLeft;
            int y = Console.CursorTop;
            ConsoleKeyInfo key = Console.ReadKey(true);
            if( key.Key == ConsoleKey.Enter){
                Console.WriteLine();
                break;
            } else if(key.Key == ConsoleKey.Backspace && result.Length > 0) {
                result = result.Substring(0, result.Length - 1);
                Console.SetCursorPosition(x - 1, y);
                Console.Write(" ");
                Console.SetCursorPosition(x - 1, y);
            } else {
                result += key.KeyChar;
                Console.Write("*") ;
            }
        }
        return result;
    }
}