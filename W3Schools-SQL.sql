--Müşteriler tablosundaki tüm sütunları almak için
Select * FROM Customers;

--Müşteriler tablosundan Şehir sütununu seçecek bir ifade
Select City From Customers;

--Müşteriler tablosundaki Ülke sütunundan tüm farklı değerleri seçer
Select Distinct Country From Customers;

--Şehir sütununda "Berlin" değerinin bulunduğu tüm kayıtları seçer
Select * From Customers Where	City='Berlin';

--CustomerID sütununun 32 değerine sahip olduğu tüm kayıtları seçer
Select * From Customers Where CustomerID=32;

--Müşteriler tablosundan tüm kayıtları seçin, sonucu Şehir sütununa göre alfabetik olarak sırala
Select * From Customers Order By City;

--Müşteriler tablosundan tüm kayıtları seçin, sonucu Şehir sütununa göre alfabetik olarak tersine sırala
Select * From Customers Order By City DESC;

--Müşteriler tablosundan tüm kayıtları seçin, sonucu önce Ülke sütununa, ardından Şehir sütununa göre alfabetik olarak sırala
Select * From Customers Order By Country,City;

--Şehir sütununun 'Berlin' değerine ve Posta Kodu sütununun '12209' değerine sahip olduğu tüm kayıtları seç
Select * From Customers Where City='Berlin' AND PostalCode='12209';

--Şehir sütununun 'Berlin' VEYA 'Londra' değerine sahip olduğu tüm kayıtları seç
Select * From Customers Where City='Berlin' OR City='London';

--Şehrin "Berlin" OLMADIĞI tüm kayıtları seçmek için NOT anahtar sözcüğünü kullan
Select * From Customers Where NOT City='Berlin';

--Müşteriler tablosuna yeni bir kayıt ekle
Insert Into Customers(CustomerName,Address,City,PostalCode,Country) Values('Hekkan Burger','Gateveien 15','Sandnes','4306','Norway');

--Posta Kodu sütununun boş olduğu Müşteriler'deki tüm kayıtları seç
Select * From Customers Where PostalCode Is Null;

--Posta Kodu sütununun boş OLMADIĞI Müşteriler'deki tüm kayıtları seç
Select * From Customers Where PostalCode Is Not Null;

--Müşteriler tablosundaki tüm kayıtların Şehir sütununu güncelle
Update Customers Set City='Oslo';

--Şehir sütunlarının değerini 'Oslo' olarak ayarlayın, ancak yalnızca Ülke sütununun "Norveç" değerine sahip olduğu sütunları kullan
Update Customers Set City='Oslo' Where Country='Norway';

--Şehir değerini ve Ülke değerini güncelle
Update Customers Set City='Oslo', Country='Norway' Where CustomerID=32;

--Ülke değerinin 'Norveç' olduğu Müşteriler tablosundaki tüm kayıtları sil
Delete From Customer Where Country='Norway';

--Müşteriler tablosundaki tüm kayıtları sil
Delete From Customers;

--Fiyat sütununun en küçük değerine sahip kaydı seçmek için bir SQL işlevi kullan
Select Min(Price) From Products;

--Fiyat sütununda en yüksek değere sahip kaydı seçmek için bir SQL işlevi kullan
Select Max(Price) From Products;

--Fiyat değeri 18 olarak ayarlanmış kayıtların sayısını döndürmek için
Select Count(*) From Products Where Price=18;

--Tüm ürünlerin ortalama Fiyatını hesaplamak için bir SQL işlevi kullan
Select AVG(Price) From Products;

--Ürünler tablosundaki tüm Fiyat sütunu değerlerinin toplamını hesaplamak için bir SQL işlevi kullan
Select SUM(Price) From Products;

--Şehir sütununun değerinin "a" harfiyle başladığı tüm kayıtları seç
Select * From Customers Where City Like '%a';

--Şehir sütununun değerinin "a" harfini içerdiği tüm kayıtları seç
Select * From Customers Where City Like '%a%';

--Şehir sütununun değerinin "a" harfiyle başlayıp "b" harfiyle bittiği tüm kayıtları seç
Select * From Customers Where City Like 'a%b';

