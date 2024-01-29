using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenericsIntro
{
    class Program
    {
        static void Main(string[] args)
        {
            MyList<string> isimler = new MyList<string>();
            isimler.Add("Engin");

            Console.WriteLine(isimler.Lenght);

            isimler.Add("Demirog");

            Console.WriteLine(isimler.Lenght);

            foreach (var isim in isimler.Names)
            {
                Console.WriteLine(isim);
            }
            Console.ReadKey();
        }
    }
}
