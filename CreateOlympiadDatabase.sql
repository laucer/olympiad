
CREATE TYPE result_type AS ENUM('TYP1', 'TYP2', 'WpiszRozsadneNazwyTypow');

CREATE TABLE People (
	Id int PRIMARY KEY,
    Name varchar(100) NOT NULL,
    Surname varchar(100) NOT NULL,
    BirthDate date NOT NULL,
	FirstStart date NOT NULL, -- pierwszy wystep w reprezentajcji or slt, potrzebujemy ludzi juz nie startujacych do rekordow
	LastStart date
);

CREATE TABLE Categories(
	Id int PRIMARY KEY,
	ResultType result_type NOT NULL,
	MaxTeamCapacity int NOT NULL,
	MaxTeamNumber int NOT NULL
);

CREATE TABLE Teams(
	Id int PRIMARY KEY,
	CategoryId int REFERENCES Categories
);

CREATE TABLE Events(
	ID int PRIMARY KEY,
	Datum date NOT NULL, 
	CategoryId int REFERENCES Categories(Id),
	Place varchar(150) NOT NULL,
	Runde int NOT NULL
);

CREATE TABLE EventsAdditionalInfo(
	ID int PRIMARY KEY,
	EventId int REFERENCES Events(Id),
	Content varchar(1500)
);

CREATE TABLE Records(
	CategoryId int REFERENCES Categories(Id),
	Conqueror int REFERENCES People(Id),
	Datum date REFERENCES NOT NULL,
	Content varchar(150) NOT NULL
	
);

CREATE TABLE Results(
	Id int PRIMARY KEY,
	CategoryId int REFERENCES Categories(Id),
	Team1Id int REFERENCES Teams(Id),
	Team2Id int REFERENCES Teams(Id),
	Content varchar(150),
	EventId int REFERENCES Events
);


CREATE TABLE CompetitorToTeam (
	CompetitorId int REFERENCES People(Id), 
	TeamId int REFERENCES Teams(Id)
);

CREATE TABLE TeamToEvent(
	TeamId int REFERENCES Teams(Id),
	EventId int REFERENCES Events(Id)
);