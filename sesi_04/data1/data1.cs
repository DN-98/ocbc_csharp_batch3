using System;

class data1
{
    public static void Main(){
        int[] arr_angka = new int[5];
        string[] arr_nama = new string[] {"Joni", "Meri", "David"};
        object[] arr_Objek = {20.33, "Lorem ipsum", DateTime.Now, true, 'D'};

        arr_angka[1] = 5;
        Console.WriteLine(arr_angka[1]);
        Console.WriteLine(arr_angka[4]);
        Console.WriteLine(arr_nama[1]);
        Console.WriteLine(arr_Objek[1]);

        
    }
}