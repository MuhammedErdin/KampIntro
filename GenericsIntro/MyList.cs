using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenericsIntro
{
    class MyList<T>
    {
        T[] items;  //=string[] items
        //constructor
        public MyList()
        {
            items = new T[0];   //itemsı 0 elemanlı olarak oluşturdum
        }
        public void Add(T item)
        {
            T[] tempArray = items;  //items içerisindekiler gitmesin diye tempArraye(Geçici Diziye) emaneten verdim
            items = new T[items.Length+1];  //itemsın eleman sayısını 1 arttırdım
            for (int i = 0; i < tempArray.Length; i++)  //tempArraye verdiğim elemanları geri adım adım alıyorum
            {
                items[i] = tempArray[i];            
            }
                items[items.Length - 1] = item; //itemsın son elemanını son kısma ekledim
        }
    }
}
