using System;

namespace ClassIntro
{
    class Program
    {
        static void Main(string[] args)
        {
            string adi = "Engin";
            int yas = 36;

            Kurs kurs1 = new Kurs();
            kurs1.KursAdi = "Java";
            kurs1.Egitmen = "Kerem Varış";
            kurs1.IzlenmeOrani = 64;

            Kurs kurs2 = new Kurs();
            kurs2.KursAdi = "Python";
            kurs2.Egitmen = "Berkay Bilgin";
            kurs2.IzlenmeOrani = 80;

            Kurs kurs3 = new Kurs();
            kurs3.KursAdi = "C#";
            kurs3.Egitmen = "Engin Demiroğ";
            kurs3.IzlenmeOrani = 68;

            //Console.WriteLine(kurs3.KursAdi + ":" + kurs3.Egitmen);

            Kurs[] kurslar = new Kurs[] { kurs1, kurs2, kurs3 };

            foreach (var kurs in kurslar)
            {
                Console.WriteLine(kurs.KursAdi + ":" + kurs.Egitmen);
            }

            Console.ReadKey();
        }
    }

    class Kurs
    {
        public string KursAdi { get; set; }
        public string Egitmen { get; set; }
        public int IzlenmeOrani { get; set; }
    }
}
