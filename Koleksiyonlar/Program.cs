using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Koleksiyonlar
{
    class Program
    {
        static void Main(string[] args)
        {
            /*string[] isimler = new string[] { "Engin", "Murat", "Kerem", "Halil" }; //Yeni array oluşturup içine atamalar yaptık
            Console.WriteLine(isimler[0]);
            Console.WriteLine(isimler[1]);
            Console.WriteLine(isimler[2]);
            Console.WriteLine(isimler[3]);

            isimler = new string[5];    //Yeni boş bir array oluşturdu ve 4.kısıma İlker ismini atadı ama 0,1,2,3 boş kaldı yani Engin,Murat,Kerem,Halil silindi
            isimler[4] = "İlker";
            Console.WriteLine(isimler[4]);
            Console.WriteLine(isimler[0]);*/

            List<string> isimler2 = new List<string> { "Engin", "Murat", "Kerem", "Halil" };    //Arrayde yapamadığımız eklemeyi list sayesinde yapabiliyoruz
            Console.WriteLine(isimler2[0]);
            Console.WriteLine(isimler2[1]);
            Console.WriteLine(isimler2[2]);
            Console.WriteLine(isimler2[3]);
            isimler2.Add("İlker");
            Console.WriteLine(isimler2[4]);
            Console.WriteLine(isimler2[0]);

        }
    }
}
