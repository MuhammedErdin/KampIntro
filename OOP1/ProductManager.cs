using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP1
{
    class ProductManager
    {
        public void Add(Product product)
        {
            Console.WriteLine(product.ProductName+ " eklendi.");
        }

        public void Update(Product product)
        {
            Console.WriteLine(product.ProductName+ " güncellendi");
        }
        /*int olduğu zaman işlem sonucu ortaya çıkan toplamı başka bir şey kullanabiliriz.
        public int Topla(int sayi1,int sayi2)
        {
            return sayi1 + sayi2;
        }
        //void dediğimiz zaman sayi1 ve sayi2 toplar sonucu ekrana verir ileriki aşamalarda lazım olursa kullanamayız.
        public void Topla2(int sayi1, int sayi2)
        {
            Console.WriteLine(sayi1 + sayi2);
        }*/
    }
}
