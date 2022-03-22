using System;

class Name
{
    public static void Main(){
        int usia;
        string pass ="";

        Console.WriteLine("Masukan Usia Anda:");
        usia = Convert.ToUInt16(Console.ReadLine());
        Console.WriteLine("Masukan password");
        pass = GetHiddenConsoleInput();

        bool isDewasa = usia > 18;
        bool isPasswordValid = pass == "OCBC";

        if(isDewasa && isPasswordValid){
            Console.WriteLine("WELCOME TO THE CLUB, BUDDY!");
        } else if (!(isDewasa)){
            Console.WriteLine("Oh Tidak.. Maaf usia Anda belum memenuhi, silahkan kembali saat Usia anda sudah cukup :(");
        }else
            Console.WriteLine("Sayang Sekali, Password Anda Salah, Silahkan Coba Lagi :D");

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
