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
