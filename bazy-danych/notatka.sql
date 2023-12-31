select cena from filmy where rok_produkcji = 1984
select * from aktorzy where 1
select * from filmy where cena < 8
select * from filmy where cena < 2006 and cena > 8
select * from filmy where rok_produkcji = 1984 or cena > 6
select * from filmy where cena < 2006 and cena > 8 order by 'tytuł'

--kolejność klauzur w sql jest ściśle określona 
--najpierw select, from, where, order by

--odczytaj rekordy filmów w których pierwsza litera to 'T'
SELECT * FROM filmy WHERE tytul LIKE 't%';
SELECT * FROM filmy WHERE left(tytul,2) = 'Te'

/*
Przydatne funkcje:
ROUND()  - zaokrągla
LENGTH() - Zwraca liczbę znaków
LOWER()  - zamienia litery na małe
UPPER()  - zamienia litery na wielkie
SUBSTR() - zwaraca fragment tekstu
*/
SELECT id_kopii, data_zwrotu-data_wypozyczenia as czas FROM wypozyczenia WHERE data_zwrotu-data_wypozyczenia>1
SELECT CONCAT(LEFT(imie,1),'. ', nazwisko) as aktor from aktorzy 

--połączenie kartezjanskie definicja, rekordy scalane na wszystkie sposoby, każdy z każdym
SELECT * FROM tabela1 CROSS JOIN tabela2
--połączenie naturalne 
SELECT * FROM tabela1 NATURAL JOIN tabela2

SELECT * FROM kopie join filmy on kopie.id_filmu=filmy.id_filmu;
--wyświetl połączenie kopie i filmy, gdzie if kopi to id filmu. 
--definicja połączenie zwrotne
SELECT * FROM tabela1 as t1 join tabela2 as t2 on warunek_połączeniowy
--przykład
SELECT * FROM aktorzy as a1 join aktorzy as a2 on a1.imie=a2.imie where a1.imie = 'Tom';

SELECT filmy.tytul from filmy join kopie on kopie.id_filmu = filmy.id_filmu join wypozyczenia on wypozyczenia.id_kopii = kopie.id_kopii = kopie.id_kopii 
join klienci on klienci.id_klienta = wypozyczenia.id_klienta WHERE klienci.nazwisko='Kowalski' INTERSECT SELECT filmy.tytul from filmy JOIN kopie 
on kopie.id_filmu JOIN wypozyczenia on wypozyczenia.id_kopii = kopie.id_kopii join klienci on klienci.id_klienta = wypozyczenia.id_klienta WHERE 
klienci.nazwisko = "Nowak"; 

SELECT rental_date from rental where rental_date < now();
SELECT subdate(rental_date,now()) from rental;
SELECT film_id, title, length FROM film ORDER BY RAND() LIMIT 10;

SELECT film.film_id, film.title, film.length, category.name AS category_name
FROM film JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON film_category.category_id = category.category_id ORDER BY RAND() LIMIT 10;

INSERT INTO sakila.actor VALUES(201,'Henry','Cavil','2003-02-22 17:23:30'); 

UPDATE sakila.actor set first_name = 'Gal', last_name = 'Gadot'
WHERE actor_id = '203';
SELECT * from sakila.actor;

--SELECT aby sprawdzić
--SZUKAMY ID zanim sprawdzimy
--Nie zapominać o where przy delete

DELETE from sakila.actor where actor_id = '202';

SELECT * from sakila.customer where store_id = 2 and active = 0; 
--3.18 
SELECT title from sakila.film where replacement_cost > 25 and replacement_cost < 30; 
--4.19

CREATE TABLE towary(id SERIAL, nazwa varchar(255),przyjaciele TIMESTAMP);
INSERT INTO towary(nazwa) VALUES('Mleko');
INSERT INTO towary(nazwa) VALUES('Ser');
INSERT INTO towary(nazwa) VALUES('Smietana');
INSERT INTO towary(nazwa) VALUES('Jogurt');

UPDATE towary set nazwa = 'Jogurt ABC' WHERE id = 3;






