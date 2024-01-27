using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP1
{
    class Program
    {
        static void Main(string[] args)
        {
            Product product1 = new Product();   //int,double,bool... değer tip
            product1.Id = 1;                    //diziler,class,abstract class,interface... referans tip  
            product1.CategoryId = 2;
            product1.ProductName = "Masa";
            product1.UnitPrice = 500;
            product1.UnitInStock = 3;

            Product product2 = new Product {Id = 2, CategoryId=5, UnitInStock=5, ProductName="Kalem", UnitPrice=35};

            //PascalCase    //CamelCase
            //Case Sensitive (C# Büyük-Küçük Harf Duyarlı)
            ProductManager productManager = new ProductManager();
            productManager.Add(product1);
            Console.WriteLine(product1.ProductName);

           /* productManager.Topla2(3, 6);

            int toplamaSonucu = productManager.Topla(3, 6);
            Console.WriteLine(toplamaSonucu*2);*/

            Console.ReadKey();
        }
    }
}
