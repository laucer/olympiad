BEGIN;
COPY Category_To_Type (Category_name, ResultType) FROM stdin;
Aquatics	int
Diving	double
Swimming	time
Synchronized swimming	double
Water polo	int
Archery	int
Athletics	int
Badminton	int
Basketball	int
Boxing	int
Runs	time
Jumps	double
Throws	double
\.
COMMIT;




