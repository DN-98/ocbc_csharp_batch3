using System;

class data2
{
    public static void Main(){
        string[] contoh = new string[4]
        {
            "Motherboard", "Processor", "Power Supply", "Video Card"
        };

        Console.WriteLine("Menampilkan semua data dalam array:");
        Console.WriteLine("");

        foreach (string item in contoh)
        {   
            if(item == "Power Supply"){
                Console.WriteLine("Ini Power Supply");
            }
            Console.WriteLine(item);
        }
        
    }
}