using System;
namespace BootCamp
{
    class Program
    {
        static void Main(string[] args)
        {
            string kategoriEtiketi = "Kategori";
            int ogrenciSayisi = 32000;
            double faizOrani = 1.45;
            double dolarDun = 7.55;
            double dolarBugün = 7.45;

            if (dolarDun > dolarBugün)
            {
                Console.WriteLine("Azalış Butonu");
            }
            else if (dolarDun < dolarBugün)
            {
                Console.WriteLine("Artış Butonu");
            }
            else
            {
                Console.WriteLine("Değişmedi Butonu");
            }

            bool sistemeGirisYapmisMi = true;
            if (sistemeGirisYapmisMi == true)
            {
                Console.WriteLine("Kullanıcı ayarları butonu");
            }
            else
            {
                Console.WriteLine("Giriş yap butonu");
            }

            Console.WriteLine(kategoriEtiketi);
            Console.ReadKey();
        }
    }
}