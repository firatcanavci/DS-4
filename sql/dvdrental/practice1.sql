select * from customer

select first_name, last_name, email from customer; --- isim, soyisim email seçme

select CONCAT(first_name,' ', last_name) from customer;

select CONCAT(first_name,' ', last_name) as first_last from customer;

select first_name, last_name as surname from customer;

/* ORDER BY */

--- isim ve soy isim sütunlarını getir ve isim sütunu sırala

SELECT
	first_name,
	last_name
FROM
	customer
ORDER BY
	first_name ASC,
	last_name DESC;

select first_name, last_name from customer order by first_name, last_name DESC;

-- isim sütununu ve isim uzunluğunu göster ve sıralamayı da isim uzunluğuna göre yap.

select first_name, LENGTH(first_name) as name_length from customer order by name_length;

/*WHERE */

--ismi Jamie olan kişileri getir

select first_name, last_name from customer  WHERE first_name = 'Jamie';
 
 -- ismi jamie olan ve  soy ismi rice olan kişiyi getir
 
select first_name, last_name from customer  where first_name = 'Jamie' AND last_name =  'Rice';
 
 -- ismi Rodrigez olan veya  soy ismi Adam olan kişiyi getir
 
select first_name, last_name from customer  where first_name = 'Rodriguez' OR last_name =  'Adam'; 

--isimleri Ann, Anne, Annie olan kişileri getirelim

select first_name, last_name from customer  where first_name IN ('Ann', 'Anne', 'Annie')

SELECT 	first_name, last_name FROM 	customer WHERE 	first_name LIKE 'Ann%'

---ismi A harfi ile başlayan ve isim uzunlukları 3 ve 5 arasında olan kişilerin isimlerini , soy ismlerini ve isim uzunluklarını getir

select first_name, last_name, LENGTH(first_name) as length_name 
from customer 
Where first_name like 'A%' 
AND LENGTH(first_name) BETWEEN 3 AND 5 Order By length_name DESC;

 