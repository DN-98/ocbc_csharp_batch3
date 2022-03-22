using System;

class Length{
    static void Main(){
        int [] angka = new int[10];

        Console.WriteLine("Panjang array angka adalah " + angka.Length);

        for(int i = 0; i < angka.Length; i++){
            angka[i] = i*1;
        }

        Console.WriteLine("Berikutnya adalah array angka: ");
        for (int i = 0; i < angka.Length; i++)
        {
            Console.WriteLine(angka[i]+" ");
        }

        Console.WriteLine();
    }
}