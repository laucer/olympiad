
CREATE SEQUENCE person_seq START 1 INCREMENT BY 1;
CREATE SEQUENCE idividual_seq START 1 MAXVALUE 5000 INCREMENT BY 1;
CREATE SEQUENCE team_seq START 5001 MAXVALUE 10000 INCREMENT BY 1;
CREATE SEQUENCE category_seq START 10 INCREMENT BY 10;
CREATE SEQUENCE event_seq START 1 INCREMENT BY 5;

CREATE OR REPLACE FUNCTION rand_date(frommm date, tooo date) returns date AS
$$
	BEGIN
	IF tooo < frommm THEN return null; END IF;
	return frommm + trunc(random()*(tooo - frommm))::int;
	END;
$$
language plpgsql;


CREATE OR REPLACE FUNCTION rand_nationality() returns text AS
$$
	DECLARE
		a text[];
		n1 int;
		res text;
	BEGIN
		a = Array['Russia','Canada','China','United States','Brazil','Australia','India','Argentina','Algeria',
'Democratic Republic of Congo','Saudi Arabia','Iran','Mexico','Peru','Chad','Mali','South Africa','Ethiopia','Egypt',
'Mauritania','Tanzania','Nigeria','Venezuela','Turkey','France','Yemen','Spain','Cameroon','Sweden','Uzbekistan','Finland',
'Vietnam','Japan','Norway','Poland','Italy','United Kingdom','Romania','Ghana','Belarus','Uruguay','Greece','Bulgaria',
'Iceland','Jordan','Portugal','Austria','Germany','Czech Republic','Latvia','Lithuania','Georgia','Croatia','Denmark',
'Netherlands','Switzerland','Estonia','Belgium','Macedonia','Israel','Slovenia','Luxembourg','Saint Vincent and the Grenadies','New Zealand','Hungary','Irlead','Cote d"Ivore','Ukraine'];
		n1 = array_length(A,1);
		
		res = A[trunc(random()*n1)+1];
		return res;
	
	END;
$$
language plpgsql;


CREATE OR REPLACE FUNCTION rand_surname() returns text AS
$$
	DECLARE
		A text[];
		B char[];
		res text;
		n1 int;
		n2 int;
		r int;
	
 	
	BEGIN
		res = '';
		A = Array['Acevedo','Adkins','Adamoson','Abell','Abbott','Amaral','Amaya','Ash','Ashby','Alonzo','Austin',
'Alldir','Bagg', 'Berg', 'Bain','Bair','Berube', 'Bratton', 'Bunchen','Burchman','Baggins','Calvin',
'Chin','Chen','Chan','Cain','Cahill','Chung','Chong','Chu','Conti','Connor','Cavanaugh','Diehl','Doll','Delgadillo',
'Dellinger','Doss','Elliot','Emg','Everett', 'Evans', 'Fagan','Gahey','Fahe', 'Goy','Fahey','Derain','Rodain','Cormen','Rivest','Stein','Ernst','Munch','Gogh','Botticelli','Vermeer','Watteau','Boucher',
'Nattier','Largiller','Charidn','Fife','Futurama','Fuqua','Bolt','Phelps','Fragonard','David','Goya','Gros',
'Ingres','Toulouse-Lautrec','Renoir','Cezanne','Gauguin','Liheti','Holmes','Strauss','Vivaldi','Dore','Rossini',
'Stevenson','Nabkov','Wells','Orwell','Mussorgsky','Kafka','Kowalski','Smith','Schopenhauer','Blake','Ravel','Defoe',
'Nietzsche','Orff','Schmitt'];
		b = Array['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o'
,'p','q','r','s','t','u','v','w','x','y','z'];
		n1 = array_length(A,1);
		n2 = array_length(b,1);
		res = A[trunc(random()*n1)+1];
		r = trunc(random()*(char_length(res)-3))+2;
		res = overlay(res placing b[trunc(random()*n2)+1] from r for 1);
		RETURN res;
	END;
$$
language plpgsql;

