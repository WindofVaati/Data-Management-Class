DROP TABLE IF EXISTS Pokemon CASCADE;
DROP TABLE IF EXISTS ElementType CASCADE;
DROP TABLE IF EXISTS PokemonType CASCADE;
DROP TABLE IF EXISTS Weakness CASCADE;
DROP TABLE IF EXISTS Resistance CASCADE;
DROP TABLE IF EXISTS Immunity CASCADE;
DROP TABLE IF EXISTS PokemonStats CASCADE;
DROP TABLE IF EXISTS Stats CASCADE;
DROP TABLE IF EXISTS Nature CASCADE;
DROP TABLE IF EXISTS NatureTraits CASCADE;


--Pokemon--
CREATE TABLE Pokemon (
PokeNumber integer not null,
Name	   text,
Description text,
primary key(PokeNumber)
);


--Element Type--
CREATE TABLE ElementType (
tid 	   integer not null, --tid is typeID--
Name	   text,
primary key(tid)
);



--Pokemon Type--
CREATE TABLE PokemonType (
PokeNumber integer not null references Pokemon(PokeNumber),
tid	   integer references ElementType(tid),
primary key(PokeNumber, tid)
);



--Weakness--
CREATE TABLE Weakness (
tid 	   integer not null references ElementType(tid),
wid        integer not null, --wid is Weakness ID--
primary key(tid,wid)
);



--Resistance--
CREATE TABLE Resistance (
tid        integer not null references ElementType(tid),
rid        integer not null, --rid is Resistance ID--
primary key(tid,rid)
);



--Immunity--
CREATE TABLE Immunity (
tid        integer not null references ElementType(tid),
iid	   integer not null, --iid is Immunity ID--
primary key(tid,iid)
);



--PokemonStats--
CREATE TABLE PokemonStats (
PokeNumber         integer not null references Pokemon(PokeNumber),
HP	           integer not null,
Attack	           integer not null,
Defense	           integer not null,
SpecialAttack	   integer not null,
SpecialDefense	   integer not null,
Speed	           integer not null,
primary key(PokeNumber)
);


--Stats--
CREATE TABLE Stats (
Sid                integer not null, --Sid stands for Stat ID--
Stat	           text,
Description        text,
primary key(sid)
);


--Nature--
CREATE TABLE Nature (
nid        integer not null, --Nid stands for Nature ID--
Name	   text,
primary key(nid)
);



--NatureTraits--
CREATE TABLE NatureTraits (
Nid	    integer not null references Nature(nid),
Bid	    integer references Stats(sid), --Stands for Benefit ID. This will link with the Stat of the same number--
Lid         integer references Stats(sid),
primary key(Nid)
);



