using System;

namespace Tugas1_Batch
{
        class ReversedNumber
    {   
        public int n;
        private string str;
        public void reversedNumber(){
            
            str = Convert.ToString(this.n);
            char[] chararr = str.ToCharArray();
            Array.Reverse(chararr);
            str = new string(chararr);

            Console.WriteLine($"Revesed number = {str}");

        }
    }
}
