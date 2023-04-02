	•	What are all the types of pokemon that a pokemon can have?

+----+----------+
| id | name     |
+----+----------+
|  1 | Normal   |
|  2 | Water    |
|  3 | Grass    |
|  4 | Rock     |
|  5 | Fire     |
|  6 | Ground   |
|  7 | Poison   |
|  8 | Bug      |
|  9 | Electric |
| 10 | Dragon   |
| 11 | Steel    |
| 12 | Dark     |
| 13 | Fighting |
| 14 | Psychic  |
| 15 | Ghost    |
| 16 | Fairy    |
| 17 | Ice      |
| 18 | Flying   |
+----+----------+

	•	What is the name of the pokemon with id 45?

select name from pokemons where id = 45;
+-------+
| name  |
+-------+
| Eevee |
+-------+

	•	How many pokemon are there?
select count(*) from pokemons;
656

	•	How many types are there?
select count(8) from types;
18
	•	How many pokemon have a secondary type?
select count(*) from pokemons where secondary_type is not null;
316