--Pokemon--
INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('083', 'Farfetchd', 'The plant stalk it holds is its weapon. The stalk is used like a sword to cut all sorts of things.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('091', 'Cloyster', 'Its shell is extremely hard. It cannot be shattered, even with a bomb. The shell opens only when it is attacking.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('214', 'Heracross', 'This powerful Pokémon thrusts its prized horn under its enemies bellies, then lifts and throws them.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('260', 'Swampert', 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('302', 'Sableye', 'It hides in the darkness of caves. Its diet of gems has transformed its eyes into gemstones.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('303', 'Mawile', 'Attached to its head is a huge set of jaws formed by horns. It can chew through iron beams.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('350', 'Milotic', 'Milotic is breathtakingly beautiful. Those that see it are said to forget their combative spirits.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('354', 'Banette', 'A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('542', 'Leavanny', 'Upon finding a small Pokémon, it weaves clothing for it from leaves by using the sticky silk secreted from its mouth.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('556', 'Maractus', 'Arid regions are their habitat. They move rhythmically, making a sound similar to maracas.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('635', 'Hydreigon', 'It responds to movement by attacking. This scary, three-headed Pokémon devours everything in its path!');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('666', 'Vivillon', 'Vivillon with many different patterns are found all over the world. These patterns are affected by the climate of their habitat.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('693', 'Clawitzer', 'By expelling water from the nozzle in the back of its claw, it can move at a speed of 60 knots.');


INSERT INTO Pokemon( PokeNumber, Name, Description )
  VALUES('703', 'Carbink', 'Born from the temperatures and pressures deep underground, it fires beams from the stone in its head.');


--Element Types--
INSERT INTO ElementType( Tid, Name)
  VALUES('1', 'Normal');


INSERT INTO ElementType( Tid, Name)
  VALUES('2', 'Fire');



INSERT INTO ElementType( Tid, Name)
  VALUES('3', 'Water');



INSERT INTO ElementType( Tid, Name)
  VALUES('4', 'Electric');



INSERT INTO ElementType( Tid, Name)
  VALUES('5', 'Grass');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('6', 'Ice');


  
INSERT INTO ElementType( Tid, Name)
  VALUES('7', 'Fighting');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('8', 'Poison');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('9', 'Ground');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('10', 'Flying');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('11', 'Psychic');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('12', 'Bug');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('13', 'Rock');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('14', 'Ghost');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('15', 'Dragon');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('16', 'Dark');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('17', 'Steel');

  
INSERT INTO ElementType( Tid, Name)
  VALUES('18', 'Fairy');


--Pokemon Type--
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('083', '1');


INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('083', '10');


INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('091', '3');

 
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('091', '6');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('214', '12');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('214', '7');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('260', '3');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('260', '9');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('302', '16');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('302', '14');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('303', '17');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('303', '18');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('350', '3');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('354', '14');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('542', '12');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('542', '5');


INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('635', '16');


INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('635', '15');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('666', '12');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('666', '10');
  

INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('693', '3');


INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('703', '13');

  
INSERT INTO PokemonType( PokeNumber, Tid)
  VALUES('703', '18');


--Weakness--
INSERT INTO Weakness( Tid, Wid)
  VALUES('1', '7');


 INSERT INTO Weakness( Tid, Wid)
  VALUES('2', '3');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('2', '9');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('2', '13');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('3', '4');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('3', '5');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('4', '9');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('5', '2');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('5', '6');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('5', '8');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('5', '10');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('5', '12');


 INSERT INTO Weakness( Tid, Wid)
  VALUES('6', '2');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('6', '7');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('6', '13');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('6', '17');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('7', '10');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('7', '11');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('8', '9');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('8', '11');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('9', '3');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('9', '5');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('9', '6');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('10', '4');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('10', '6');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('10', '13');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('11', '12');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('11', '14');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('11', '16');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('12', '2');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('12', '10');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('12', '13');

    
INSERT INTO Weakness( Tid, Wid)
  VALUES('13', '3');

  
 INSERT INTO Weakness( Tid, Wid)
  VALUES('13', '5');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('13', '7');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('13', '9');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('13', '17');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('14', '6');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('14', '14');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('14', '16');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('15', '6');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('15', '15');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('15', '18');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('16', '7');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('16', '12');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('16', '18');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('17', '2');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('17', '7');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('17', '9');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('18', '8');

    
 INSERT INTO Weakness( Tid, Wid)
  VALUES('18', '17');


--Resistance--

INSERT INTO Resistance( Tid, Rid)
 VALUES('2', '2');


INSERT INTO Resistance( Tid, Rid)
 VALUES('2', '5');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('2', '6');


INSERT INTO Resistance( Tid, Rid)
 VALUES('2', '17');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('2', '18');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('3', '2');


INSERT INTO Resistance( Tid, Rid)
 VALUES('3', '3');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('3', '6');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('3', '17');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('4', '4');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('4', '10');


INSERT INTO Resistance( Tid, Rid)
 VALUES('4', '17');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('5', '3');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('5', '5');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('5', '9');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('6', '6');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('7', '12');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('7', '13');


INSERT INTO Resistance( Tid, Rid)
 VALUES('7', '16');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('8', '5');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('8', '7');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('8', '8');


INSERT INTO Resistance( Tid, Rid)
 VALUES('8', '12');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('9', '8');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('9', '13');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('10', '5');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('10', '7');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('10', '12');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('11', '7');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('11', '11');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('12', '5');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('12', '7');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('12', '9');


INSERT INTO Resistance( Tid, Rid)
 VALUES('13', '1');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('13', '2');


INSERT INTO Resistance( Tid, Rid)
 VALUES('13', '8');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('13', '10');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('14', '8');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('14', '12');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('15', '2');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('15', '3');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('15', '4');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('15', '5');


INSERT INTO Resistance( Tid, Rid)
 VALUES('16', '14');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('16', '16');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '1');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '5');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '6');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '10');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '11');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '12');


INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '13');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '15');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '17');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('17', '18');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('18', '7');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('18', '12');

 
INSERT INTO Resistance( Tid, Rid)
 VALUES('18', '16');


--Immunity---

INSERT INTO Immunity(Tid, Iid)
 VALUES('1','14');

 
INSERT INTO Immunity( Tid, Iid)
 VALUES('9', '4');

 
INSERT INTO Immunity( Tid, Iid)
 VALUES('10', '9');

 
INSERT INTO Immunity( Tid, Iid)
 VALUES('14', '1');

 
INSERT INTO Immunity( Tid, Iid)
 VALUES('14', '7');

 
INSERT INTO Immunity( Tid, Iid)
 VALUES('16', '11');

 
INSERT INTO Immunity( Tid, Iid)
 VALUES('17', '8');


INSERT INTO Immunity( Tid, Iid)
 VALUES('18', '15');

--Pokemon Stats--


INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('083', '52', '65', '55', '58', '62', '60');


INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('091', '50', '95', '180', '85', '45', '70');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('214', '80', '125', '75', '40', '95', '85');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('260', '100', '110', '90', '85', '90', '60');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('302', '50', '75', '75', '65', '65', '50');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('303', '50', '85', '85', '55', '55', '50');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('350', '95', '60', '79', '100', '125', '81');


INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('354', '64', '115', '65', '83', '63', '65');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('542', '75', '103', '80', '70', '80', '92');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('635', '92', '105', '90', '125', '90', '98');

 
INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('666', '80', '52', '50', '90', '50', '89');


INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('693', '71', '73', '88', '120', '89', '59');


INSERT INTO PokemonStats( PokeNumber, HP, Attack, Defense, SpecialAttack, SpecialDefense, Speed)
 VALUES('703', '50', '50', '150', '50', '150', '50');
 

--Stats--

INSERT INTO Stats(Sid, Stat, Description)
 VALUES('1','HP','Hit Points. Determines how much damage a Pokémon can receive before fainting.');


INSERT INTO Stats(Sid, Stat, Description)
 VALUES('2','Attack','The Attack stat determines how much damage a Pokémon can deal using a physical move.');


INSERT INTO Stats(Sid, Stat, Description)
 VALUES('3','Defense','The Defense stat determines how much damage a Pokémon receives when it is hit with a physical move.');


INSERT INTO Stats(Sid, Stat, Description)
 VALUES('4','Special Attack','The Special Attack stat determines how much damage a Pokémon can deal using a special move.');


INSERT INTO Stats(Sid, Stat, Description)
 VALUES('5','Special Defense','The Special Defense stat determines how much damage a Pokémon receives when it is hit with a special move.');


INSERT INTO Stats(Sid, Stat, Description)
 VALUES('6','Speed','The Speed stat determines how quickly a Pokémon can act in battle.');


--Nature--

INSERT INTO Nature(Nid, Name)
 Values('1','Hardy');


INSERT INTO Nature(Nid, Name)
 Values('2','Lonely');

 
INSERT INTO Nature(Nid, Name)
 Values('3','Brave');

 
INSERT INTO Nature(Nid, Name)
 Values('4','Adamant');

 
INSERT INTO Nature(Nid, Name)
 Values('5','Naughty');


INSERT INTO Nature(Nid, Name)
 Values('6','Bold');

 
INSERT INTO Nature(Nid, Name)
 Values('7','Docile');

 
INSERT INTO Nature(Nid, Name)
 Values('8','Relaxed');

 
INSERT INTO Nature(Nid, Name)
 Values('9','Impish');

 
INSERT INTO Nature(Nid, Name)
 Values('10','Lax');

 
INSERT INTO Nature(Nid, Name)
 Values('11','Timid');

 
INSERT INTO Nature(Nid, Name)
 Values('12','Hasty');

 
