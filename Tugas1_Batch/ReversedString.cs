using System;

namespace Tugas1_Batch
{
        class ReversedString
    {
    
    public string str;
    public void reversedString(){
        string str = this.str;
        char[] chararr = str.ToCharArray();
        Array.Reverse(chararr);
        str = new string(chararr);


        Console.WriteLine($"Revesed String = {str}");

    }
}
}
