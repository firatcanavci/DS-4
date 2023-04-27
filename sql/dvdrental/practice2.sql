-- İsmi Bra ile başlayan ve soyismi Motley olmayan kişileri getir.
select first_name, last_name from customer WHERE first_name like 'Bra%' AND last_name <> 'Motley'; 

/* LIMIT ve FETCH */
-- film tablosundan film_id ve title ları getir
select film_id, title from film; 

-- yukardaki tablodan ilk satırını getir öncesinde title göre order by yap
select film_id, title from film order by title fetch first 1 row only;

-- yukardaki örnek referans sayılsın ve ilk 5 satırı getirilsin.
select film_id, title from film order by title fetch first 5 row only;

select film_id, title from film order by title limit 5;

-- ilk 5 satırını atla ve sonrasında 7 satırı getir
select film_id, title from film order by title OFFSET 5 rows limit 7;

select film_id, title from film order by title OFFSET 5 rows fetch first 7 row only;

-- film id title ve release year sütunlarını getir ama offset 3 yap ve baştan 4 tane seç
select film_id, title, release_year from film order by title offset 3  limit 4;

/* BETWEEN */

-- payment tablosundan customer_id, payment_id, amount ları getir ve amount aralığı 8 ve 9 dahil arasında olsun
select * from payment;

select customer_id, payment_id,amount from payment where amount between 8 and 9;
 
 -- 2007-02-07 ve 2007-02-15 tarihleri arasındaki tüm bilgileri getir
 select payment_date from payment where payment_date between '2007-02-07' and '2007-02-15';
 
/*like */ 
-- isminde er geçen kişileri getir
select first_name, last_name from customer where first_name like '%er%';

-- isminin 2. harfinden başlayarak her geçen isimleri getir
select first_name, last_name from customer where first_name like '_her%';

--'bar' ifadesi geçen isimleri getir
select first_name, last_name from customer where first_name ilike 'bar%' order by first_name;

/* NULL */

CREATE TABLE contacts(
    id SERIAL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    PRIMARY KEY (id)
);
INSERT INTO contacts(first_name, last_name, email, phone)
VALUES ('John','Doe','john.doe@example.com',NULL),
       ('Lily','Bush','lily.bush@example.com','(408-234-2764)');
	   
select * from contacts;

-- telefon numarası null olan kişileri göster
select * from contacts where phone = NULL; -- boş değer dönderir.

select * from contacts where phone is NULL; -- çalışıyor

select * from contacts where id = 1;

select * from contacts where id is 1; --çalışmadı

select * from contacts where first_name  = 'John';

select * from contacts where first_name is 'John'; -- çalışmadı

--- null olmayan satırları çağır
select * from contacts where phone is not NULL;


-------

