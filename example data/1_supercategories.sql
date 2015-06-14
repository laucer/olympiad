BEGIN;
--according to wiki's Olympics page
COPY Super_Categories (Category_name, SuperCategory) FROM stdin;
Diving	Aquatics
Swimming	Aquatics
Synchronized swimming	Aquatics
Water polo	Aquatics
Archery	\N
Athletics	\N
Badminton	\N
Basketball	\N
Boxing	\N
Sprint canoeing	Canoeing
Slalom canoeing	Canoeing
BMX cycling	Cycling
Mountain biking cycling	Cycling
Road cycling	Cycling
Track cycling	Cycling
Dressage equestrian	Equestrian
Eventing equestrian	Equestrian
Jumping equestrian	Equestrian
Fencing	\N
Field hockey	\N
Football	\N
Artistic gymnastics	Gymnastics
Rhytmin gymnastics	Gymnastics
Trampoline gymnastics	Gymnastics
Handball	\N
Judo	\N
Modern pentathlon	\N
Rowing	\N
Sailing	\N
Shooting	\N
Table tennis	\N
Taekwondo	\N
Tennis	\N
Triathlon	\N
Indoor volleyball	Volleyball
Beach volleyball	Volleyball
Weightlifting	\N
Freestyle wrestling	Wrestling
Greco-Roman wrestling	Wrestling
\.
-- items below are mock categories ie they aren't specified on the wiki pages, but it's kind natural
COPY Super_Categories (Category_name, SuperCategory) FROM stdin;
Runs	Athletics
Jumps	Athletics
Throws	Athletics
\.

COMMIT;
