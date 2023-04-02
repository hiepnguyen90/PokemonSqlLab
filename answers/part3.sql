	•	What is each pokemon's primary type?
select p.name, t.name 
from pokemons as p 
inner join types as t 
on p.primary_type=t.id;


	•	What is Rufflet's secondary type?

select pokemons.name, types.name 
from pokemons 
left join types on pokemons.secondary_type = types.id 
where pokemons.name='rufflet';

	•	What are the names of the pokemon that belong to the trainer with trainerID 303?

select name
from pokemons
where id in (
select pokemon_id from pokemon_trainer where trainerID = 303
);

Wailord
Vileplume



	•	How many pokemon have a secondary type Poison
select count(*) from pokemons where secondary_type = 7
31

	•	What are all the primary types and how many pokemon have that type?

select t.name, count(*) 
from pokemons as p 
join types as t on p.primary_type=t.id 
group by p.primary_type;

+----------+---------------+
| name     | count(t.name) |
+----------+---------------+
| Normal   |            90 |
| Water    |            95 |
| Grass    |            59 |
| Rock     |            38 |
| Fire     |            38 |
| Ground   |            29 |
| Poison   |            27 |
| Bug      |            61 |
| Electric |            35 |
| Dragon   |            22 |
| Steel    |            19 |
| Dark     |            24 |
| Fighting |            25 |
| Psychic  |            38 |
| Ghost    |            19 |
| Fairy    |            14 |
| Ice      |            22 |
| Flying   |             1 |
+----------+---------------+



	•	How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer

Select trainerID, count(*) 
from pokemon_trainer 
where pokelevel = 100 
group by trainerID;



	•	How many pokemon only belong to one trainer and no other?

select count(*) from (select p.name, count(p.name) 
from pokemons as p 
inner join pokemon_trainer pt on p.id = pt.pokemon_id 
group by pt.pokemon_id 
having count(pt.pokemon_id)=1) as subq;