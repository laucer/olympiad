
CREATE OR REPLACE FUNCTION team_check() RETURNS  trigger AS 
$team_check$
	BEGIN
	IF (SELECT max_team_number<ALL(SELECT coalesce(count(*),0) FROM teams NATURAL JOIN categories WHERE categoryID = NEW.categoryId) FROM categories WHERE categoryID = new.categoryid) THEN RAISE EXCEPTION 'limit for teams reached';
	END IF;
	IF (SELECT max_team_number_per_nationality<ALL(SELECT coalesce(count(*),0) FROM teams WHERE nationality = NEW.nationality AND categoryID = new.categoryid) FROM categories WHERE categoryID = new.categoryId)
	THEN RAISE EXCEPTION 'limit for teams of this nationality reached'; 
	END IF;
	RETURN NEW;
	END;
$team_check$
LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER team_check AFTER INSERT ON teams
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE team_check();

CREATE OR REPLACE FUNCTION team_competitor_check() RETURNS trigger AS
$team_competitor_check$
	
	BEGIN
	IF TRUE IN (SELECT min_team_capacity>ALL(SELECT coalesce(count(*),0) FROM competitor_to_team WHERE NEW.teamid = teamid) FROM (SELECT min_team_capacity FroM categories NATURAL JOIN teams WHERE teamid = NEW.teamid) AS SUB ) THEN RAISE EXCEPTION 'too few competitors'; END IF;
	IF TRUE IN (SELECT max_team_capacity<ALL(SELECT coalesce(count(*),0) FROM competitor_to_team WHERE NEW.teamid = teamid) FROM (SELECT max_team_capacity FroM categories NATURAL JOIN teams WHERE teamid = NEW.teamid) AS SUB ) THEN RAISE EXCEPTION 'limit for competitors in team reached'; END IF;
	RETURN NEW;
	END;

$team_competitor_check$
language plpgsql;


CREATE CONSTRAINT TRIGGER team_competitor_check AFTER INSERT OR UPDATE ON competitor_to_team 
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE team_competitor_check();

CREATE OR REPLACE FUNCTION event_to_discipline_event() Returns trigger AS
$event_to_discipline_event$
	DECLARE 
	r record;
	BEGIN
		FOR r in SELECT T.categoryid FROM events E NATURAL JOIN team_to_event TE JOIN teams T ON TE.teamid = T.teamid WHERE eventid = NEW.eventid
		LOOP
		IF NOT coalesce( New.categoryid = r.categoryid,true) THEN RAISE EXCEPTION 'categoryid in event must match categoryid in team'; END IF;
		END LOOP;
		RETURN NEW;
	
	END;

$event_to_discipline_event$ language plpgsql;

CREATE OR REPLACE FUNCTION event_to_discipline_te() Returns trigger AS
$event_to_discipline_te$
	DECLARE 
	r record;
	BEGIN
		FOR r in SELECT categoryid FROM events WHERE eventid = NEW.eventid
		LOOP
		IF NOT coalesce( (r.categoryid IN (SELECT categoryid FROM team_to_event NATURAL JOIN teams T WHERE T.teamid = NEW.teamid)),true) THEN RAISE EXCEPTION 'categoryid in event must match categoryid in team'; END IF;
		END LOOP;
		RETURN NEW;
	
	END;

$event_to_discipline_te$ language plpgsql;

CREATE OR REPLACE FUNCTION event_to_discipline_teams() Returns trigger AS
$event_to_discipline_teams$
	DECLARE 
	r record;
	BEGIN
		FOR r in SELECT E.categoryid FROM teams T NATURAL JOIN team_to_event TE JOIN events E ON TE.eventid = E.eventid WHERE T.teamid= NEW.teamid
		LOOP
		IF NOT coalesce( New.categoryid = r.categoryid,true) THEN RAISE EXCEPTION 'categoryid in event must match categoryid in team'; END IF;
		END LOOP;
		RETURN NEW;
	
	END;

$event_to_discipline_teams$ language plpgsql;

CREATE CONSTRAINT TRIGGER event_to_discipline_event AFTER INSERT OR UPDATE ON events 
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE event_to_discipline_event();

CREATE CONSTRAINT TRIGGER event_to_discipline_te AFTER INSERT OR UPDATE ON team_to_event
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE event_to_discipline_te();

CREATE CONSTRAINT TRIGGER event_to_discipline_teams AFTER INSERT OR UPDATE ON teams
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE event_to_discipline_teams();

CREATE OR REPLACE FUNCTION nationality_check_people() RETURNS trigger AS
$nationality_check_people$
	DECLARE
	r record;
	BEGIN
		FOR r  IN SELECT nationality FROM people P NATURAL JOIN competitor_to_team C JOIN teams T ON C.teamid = T.teamid WHERE competitorid = NEW.competitorid LOOP
		IF NOT coalesce( NEW.nationalityid = r.nationality,true)
		THEN RAISE EXCEPTION 'team and competitors must be of the same nationality'; END IF;
		END LOOP;
		RETURN NEW;
	END;
$nationality_check_people$ language plpgsql;

