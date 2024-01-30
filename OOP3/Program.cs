using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP3
{
    class Program
    {
        static void Main(string[] args)
        {
            //Interfaceleri birbirinin alternatifi olan ama kod içerikleri farklı olan durumlar için kullanırız
            IKrediManager ihtiyacKrediManager = new IhtiyacKrediManager();  //IhtıyacKrediManager ıhtıyacKrediManager = new IhtıyacKrediManager();
            IKrediManager tasitKrediManager = new TasitKrediManager();      //TasitKrediManager tasitKrediManager = new TasitKrediManager();      
            IKrediManager konutKrediManager = new KonutKrediManager();      //KonutKrediManager konutKrediManager = new KonutKrediManager();
            //IKrediManager esnafKrediManager = new EsnafKredisiManager();    //EsnafKrediManager esnafKrediManager = new EsnafKrediManager();

            ILoggerService databaseLoggerService = new DatabaseLoggerService();
            ILoggerService fileLoggerService = new FileLoggerService();


            BasvuruManager basvuruManager = new BasvuruManager();
            basvuruManager.BasvuruYap(new EsnafKredisiManager(), new SmsLoggerService());
            //basvuruManager.BasvuruYap(esnafKrediManager, fileLoggerService);

            List<IKrediManager> krediler = new List<IKrediManager>() {ihtiyacKrediManager,tasitKrediManager };

            //basvuruManager.KrediOnBilgilendirmesiYap(krediler);
        }
    }
}
