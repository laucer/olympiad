
CREATE SEQUENCE person_seq START 1 INCREMENT BY 1;
CREATE SEQUENCE idividual_seq START 1 MAXVALUE 5000 INCREMENT BY 1;
CREATE SEQUENCE team_seq START 5001 MAXVALUE 10000 INCREMENT BY 1;
CREATE SEQUENCE category_seq START 10 INCREMENT BY 10;
CREATE SEQUENCE event_seq START 1 INCREMENT BY 5;

CREATE OR REPLACE FUNCTION Rand_Date(frommm date, tooo date) returns date AS
$$
	BEGIN
	IF tooo < frommm THEN return null; END IF;
	return frommm + trunc(random()*(tooo - frommm))::int;
	END;
$$
language plpgsql;


CREATE OR REPLACE FUNCTION Rand_Nationality() returns text AS
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


CREATE OR REPLACE FUNCTION Rand_Surname() returns text AS
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

CREATE OR REPLACE function Rand_Name() returns text AS
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

CREATE OR REPLACE FUNCTION Insert_And_Assaign_Random_Team(competitionid int) returns void as
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

-- this function creates competitor. It takse person's details and discipline and create person, create team and join person to team
-- NOTICE: It the code below: discipline is the most specific kind of activity, like Men's 100 m run
CREATE OR REPLACE FUNCTION Create_Individual_And_Assign(p_name text, p_surname text, p_birth_date date, p_sex text, p_nation text, p_weight int, p_height int, p_category text) returns void as
$$
DECLARE
nation_id int;
person_id int;
team_id int;
cat_id int;
BEGIN
	-- check if sport discipline alread exists
	IF (SELECT COALESCE(count(*), 0) FROM categories c where c.name = p_category) = 0 THEN
		RAISE NOTICE 'Aborting creating person due invalid discipline name';
		RETURN;
		END IF;
	-- check if nationality exists
	IF (SELECT COALESCE(count(*), 0) FROM nationalities n where n.nationality = p_nation) = 0 THEN
		nation_id = nextval('nationalities_nationalityid_seq');
		INSERT INTO nationalities(nationalityid, nationality) VALUES (nation_id, p_nation); END IF;
	nation_id = (SELECT nationalityid FROM nationalities WHERE nationality = p_nation);
	person_id = nextval('people_id_seq');
	INSERT INTO people((competitorid, name, surname, birth_date, sex, nationalityid, height, weight) VALUES(person_id, p_name, p_surname, p_birth_date, p_sex, nation_id, p_height, p_weight);
	team_id = nextval('individual_seq');
	cat_id = (SELECT categoryid FROM categories c WHERE c.name = p_category);
	INSERT INTO teams VALUES(team_id, cat_id, nation_id);
	INSERT INTO competitor_to_team VALUES (person_id, team_id);
END;
$$
language plpgsql;

-- creates team which takes part in discipline(like Men''s 100 m run), takes array of ints:  competitorid's of competitors and join them to the team
-- NOTICE: It the code below: discipline is the most specific kind of activity, like Men's 100 m run 
CREATE OR REPLACE FUNCTION Create_Team(discipline text, VARIADIC players int[]) returns void as
$$
DECLARE
	team_id int;
	cat_id int;
	nation_id int;
	numb int;
BEGIN
	team_id = nextval('team_seq');
	cat_id = (SELECT categoryid from categories c WHERE c.name = discipline);
	nation_id = (SELECT nationalityid from people WHERE people..competitorid = players[1]);
	INSERT INTO teams(teamid, categoryid, nationality) VALUES(team_id, cat_id, nation_id);
	FOREACH numb IN ARRAY players LOOP
		INSERT INTO competitor_to_team(competitorid, teamid) VALUES(numb, team_id);
	END LOOP;
	RETURN;
END;
$$
language plpgsql;

CREATE OR REPLACE FUNCTION get_Ranking_Teams(category int, type result_type, eid int) returns
	table(team int, result text) AS
$$
	DECLARE 
	BEGIN
		IF type = 'doubleInc' THEN
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid, (res-coalesce(overall_penalties::numeric,0)) as rel
		FROM (SELECT teamid, coalesce(max(coalesce(content::numeric,0)+coalesce(additional_content::numeric,0)),0) as res 
		FROM results R JOIN teams ON team1Id = teamid JOIN events E ON E.eventid = R.eventid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') AND E.eventid = eid GROUP BY teamid) AS SUB JOIN results ON team1id = teamid WHERE results.eventid = eid ORDER BY 2 DESC) AS SUB2;
		END IF;

		IF type = 'doubleDec' THEN
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid,  (res+coalesce(overall_penalties::numeric,0)) as rel
		FROM (SELECT  teamid, coalesce(min(coalesce(content::numeric,0)+coalesce(additional_content::numeric,0)),0) as res 
		FROM results R JOIN teams ON team1Id = teamid JOIN events E ON E.eventid = R.eventid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') AND E.eventid = eid GROUP BY teamid) AS SUB JOIN results ON team1id = teamid WHERE results.eventid = eid ORDER BY 2) AS SUB2;
		END IF;

		IF type = 'timeInc' THEN
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid, (res-coalesce(overall_penalties::interval,interval '0')) as rel
		FROM (SELECT teamid, coalesce(max(coalesce(content::interval,interval '0')
+coalesce(additional_content::interval,interval '0')),interval '0') as res
		FROM results R JOIN teams ON team1Id = teamid JOIN events E ON E.eventid = R.eventid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') AND E.eventid = eid GROUP BY teamid) AS SUB JOIN results ON team1id = teamid WHERE results.eventid = eid ORDER BY 2 DESC) AS SUB2;
		END IF;

		IF type = 'timeDec' THEN
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid, (res+coalesce(overall_penalties::interval,interval '0')) as rel 
		FROM (SELECT teamid, coalesce(min(coalesce(content::interval,interval '0')
+coalesce(additional_content::interval,interval '0')),interval '0') as res
		FROM  results R JOIN teams ON team1Id = teamid JOIN events E ON E.eventid = R.eventid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') AND E.eventid = eid GROUP BY teamid) AS SUB JOIN results ON team1id = teamid WHERE results.eventid = eid ORDER BY 2) AS SUB2;	
		END IF;

		IF type = 'intDec' THEN
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid, (res+
coalesce(overall_penalties::int,0)) as rel 
		FROM (SELECT teamid, coalesce(sum(coalesce(content::int,0)+coalesce(additional_content::int,0)),0) as res 
		FROM  results R JOIN teams ON team1Id = teamid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') GROUP BY teamid) AS SUB JOIN results ON team1id = teamid ORDER BY 2) AS SUB2;
		END IF;
		IF type = 'intInc' THEn
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid, (res-
coalesce(overall_penalties::int,0) ) as rel
		 FROM (SELECT teamid, coalesce(sum(coalesce(content::int,0)+coalesce(additional_content::int,0)),0) as res 
		FROM  results R JOIN teams ON team1Id = teamid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') GROUP BY teamid) AS SUB JOIN results ON team1id = teamid ORDER BY 2 DESC) AS SUB2;
		END IF;
		IF type = 'doubleAvg' THEN
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid, (res -
coalesce(overall_penalties::numeric,0) ) as rel
		FROM (SELECT teamid, coalesce(avg(coalesce(content::numeric,0)
+coalesce(additional_content::numeric,0)),0) as res 
		FROM  results R JOIN teams ON team1Id = teamid JOIN events E ON E.eventid = R.eventid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') AND E.eventid = eid  GROUP BY teamid) AS SUB JOIN results ON team1id = teamid WHERE results.eventid = eid ORDER BY 2) AS SUB2;
		END IF;
		IF type = 'timeAvg' THEN
		return QUERY SELECT DISTINCT teamid, rel::text FROM (SELECT teamid, res+coalesce(overall_penalties::interval,interval '0')  as rel
		FROM (SELECT teamid, coalesce(avg(coalesce(content::interval,interval '0')
+coalesce(additional_content::interval,interval '0')),interval'0') as res 
		FROM  results R JOIN teams ON team1Id = teamid JOIN events E ON E.eventid = R.eventid WHERE E.categoryid = category AND (Judge_decisions IS NULL OR Judge_decisions != 'D') AND E.eventid = eid GROUP BY teamid) AS SUB JOIN results ON team1id = teamid WHERE results.eventid = eid ORDER BY 2 DESC) AS SUB2;
		END IF;
	END;

$$ language plpgsql;

CREATE OR REPLACE FUNCTION get_Winners_of_Category(category int, lim int = 0) returns
	table(team int, result text) AS
$$
	BEGIN
		IF lim = 0 THEN 
		RETURN QUERY SELECT * FROM get_Ranking_Teams(category,(SELECT resulttype FROM Disciplines NATURAL JOIN categories WHERE categoryid = category),(SELECT eventid FROM events WHERE runde = 1 AND categoryid = category));
		END IF;
		IF lim>0 THEN
		RETURN QUERY SELECT * FROM get_Ranking_Teams(category,(SELECT resulttype FROM Disciplines NATURAL JOIN categories WHERE categoryid = category),(SELECT eventid FROM events WHERE runde = 1 AND categoryid = category)) LIMIT lim;
		END IF;
	END;

$$ language plpgsql;

CREATE OR REPLACE FUNCTION get_Ranking_of_Category(category int,  event int, lim int = 0) returns
	table(team int, result text) AS
$$
	BEGIN
		IF lim = 0 THEN
		RETURN QUERY SELECT * FROM get_Ranking_Teams(category,(SELECT resulttype FROM Disciplines NATURAL JOIN categories WHERE categoryid = category),event);
		END IF;
		IF lim>0 THEN
		RETURN QUERY SELECT * FROM get_Ranking_Teams(category,(SELECT resulttype FROM Disciplines NATURAL JOIN categories WHERE categoryid = category),event) LIMIT lim;
		END IF;
	END;
	
$$ language plpgsql;

CREATE OR REPLACE FUNCTION get_Ranking_with_People(category int, event int, lim int =0) returns
	table(team int, competitor int, First_name varchar(100), Surname varchar(100),  result text) AS
$$
	BEGIN
		IF lim = 0 THEN
		RETURN QUERY SELECT teamid, P.competitorId, P.name, P.surname, RT.result FROM People P JOIN competitor_to_team CT ON P.competitorId = CT.competitorId JOIN get_Ranking_Teams(category,(SELECT resulttype FROM Disciplines NATURAL JOIN categories WHERE categoryID = category),event) RT ON CT.teamid = RT.team;
		END IF;
		IF lim > 0 THEN
		RETURN QUERY SELECT teamid, competitorId, name, surname, result FROM People P JOIN competitor_to_team CT ON P.competitorId = CT.competitorId JOIN get_Ranking_Teams(category,(SELECT resulttype FROM Disciplines NATURAL JOIN categories WHERE categoryID = category),event) RT ON CT.teamid = RT.team LImit lim;
		END IF;
	END;
$$ language plpgsql;