CREATE OR REPLACE function rand_name() returns text AS
$$
	DECLARE
		A text[];
		B char[];
		res text;
		n1 int;
		n2 int;
		piv int;
		r int;
 	
	BEGIN
		res = '';
		A = Array['Alvaro','Almero', 'Alfredo','Alo','Ali','Alicja','Ala','Alice','Amber','Alonso','Aaron',
'Abdul','Abel','Adam','Ahmed','Alan','Alexis','August','Augutine','Andy','Anthony','Alysha','Abbie','Adelle',
'Adrianna','Angel','Alyson','Altgarcia','Bea','Becky','Barbar','Bev','Bill','Basil','Bo','Byron','Brandt','Narney',
'Benjamin','Benito','Christopher','Clerence','Cruz','Curt','Clemente','Chad','Chance','Chang','Coy','Cliff','Damion','Dane'
'Denis','Desmond','Duane','Drew','Duncan','Dudley','Darren','Daryll','Diego','Dustin','Derek','Dianne','Doris','Dolores',
'Daphne','Erl','Ad','Elijah','Ezra','Eloy','Eleanor','Eli','Fabian','Felton','Felix','Frankie','Ginger','Gabriel','Gail',
'Gill','Gino','Glenn','Garry','George','Hai','Hal','Hank','Heather','Homer','Harry','Ira','Irvin','Ian','Ivan','Isaac',
'Isaias','Jae','Jan','Jared','Josephine','Joseph','Juan','Jude','Jesus','Jean','Jason','John','Jeremiasz','Ken','Kim','Kimberly',
'King','Kathy','Lucy','Lena','Loon','Lynn','Lio','Lu','Len','Lin','Lee','Leif','Leroy','Lauren','Lawerence','Lane',
'Lionel','Max','Marcel','Michaele','Michale','Michael','Mike','Moshe','Morris','Matt','Nathanael','Nick','Neil','Noah',
'Octavio','Odell','Omar','Olin','Ollie','Oscar','Otis','Pablo','Parkerk','Pete','Paul','Quentin','Randall','Raleigh',
'Rick','Rudolph','Rufus','Usain','Rusty','Sam','Solomon','Sydney','Sylwester','Troll','Scottie','Thad','Tracy',
'Tanner','Tioby','Ti','Thi-Eb','Thep','Theo','Ulysses','Victor','Vince','Wade','Wane','Wall','Wilford','William','Werner','Xavier','Xian','Xio','Xu-cha','Young','Zack','Zacharaiah'];
		b = Array['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o'
,'p','q','r','s','t','u','v','w','x','y','z'];
		n1 = array_length(A,1);
		n2 = array_length(b,1);
		res = A[trunc(random()*n1)+1];
		piv = trunc(random()*4)+1;
		IF piv%3 = 0 then
		r = trunc(random()*(char_length(res)-3))+2;
		res = overlay(res placing b[trunc(random()*n2)+1] from r for 1);
		END IF;
		RETURN res;
	END;
$$
language plpgsql;

CREATE OR REPLACE FUNCTION insert_and_assaign_random_team(competitionid int) returns void as
$$
	DECLARE 
		r record;
		playerid int;
		teamid int;
	BEGIN
		IF NOT (competitionid IN (SELECT CategoryID FROM categories)) THEN RAISE EXCEPTION 'No such category'; END IF;
		teamid = nextval('team_seq');
		FOR r IN SELECT Max_team_Capacity FROM categories WHERE CategoryId = competitionid
		LOOP
			INSERT INTO Teams SELECT teamid, competitionid;
			FOR i IN 1..r.max_team_capacity
			LOOP
				playerid = nextval('person_seq');
				INSERT INTO people SELECT playerid, rand_name(),rand_surname(),rand_date('1970-01-01','1980-12-31'),rand_nationality(),rand_date('1996-01-01',now()::date),NULL;
				INSERT INTO competitor_to_team SELECT playerid,teamid;
		
			END LOOP;
		END LOOP;
	END;
$$
language plpgsql;


