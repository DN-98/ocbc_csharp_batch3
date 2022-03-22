using System;
using System.Globalization;

class string2
{
    public static void Main(){
        
        string str1 = "Untuk pemrograman .NET C# adalah #1.";
        string str2 = "Untuk pemrograman .NET C# adalah #1.";
        string str3 = "string C# sangat tangguh.";
        string strAtas, strBawah;
        int hasil, idx;
        
        Console.WriteLine($"str1 : {str1}");
        Console.WriteLine($"panjang str1 : {str1.Length}");

        strBawah = str1.ToLower();
        strBawah = str1.ToLower(CultureInfo.CurrentCulture);
        strAtas = str1.ToUpper();
        strAtas = str1.ToUpper(CultureInfo.CurrentCulture);

        Console.WriteLine($"versi lowercase str1: {strBawah}");
        Console.WriteLine($"versi uppercase str1: {strAtas}");
        Console.WriteLine();
        for (int i = 0; i < str1.Length; i++)
            Console.Write(str1[i]);
        
        if (str1 == str2)
            Console.WriteLine("str1 == str2");
        else 
            Console.WriteLine("str1 != str2");
        
        if (str1 == str3)
            Console.WriteLine("str1 == str3");
        else 
            Console.WriteLine("str1 != str3");
        

        hasil = string.Compare(str1, str3, StringComparison.CurrentCulture);
        if(hasil == 0){
            Console.WriteLine("str1 dan str3 sama");
        } else if (hasil < 0)
            Console.WriteLine("str1 kurang dari str3");
          else if(hasil > 0)
            Console.WriteLine("str1 lebih dari str3");

        Console.WriteLine();

        str2 = "Satu Dua Tiga Satu";
        idx = str2.IndexOf("Satu", StringComparison.Ordinal);
        Console.WriteLine($"Indeks kemunculan pertama dari Satu : {idx}");
        idx = str2.LastIndexOf("Satu", StringComparison.Ordinal);
        Console.WriteLine($"Indeks kemunculan terakhir dari Satu : {idx}");
        
    }
}