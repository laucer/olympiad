Projekt bazy danych
Temat: Letnia Olimpiada Sportowa

Autorzy:
	Paweł Balon,
	Lucjan Rosłanowski,
	Aleksandra Nowak,
	Szymon Judasz

Zawartość katalogu:
	plik create.sql - tworzy baze wraz z danymi
	plik diagram.png - schemat bazy danych
	plik clear.sql - usuwa stworzone struktury
	plik README.txt

Opis bazy:
	
	Tabele: 
	people - zawiera informacje startujacych zawodnikach i zawodnikach umieszczonych w tabeli records
	categories - zawiera informacje o kategorii (np. bieg na 100m, box, waga lekka). W skład informacji wchodzi
		max_team_capacity -maksymalna liczność jednej drużyny
		min_team_capacity -minimalna liczność jednej drużyny
		max_team_number - maksymalna dopuszczalna ilość wszystkich drużyn
		max_team_number_per_nationality - maksymalna dopuszczalna ilość drużyn jednej narodowości
		discipline name - nazwa dyscypliny z której wywodzi się dana kategoria 
	disciplines - zawiera informacje o dyscyplinach, w szczególności:
		discipline_name - nazwa dyscypliny
		superdiscipline - nazwa nad-dyscypliny o ile istnieje (null wpp) 
					np. dla biegu na 100m dyscyplina to bieg, nad-dyscyplina to lekkoatletyka 
	records - tabela ze światowymi rekordami
	teams - table z zespołami, w tym dla zawdów indywidualnych team zawodnika to 
			team jednoosobowy złożony z tego zawodnika
		
	competitor_to_team - przejściowa pomiędzy teams a people
	nationalities - narodowości
	team_to_event - przejściowa pomiędzy teams a events
	events - Harmonogram igrzysk, w tym 
			datum - czas wydarzenia
			categoryid - id kategorii której dotyczy wydarzenie
			placeid - id miejsca, w którym odbywa sie wydarzenie
			runde - runda (dozwolone wartości - kolejne potęgi dwojki od 1 (finał) do 16 i 0 (oznacza eliminacje)
	results - tabela z wszystkimi rezultatami danego wydarzenia, w szczegolnosci:
			teamid1 - Nie pusta wartość wskazująca którego teamu dotyczy wynik
			teamid2 - przeciwnik o ile istnieje
			content - zawartość wyniku (wynik główny) w text
			additional_content  - dodatki np. bonusy lub kary dla danego podejścia
			overall_penalties - kara dla całego wyniku
			Judge_decisions - informacje sędziowskie (np dyskwalifikacje etc.)
	decisions - decyzje sędziowskie - skróty przetłumaczone na całe nazwy
	places - id i nazwa miejsca w którym mogą odbywać się zawody
 	events_additional_info - dodatkowe informacje o wydarzeniu takie jak sprawozdanie lub notka sędziowska

	Funkcje:

		Pomocnicze:
		
			Rand_Date(frommm date, tooo date) - zwraca losową date z przedziału [Frommm,tooo)
			Rand_Name() - zwraca losowe imie
			Rand_Surname() - zwraca losowe nazwisko
			Rand_Nationality() - zwraca losowa narodowość (tzn. nazwe)
		
			Create_Individual_And_Assign(p_name text, p_surname text, p_birth_date date, p_sex text, p_nation text, p_weight int, p_height int, p_category text) - tworzy osobę i team; dodaje osobę do tego teamu
			Create_Team(discipline text, VARIADIC players int[]) - dodaje zawodników (competitorid) do teamu dla danej kategorii
									(tu: nazwa discipline oznacza kategorię)
	
		Użytkowe:
			get_Ranking_Teams(category int, type result_type, eid int) - zwraca ranking dla categorii category,
									której typ tesultatu to type, a rozważany event to eid.
									UWAGA: eid ignorowane dla typu resultatu Int%
			get_Winners_of_Category(category int, lim int = 0) - zwraca ranking dla eid = 1 czyli finał ograniczony 
									do limitu lim (0 oznacza brak limitu czyli cały ranking)
			get_Ranking_of_Category(category int,  event int, lim int = 0) - zwraca ranking dla categorii category i
 									danego wydarzenia z limitem lim
		
			get_Ranking_with_People(category int, event int, lim int =0) - zwraca ranking dla categorii category i 
									danego wydarzenia wraz ze wszystkimi uczestnikami teamu
									(w osobnych krotkach) z limitem lim

	Inne: 
	
		Typ Danych result_type:
		
			timeInc - oznacza ze liczy sie największy wynik czasowy (najdłuzszy)
			timeDec - oznacza ze liczy sie najmniejszy wynik czasowy (najkrótszy)
			doubleInc - oznacza ze liczy sie największy wynik punktowy
			doubleDec - oznacza ze liczy sie najmniejszy wynik punktowy
			IntInc - zarezerowany dla rezultatu typu zwyciezca-przegrany oznacza liczbe punktow przyznanych za
				zwyciestwo/remis/przegrana, liczy sie najwyższy wynik
			IntDec - zarezerowany dla rezultatu typu zwyciezca-przegrany oznacza liczbe punktow przyznanych za
				zwyciestwo/remis/przegrana, liczy sie najniższy wynik
			timeAvg - wygrywa najkrótsza średnia z uzyskanych wyników
			doubleAvg - wygrywa największa średnia z uzyskanych wyników



	
		
		
