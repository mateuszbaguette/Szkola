select cena from filmy where rok_produkcji = 1984
select * from aktorzy where 1
select * from filmy where cena < 8
select * from filmy where cena < 2006 and cena > 8
select * from filmy where rok_produkcji = 1984 or cena > 6
select * from filmy where cena < 2006 and cena > 8 order by 'tytuł'

kolejność klauzur w sql jest ściśle określona 
najpierw select, from, where, order by

odczytaj rekordy filmów w których pierwsza litera to 'T'

