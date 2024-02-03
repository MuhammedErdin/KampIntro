--Select (Seç)
--ANSI
Select * from Customers --Tüm Customers tablolarını seç *=>tüm kolonları demek
Select	ContactName,CompanyName,City from Customers		--3 kolonu seçmiş oldu
Select	ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City = 'Berlin'		--Tüm Customerlarda City Berlin olanları verir

--SQL Case İnsensitive (Büyük-Küçük harf duyarsız)
select * from Products where CategoryID=1 or CategoryID=3	--Productta CategoryId'si 1 veya CategoryId'si 3 olanları verir

select * from Products where CategoryID=1 and UnitPrice>=10		--Productta CategoryId'si 1 ve UnitPrice>=10 olanları beraber verir
--Order by (Sırala)				
select * from Products order by UnitPrice asc --ascending(artan demek,defaul hali)
select * from Products order by UnitPrice desc --descending(azalan demek)

select * from Products order by CategoryID,ProductName	--CategoryIdleri aynı olan ProductNameleri kendi içerisinde sırala

select count(*) from Products	--Product tablosunda kaç data var 

select CategoryID from products group by CategoryID		--Bütün kategorileri bana tekrar etmeyecek şekilde listele
select CategoryID,count(*) from products group by CategoryID	--Hangi kategoride kaç farklı ürünümüz var

select CategoryID,count(*) from products group by CategoryID having count(*)<10		--10 taneden az olan kategorileri verir
select CategoryID,count(*) from products where UnitPrice>20 group by CategoryID having count(*)<10		--Birim fiyatı 20'den fazla olan ürünleri grupla CategoryId'ye göre grupla 10'dan küçük olanları verir


select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID		--Products ve Categories birlikte al, Products tablosuna CategoryId'si ile Categorieste CategoryId'si eşitse yan yana al
select Products.ProductID, Products.ProductName, Products.UnitPrice,Categories.CategoryName from Products inner join Categories on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>=10

--DTO Data Transformation Object

select * from Products p inner join [Order Details] od on p.ProductID = od.ProductID

select * from Customers c left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null

select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID inner join Orders o on o.OrderID = od.OrderID
