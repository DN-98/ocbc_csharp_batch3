using System;

namespace Laptop
{
    class Program
{
    public static void Main(){
        Laptop laptop1 = new Laptop();

        laptop1.merk="lenovo";
        laptop1.ram = 4;
        laptop1.memory = 120;

        Console.WriteLine($"Merk Laptop adalah {laptop1.merk}");
        Console.WriteLine($"Merk RAM adalah {laptop1.ram}");
        Console.WriteLine($"Merk Memory adalah {laptop1.memory}");    

        laptop1.Chatting();
        laptop1.Sosmed();
        laptop1.Olshop();
    }
}
}
