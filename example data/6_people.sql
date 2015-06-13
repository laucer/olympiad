BEGIN;


INSERT INTO People(Name, Surname, Birth_Date, Sex, nationalityId, Height, Weight) VALUES
('Usain', 'Bolt', '21 August 1986' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Jamaica'), 196, 94),
('Yohan', 'Blake' ,'26 December 1989' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Jamaica'), 180,76),
('Justin', 'Gatlin','10 February 1982' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'United States'),185 ,83),
('Ryan', 'Bailey', '13 April 1989', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'United States'), 193 , 82),
('Churandy','Martina' ,'3 July 1984' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Netherland'), 178 , 74),
('Richard','Thompson' , '7 June 1985', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Trinidad and Tobago'),188 ,79),
('Asafa', 'Powell', '23 November 1982', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Jamaica'),190 ,88),
('Tyson','Gay' , 'August 9, 1982', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'United States'),180 ,75)
;

COMMIT;