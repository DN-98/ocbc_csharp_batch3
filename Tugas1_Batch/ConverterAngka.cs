using System;

namespace Tugas1_Batch
{
    class ConverterAngka
{   
    private string[] ListAngka = {"zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"};

    public int n;
    private string str;
    public void convertAngka(){

        str = Convert.ToString(this.n);
        for (int i = 0; i < str.Length; i++)
        {   
            Console.Write($"{ListAngka[Int16.Parse(str[i].ToString())]} ");
        }
        

    }
}
}
