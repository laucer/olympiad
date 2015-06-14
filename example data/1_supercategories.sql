BEGIN;
--according to wiki's Olympics page
COPY Disciplines (Discipline_Name, SuperDiscipline, ResultType) FROM stdin;
Diving	Aquatics	doubleInc
Swimming	Aquatics	timeDec
Synchronized swimming	Aquatics	doubleInc
Water polo	Aquatics	intInc
Archery	\N	doubleInc
Athletics	\N	doubleInc
Badminton	\N	intInc
Basketball	\N	intInc
Boxing	\N	intInc
Sprint canoeing	Canoeing	timeDec
Slalom canoeing	Canoeing	timeDec
BMX cycling	Cycling	
Mountain biking cycling	Cycling	
Road cycling	Cycling	timeDec
Track cycling	Cycling	timeDec
Dressage equestrian	Equestrian	doubleInc
Eventing equestrian	Equestrian	doubleDec
Jumping equestrian	Equestrian	timeDec
Fencing	\N	intInc
Field hockey	\N	intInc
Football	\N	intInc
Artistic gymnastics	Gymnastics	doubleInc
Rhytmin gymnastics	Gymnastics	doubleInc
Trampoline gymnastics	Gymnastics	doubleInc
Handball	\N	intInc
Judo	\N	intInc
Modern pentathlon	\N	doubleInc
Rowing	\N	timeDec
Sailing	\N	timeDec
Shooting	\N	doubleInc
Table tennis	\N	intInc
Taekwondo	\N	intInc
Tennis	\N	intInc
Triathlon	\N	timeDec
Indoor volleyball	Volleyball	intInc
Beach volleyball	Volleyball	intInc
Weightlifting	\N	doubleInc
Freestyle wrestling	Wrestling	
Greco-Roman wrestling	Wrestling	intInc
Runs	Athletics	timeDec
Jumps	Athletics	doubleInc
Throws	Athletics	doubleInc
\.

COMMIT;