INSERT INTO Nature(Nid, Name)
 Values('13','Serious');

 
INSERT INTO Nature(Nid, Name)
 Values('14','Jolly');

 
INSERT INTO Nature(Nid, Name)
 Values('15','Naive');

 
INSERT INTO Nature(Nid, Name)
 Values('16','Modest');

 
INSERT INTO Nature(Nid, Name)
 Values('17','Mild');

 
INSERT INTO Nature(Nid, Name)
 Values('18','Quiet');

 
INSERT INTO Nature(Nid, Name)
 Values('19','Bashful');

 
INSERT INTO Nature(Nid, Name)
 Values('20','Rash');

 
INSERT INTO Nature(Nid, Name)
 Values('21','Calm');

 
INSERT INTO Nature(Nid, Name)
 Values('22','Gentle');

 
INSERT INTO Nature(Nid, Name)
 Values('23','Sassy');

 
INSERT INTO Nature(Nid, Name)
 Values('24','Careful');

 
INSERT INTO Nature(Nid, Name)
 Values('25','Quirky');


--Nature Traits--
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('1', NULL, NULL);


INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('2','2', '3');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('3','2', '6');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('4','2', '4');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('5','2', '5');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('6','3', '2');


INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('7',NULL, NULL);

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('8','3', '6');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('9','3', '4');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('10','3', '5');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('11','6', '2');


INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('12','6', '3');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('13', NULL, NULL);

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('14','6', '4');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('15','6', '5');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('16', '4', '2');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('17', '4', '3');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('18', '4', '6');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('19', NULL, NULL);

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('20', '4', '5');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('21', '5', '2');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('22', '5', '3');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values('23', '5', '6');

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values(24, 5, 4);

 
INSERT INTO NatureTraits(Nid, Bid, Lid)
 Values(25, NULL, NULL);




/*----Stored Procedures--

CREATE OR REPLACE FUNCTION 

---------------------------*/


--Views--

--PokeDex--
CREATE VIEW PokeDex
AS
SELECT 	Pokemon.PokeNumber, Pokemon.Name, Pokemon.Description,
	PokemonStats.Hp, PokemonStats.Attack, PokemonStats.Defense,
	PokemonStats.SpecialAttack, PokemonStats.SpecialDefense, PokemonStats.Speed 
from Pokemon
join PokemonStats
on Pokemon.PokeNumber = PokemonStats.PokeNumber
ORDER BY Pokemon.PokeNumber ASC;

--Nature Table--
CREATE VIEW Natures
AS
SELECT Nature.nid, Nature.name, S1.Stat as RaisedStat, S1.Description as RaisedDescription, S2.Stat as LoweredStat, S2.Description as LoweredDescription
from Nature
left join NatureTraits as N1
on N1.Nid = Nature.Nid
left join Stats as S1
on S1.Sid = N1.Bid
left join Stats as s2
on s2.Sid = N1.Lid

--Element Type Weaknesses--
CREATE VIEW TypeWeaknesses
AS
SELECT ElementType.Name, ElementType2.name as WeakAgainst
from ElementType
left join Weakness as Weakness1
on ElementType.tid = Weakness1.tid
left join ElementType as ElementType2
on ElementType2.tid = Weakness1.wid


--Element Type Resistant--
CREATE VIEW TypeResists
AS
SELECT ElementType.Name, ElementType2.name as Resists
from ElementType
left join Resistance as Resistance1
on ElementType.tid = Resistance1.tid
left join ElementType as ElementType2
on ElementType2.tid = Resistance1.rid


--Element Immune To--
CREATE VIEW Immunity
AS
SELECT ElementType.Name, COALESCE(ElementType2.name,'None') as Immune
from ElementType
left join Immunity as Immunity1
on ElementType.tid = Immunity1.tid
left join ElementType as ElementType2
on ElementType2.tid = Immunity1.iid


--Security--
CREATE ROLE admin;
GRANT SELECT, INSERT, UPDATE
ON ALL TABLES IN SCHEMA PUBLIC
TO admin

CREATE ROLE Users;
GRANT SELECT
ON ALL TABLES IN SCHEMA PUBLIC
TO Users