--Şehir sütununun değerinin "a" harfiyle BAŞLAMADIĞI tüm kayıtları seç
Select * From Customers Where City Not Like 'a%';

--Şehrin ikinci harfinin "a" olduğu tüm kayıtları seç
Select * From Customers Where City Like '_a%';

--Şehrin ilk harfinin "a", "c" veya "s" olduğu tüm kayıtları seç
Select * From Customers Where City Like '[acs]%';

--Şehrin ilk harfinin "a"dan "f"ye kadar herhangi bir şeyle başladığı tüm kayıtları seç
Select * From Customers Where City Like '[a-f]%';

--Şehrin ilk harfinin "a", "c" veya "f" Olmadığı tüm kayıtları seç
Select * From Customers Where City Like '[!acf]%';

--Ülkenin "Norveç" veya "Fransa" olduğu tüm kayıtları seçmek için IN operatörünü kullan
Select * From Customers Where Country In ('Norway','France');

--Ülkenin "Norveç" Olmadığı ve "Fransa" Olmadığı tüm kayıtları seçmek için IN operatörünü kullan
Select * From Customers Where Country Not In ('Norway','France');

--Fiyat sütununun değerinin 10 ile 20 arasında olduğu tüm kayıtları seçmek için BETWEEN operatörünü kullan
Select *From Products Where Price Between 10 AND 20;

--Fiyat sütununun değerinin 10 ile 20 arasında olmadığı tüm kayıtları seçmek için BETWEEN operatörünü kullan
Select *From Products Where Price Not Between 10 AND 20;

--ÜrünAdı sütununun değerinin alfabetik olarak 'Geitost' ile 'Pavlova' arasında olduğu tüm kayıtları seçmek için BETWEEN operatörünü kullan
Select * From Products Where ProductName Between 'Geitost' AND 'Pavlova';

--Müşteriler tablosunu görüntülerken PostaKodu sütununun ALIAS'ını oluşturun; sütunun bunun yerine Pno olarak adlandırılması gerek
Select CustomerName,Address,PostalCode AS Pno From Customers;

--Müşteriler tablosunu görüntülerken tabloya Müşteriler yerine Tüketiciler adını ver
Select * From Customers AS Consumers;

--İki tablo arasındaki ilişki olarak her iki tablodaki Müşteri Kimliği alanını kullanarak iki tabloyu birleştirmek için JOIN yan tümcesindeki eksik parçaları ekle
Select * From Orders Left Join Costumers ON Orders.CustomerID=Customers.CustomerID;

--Her iki tabloda da eşleşme bulunan iki tablodaki tüm kayıtları seçmek için doğru JOIN yan tümcesini seç
Select * From Orders Inner Join Customers ON Orders.CustomerID=Customers.CustomerID;

--Müşteriler tablosundaki tüm kayıtları ve Siparişler tablosundaki tüm eşleşmeleri seçmek için doğru JOIN yan tümcesini seç
Select * From Orders Right Join Customers ON Orders.CustomerID=Customers.CustomerID;

--Her ülkedeki müşteri sayısını listele
Select Count (CustomerID), Country From Customers Group By Country;

--Her ülkedeki müşteri sayısını, en çok müşterinin ilk sırada olduğu ülkeye göre sıralayarak listele
Select Count (CustomerID), Country From Customers Group By Country Order By Count(CustomerId) DESC;

--TestDB adında yeni bir veritabanı oluşturmak için doğru SQL ifadesini yaz
Create Database TestDB;

--TestDB adlı bir veritabanını silmek için doğru SQL ifadesini yaz
Drop Database TestDB;

--Kişiler adlı yeni bir tablo oluşturmak için doğru SQL ifadesini yaz
Create Table Persons(PersonID int,LastName varchar(255),FirstName varchar(255),Address varchar(255),City varchar(255));

--Kişiler adlı bir tabloyu silmek için doğru SQL ifadesini yaz
Drop Table Person;

--Bir tablodaki tüm verileri silmek için TRUNCATE deyimini kullan
Truncate Table Persons;

--Doğum Günü adlı DATE türünde bir sütun ekle
Alter Table Persons Add Birthday Date;

--Kişiler tablosundan Doğum Günü sütununu sil
Alter Table Persons Drop Column Birthday;
