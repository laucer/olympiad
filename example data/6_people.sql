BEGIN;


INSERT INTO People(Name, Surname, Birth_Date, Sex, nationalityId, Height, Weight) VALUES
('Usain', 'Bolt', '21 August 1986' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Jamaica'), 196, 94),
('Yohan', 'Blake' ,'26 December 1989' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Jamaica'), 180,76),
('Justin', 'Gatlin','10 February 1982' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'United States'),185 ,83),
('Ryan', 'Bailey', '13 April 1989', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'United States'), 193 , 82),
('Churandy','Martina' ,'3 July 1984' , 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Netherland'), 178 , 74),
('Richard','Thompson' , '7 June 1985', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Trinidad and Tobago'),188 ,79),
('Asafa', 'Powell', '23 November 1982', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Jamaica'),190 ,88),
('Tyson','Gay' , 'August 9, 1982', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'United States'),180 ,75),

('Adam','Gemili' , '6 October 1993', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Great Britain'),165 ,58),
('Derrick ','Atkins' , '5 January 1984', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'The Bahamas'),180 ,80),
('Justyn','Warner' , 'June 28, 1987', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Canada'),173 ,79),
('Ryota','Yamagata' , '10 June 1992', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Japan'),176 ,67),
('Rondell','Sorrillo' , 'August 9, 1982', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Trinidad and Tobago'),179 ,79),
('Kemar','Hyman' , '11 October 1989', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Cayman Islands'),178 ,74),
('Dwain ','Chambers' , '5 April 1978', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Great Britain'),180 ,91),
('Gerald ','Phiri' , '6 October 1988', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Zambia'),178 ,80),
('Daniel ','Bailey' , '9 September 1986', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Antigua and Barbuda'),179 ,68),
('Antoine ','Adams' , '31 August 1988', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Saint Kitts and Nevis'),180 ,79),
('Su ','Bingtian' , '29 August 1989', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'China'),172 ,65),
('Keston ','Bledman' , '8 March 1988', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Trinidad and Tobago'),183 ,75),
('Ben','Meité' , 'November 11, 1986', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Ivory Coast'),180 ,84),
('Jimmy ','Vicaut' , ' 27 February 1992', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'France'),184 ,76),
('James ','Dasaolu' , '5 September 1987', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Great Britain'),186 ,87),
('Suwaibou  ','Sanneh' , ' 27 February 1992', 'M', (SELECT NationalityId FROM Nationalities WHERE Nationality = 'Gambia'),183 ,80)

;

COMMIT;