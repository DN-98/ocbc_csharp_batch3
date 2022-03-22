using System;
class Logika3
{
    public static void Main(){
        string username, pass;
        Console.WriteLine("Masukan Username : ");
        username = Console.ReadLine();
        Console.WriteLine("Masukan Password : ");
        pass = GetHiddenConsoleInput();

        bool isValid = username == "ocbc" && pass == "BootCamp";
        if(isValid){
            Console.WriteLine("Anda Berhasil Login");
        } else
            Console.WriteLine("Username atau Password anda salah ");
    }

    private static string GetHiddenConsoleInput(){
        string result = "";
        
        while(true){
            int x = Console.CursorLeft;
            int y = Console.CursorTop;
        
            ConsoleKeyInfo key = Console.ReadKey(true);
            if(key.Key == ConsoleKey.Enter){
                Console.WriteLine();
                break;
            } else if(key.Key == ConsoleKey.Backspace && result.Length > 0){
                result = result.Substring(0, result.Length - 1);
                Console.SetCursorPosition(x - 1, y);
                Console.Write(" ");
                Console.SetCursorPosition(x - 1, y);
            } else {
                result += key.KeyChar;
                Console.Write("*");
            }
        }
        return result;
    }
}