CREATE OR REPLACE FUNCTION nationality_check_ct() RETURNS trigger AS
$nationality_check_ct$
	DECLARE
	r record;
	BEGIN
		FOR r IN SELECT nationalityid FROM people WHERE competitorid = NEW.competitorid
		LOOP
			IF NOT coalesce( r.nationalityid IN (SELECT nationality FROM competitor_to_team C JOIN teams T ON C.teamid = T.teamid WHERE T.teamid = NEW.teamid AND competitorid = NEW.competitorid),true)
		THEN RAISE EXCEPTION 'team and competitors must be of the same nationality'; END IF;
		RETURN NEW;
		END LOOP;
	END;
$nationality_check_ct$ language plpgsql;


CREATE OR REPLACE FUNCTION nationality_check_teams() RETURNS trigger AS
$nationality_check_teams$
	DECLARE
	r record;
	BEGIN
		FOR r IN (SELECT nationalityid FROM people P NATURAL JOIN competitor_to_team C JOIN teams T ON C.teamid = T.teamid WHERE T.teamid = NEW.teamid) LOOP
		IF NOT coalesce( NEW.nationality = r.nationalityid,true)
		THEN RAISE EXCEPTION 'team and competitors must be of the same nationality'; END IF;
		END LOOP;
		RETURN NEW;
	END;
$nationality_check_teams$ language plpgsql;

CREATE CONSTRAINT TRIGGER nationality_check_people AFTER INSERT OR UPDATE ON people
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE nationality_check_people();

CREATE CONSTRAINT TRIGGER nationality_check_ct AFTER INSERT OR UPDATE ON competitor_to_team
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE nationality_check_ct();

CREATE CONSTRAINT TRIGGER nationality_check_teams AFTER INSERT OR UPDATE ON teams
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE nationality_check_teams();


CREATE OR REPLACE FUNCTION sex_check() RETURNS TRIGGER AS
$sex_check$
	DECLARE 
	r record;
	BEGIN
		FOR r in SELECT sex,C.name as n FROM people  NATURAL JOIN competitor_to_team NATURAL JOIN teams T JOIN categories C ON T.categoryid = C.categoryid WHERE competitorid = NEW.competitorID AND T.teamid = NEW.teamid
		LOOP
			IF r.sex = 'M' AND r.n LIKE 'Women%' THEN RAISE EXCEPtiON 'This is a discipline for women';
			END IF;
			IF r.sex = 'F' AND r.n LIKE 'Men%' THEN RAISE EXCEPTION 'This is a discipline for men';
			END IF;	
		END LOOP;
		RETURN NEW;
		
	END;
$sex_check$ language plpgsql;

CREATE TRIGGER sex_check AFTER INSERT OR UPDATE ON competitor_to_team
FOR EACH ROW EXECUTE PROCEDURE sex_check();

CREATE OR REPLACE FUNCTION team_not_empty() RETURNS TRIGGER AS 
$team_not_empty$
	BEGIN 
		IF 1>ALL(SELECT coalesce(count(*),0) FROM competitor_to_team WHERE teamid = NEW.teamid)
		THEN RAISE EXCEPTION 'team cannot be empty';
		END IF;
		RETURN NEW;
		
	END;
$team_not_empty$ language plpgsql;

CREATE CONSTRAINT TRIGGER team_not_empty AFTER INSERT OR UPDATE ON teams
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE team_not_empty();

CREATE OR REPLACE FUNCTION data_type_check() RETURNS TRIGGER AS
$data_type_check$
		DECLARE
		r record;
		t1 text;
		t2 text;
		t3 text;
		BEGIN
		t1 = NEW.content;
		t2 = NEW.additional_content;
		t3 = NEW.overall_penalties;
		FOR r IN (SELECT resulttype FROM results NATURAL JOIN events NATURAL JOIN categories NATURAL JOIN category_to_type WHERE eventid = NEW.eventid)
		LOOP
			IF r.resulttype = 'doubleInc' THEN PERFORM t1::numeric; PERFORM t2::numeric; PERFORM t3::numeric; END IF;
			IF r.resulttype = 'intInc' THEN PERFORM t1::int; PERFORM t2::int; PERFORM t3::int; END IF;
			IF r.resulttype = 'doubleDec'THEN PERFORM t1::numeric; PERFORM t2::numeric; PERFORM t3::numeric; END IF;
			IF r.resulttype = 'intDec' THEN PERFORM t1::int; PERFORM t2::int; PERFORM t3::int; END IF;
			IF r.resulttype = 'timeInc' THEN PERFORM t1::interval; PERFORM t2::interval; PERFORM t3::interval; END IF; 
			IF r.resulttype = 'timeDec' THEN PERFORM t1::interval; PERFORM t2::interval; PERFORM t3::interval; END IF; 
		END LOOP;
		RETURN NEW;
		EXCEPTION
	 		WHEN others THEN RAISE NOTICE 'content does not match result type';
			RETURN NULL;
		END;
$data_type_check$ language plpgsql;

CREATE TRIGGER data_type_check BEFORE INSERT OR UPDATE ON results 
FOR EACH ROW EXECUTE PROCEDURE data_type_check();

 

