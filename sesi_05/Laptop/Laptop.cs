using System;

namespace Laptop{
        class Laptop
    {
        public string merk;
        public int ram;
        public int memory;

        public void Chatting(){
            Console.WriteLine($"\n{merk} sedang chatting");
        }
        public void Sosmed(){
            Console.WriteLine($"\n{merk} sedang Sosmed");
        }
        public void Olshop(){
            Console.WriteLine($"\n{merk} sedang Online Shop");
        }
    }
}