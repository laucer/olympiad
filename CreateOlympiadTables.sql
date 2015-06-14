CREATE TYPE result_type AS ENUM('timeInc', 'timeDec', 'intInc', 'intDec', 'doubleInc', 'doubleDec', 'timeAvg','doubleAvg');

CREATE TABLE Nationalities(
	NationalityId serial PRIMARY KEY,
	Nationality varchar(100) UNIQUE NOT NULL
);

CREATE TABLE People (
	CompetitorId serial PRIMARY KEY,
    	Name varchar(100) NOT NULL,
    	Surname varchar(100) NOT NULL,
   	Birth_Date date check ((current_timestamp - Birth_date) > interval '14 years') NOT NULL,
	Sex char(1) check(Sex = 'F' OR Sex = 'M'),
	NationalityId int REFERENCES nationalities NOT NULL,
	First_Start date default now() NOT NULL, -- pierwszy wystep w reprezentajcji or slt, potrzebujemy ludzi juz nie startujacych do rekordow
	Last_Start date check(First_start < Last_Start),
	Height int check(Height > 100) NOT NULL,
	Weight int check(Weight > 30) NOT NULL
	

); 

CREATE TABLE Disciplines(
	Discipline_Name varchar(200) PRIMARY KEY,
	SuperDiscipline varchar(200),
	ResultType result_type NOT NULL
);


CREATE TABLE Categories(
	CategoryId int PRIMARY KEY,
	Name varchar(200) NOT NULL,
	Max_Team_Capacity int NOT NULL,
	Min_Team_Capacity int NOT NULL,
	Max_Team_Number int NOT NULL,
	Max_Team_Number_Per_Nationality int NOT NULL,
	Discipline_Name varchar(200) REFERENCES Disciplines(Discipline_Name) NOT NULL, 
	UNIQUE(Name, Discipline_Name)
);



CREATE TABLE Places(
	Placeid serial PRIMARY KEY,
	Place_name varchar(300) NOT NULL
);

CREATE TABLE Events(
	EventId int PRIMARY KEY,
	Datum timestamp NOT NULL, 
	CategoryId int REFERENCES Categories NOT NULL,
	Placeid int NOT NULL REFERENCES places,
	Runde int check(Runde = 1 OR Runde = 2 OR Runde = 4 OR RUNDE = 8 OR RUNDE = 16 OR RUNDE = 0)  NOT NULL
);


CREATE TABLE Teams(
	TeamId int PRIMARY KEY,
	CategoryId int REFERENCES Categories NOT NULL,
	Nationality int REFERENCES Nationalities NOT NULL,
	UNIQUE(TeamID,CategoryId)
);

CREATE TABLE Events_additional_info(
	EventId int REFERENCES Events NOT NULL,
	Content varchar(1500)
);

CREATE TABLE Records(
	CategoryId int REFERENCES Categories, --moze byc null
	Conqueror int REFERENCES People(CompetitorId), --moze byc null
	Datum timestamp NOT NULL,
	Content varchar(150) NOT NULL
	
);

CREATE TABLE Decisions(
	shortcut varchar(3) PRIMARY KEY,
	decision_name varchar(20) NOT NULL
);

CREATE TABLE Results(
	
	EventId int REFERENCES Events NOT NULL,
	Team1Id int REFERENCES Teams(TeamId) NOT NULL,
	Team2Id int REFERENCES Teams(TeamId),
	Content varchar(150),
	Additional_Content varchar(150),
	Overall_penalties varchar(150),
	Judge_decisions varchar(10) check(Judge_decisions = 'Q' OR Judge_decisions = 'D' OR Judge_decisions = 'WJD' OR
Judge_decisions = 'W') REFERENCES Decisions(shortcut)
	
);


CREATE TABLE competitor_to_team (
	CompetitorId int REFERENCES People(CompetitorId) NOT NULL, 
	TeamId int REFERENCES Teams NOT NULL,
	UNIQUE(CompetitorId,TeamID)
 );

CREATE TABLE Team_to_Event(
	TeamId int REFERENCES Teams NOT NULL,
	EventId int REFERENCES Events NOT NULL,
	UNIQUE(TeamId,EventId)
);

CREATE TABLE Medals(
	TeamId int REFERENCES Teams NOT NULL,
	Medal int check(medal = 1 OR medal = 2 OR medal = 3) NOT NULL

);




