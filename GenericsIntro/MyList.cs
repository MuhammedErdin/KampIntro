using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenericsIntro
{
    class MyList<Name>
    {
        Name[] names;  //=string[] names
        //constructor
        public MyList()
        {
            names = new Name[0];   //names 0 elemanlı olarak oluşturdum
        }
        public void Add(Name name)
        {
            Name[] tempArray = names;  //names içerisindekiler gitmesin diye tempArraye(Geçici Diziye) emaneten verdim
            names = new Name[names.Length+1];  //names eleman sayısını 1 arttırdım
            for (int i = 0; i < tempArray.Length; i++)  //tempArraye verdiğim elemanları geri adım adım alıyorum
            {
                names[i] = tempArray[i];            
            }
                names[names.Length - 1] = name; //namesın son elemanını son kısma ekledim
        }
        public int Lenght
        {
            get { return names.Length; }
        }
        public Name[] Names
        {
            get { return names; }
        }

    }
}
