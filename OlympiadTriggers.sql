
CREATE OR REPLACE FUNCTION team_check() RETURNS  trigger AS 
$team_check$
	BEGIN
	IF TRUE IN (SELECT max_team_number<ALL(SELECT coalesce(count(*),0) FROM teams NATURAL JOIN categories WHERE categoryID = NEW.categoryId AND max_team_number_per_nationality<ALL(SELECT coalesce(count(*),0) FROM teams WHERE nationality = NEW.nationality) FROM ctegories WHERE categoryID = new.categoryId THEN RAISE EXCEPTION 'limit for teams reached'; END IF;
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
	
	IF NOT (coalesce((SELECT nationalityID FROM people WHERE id = NEW.competitor) = (Select nantionalityId FROm teams WHERE teamid = NEW.teamid),true))
	THEN 
	RAISE EXCEPTION 'competitors must be of the same nationality'; END IF;
	END;
	RETURN NEW;
$team_competitor_check$
language plpgsql;


CREATE CONSTRAINT TRIGGER team_competitor_check AFTER INSERT OR UPDATE ON competitor_to_team 
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE team_competitor_check();


CREATE OR REPLACE FUNCTION event_to_discipline() Returns trigger AS
$event_to_discipline$
	BEGIN
		IF coalesce(NEW.categoryID NOT IN (SELECT categoryid FROM events NATURAL JOIN event_to_team NATURAL JOIN teams),true) THEN RAISE EXCEPTION 'categoryid in event must much categoryid in team' END IF;
	END;

$event_to_discipline$ language plpgsql;

CREATE TRIGGER BEFORE UPDATE ON events 
FOR EACH ROW EXECUTE PROCEDURE event_to_discipline();

CREATE OR REPLACE FUNCTION nationality_check() RETURNS trigger AS
$nationality_check$
	DECLARE
	r
	BEGIN
		people P NATURAL JOIN cometitor_to_team C JOIN teams T ON C.teamid = T.teamid
	END;
$nationality_check$


