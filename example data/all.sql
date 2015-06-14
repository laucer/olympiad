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
BMX cycling	Cycling	timeDec
Mountain biking cycling	Cycling	timeDec
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
Freestyle wrestling	Wrestling	intInc
Greco-Roman wrestling	Wrestling	intInc
Runs	Athletics	timeDec
Jumps	Athletics	doubleInc
Throws	Athletics	doubleInc
\.

COPY Categories (CategoryId, name, Min_Team_Capacity, Max_Team_Capacity, Max_Team_Number, discipline_name, Max_Team_Number_Per_Nationality) FROM stdin;
1	Men's individual archery	1	1	64	Archery	3
2	Men's team archery	3	3	12	Archery	1
3	Women's individual archery	1	1	64	Archery	3
4	Women's team archery	3	3	12	Archery	1
11	Men's 3 m springboard diving	1	1	50	Diving	2
12	Men's 10 m platform diving	1	1	50	Diving	2
13	Men's synchronised 3 m springboard diving	2	2	25	Diving	1
14	Men's synchronised 10 m platform diving	2	2	25	Diving	1
15	Women's 3 m springboard diving	1	1	50	Diving	2
16	Women's 10 m platform diving	1	1	50	Diving	2
17	Women's synchronised 3 m springboard diving	2	2	25	Diving	1
18	Women's synchronised 10 m platform diving	2	2	25	Diving	1
21	Men's 50 m freestyle swimming	1	1	332	Swimming	2
22	Men's 100 m freestyle swimming	1	1	332	Swimming	2
23	Men's 200 m freestyle swimming	1	1	332	Swimming	2
24	Men's 400 m freestyle swimming	1	1	332	Swimming	2
25	Men's 1500 m freestyle swimming	1	1	332	Swimming	2
26	Men's 100 m backstroke swimming	1	1	332	Swimming	2
27	Men's 200 m backstroke swimming	1	1	332	Swimming	2
28	Men's 100 m breaststroke swimming	1	1	332	Swimming	2
29	Men's 200 m breaststroke swimming	1	1	332	Swimming	2
30	Men's 100 m butterfly swimming	1	1	332	Swimming	2
31	Men's 200 m butterfly swimming	1	1	332	Swimming	2
32	Men's 200 m individual medley swimming	1	1	332	Swimming	2
33	Men's 400 m individual medley swimming	1	1	332	Swimming	2
34	Men's 4x100 m freestyle relay swimming	4	8	166	Swimming	1
35	Men's 4x200 m freestyle relay swimming	4	8	166	Swimming	1
36	Men's 4x100 m medley relay swimming	4	8	166	Swimming	1
37	Men's 10 km open water swimming	1	1	332	Swimming	2
38	Women's 50 m freestyle swimming	1	1	332	Swimming	2
39	Women's 100 m freestyle swimming	1	1	332	Swimming	2
40	Women's 200 m freestyle swimming	1	1	332	Swimming	2
41	Women's 400 m freestyle swimming	1	1	332	Swimming	2
42	Women's 800 m freestyle swimming	1	1	332	Swimming	2
43	Women's 100 m backstroke swimming	1	1	332	Swimming	2
44	Women's 200 m backstroke swimming	1	1	332	Swimming	2
45	Women's 100 m breaststroke swimming	1	1	332	Swimming	2
46	Women's 200 m breaststroke swimming	1	1	332	Swimming	2
47	Women's 100 m butterfly swimming	1	1	332	Swimming	2
48	Women's 200 m butterfly swimming	1	1	332	Swimming	2
49	Women's 200 m individual medley swimming	1	1	332	Swimming	2
50	Women's 400 m individual medley swimming	1	1	332	Swimming	2
51	Women's 4x100 m freestyle relay swimming	4	8	166	Swimming	1
52	Women's 4x200 m freestyle relay swimming	4	8	166	Swimming	1
53	Women's 4x100 m medley relay swimming	4	8	166	Swimming	1
54	Women's 10 km open water swimming	1	1	332	Swimming	2
55	Duet synchronized swimming	2	2	12	Synchronized swimming	1
56	Team synchronized swimming	8	9	8	Synchronized swimming	1
57	Men's water polo	13	13	12	Water polo	1
58	Women's water polo	13	13	12	Water polo	1
100	Men's 100 m run	1	1	603	Runs	3
101	Men's 200 m run	1	1	603	Runs	3
102	Men's 400 m run	1	1	603	Runs	3
103	Men's 800 m run	1	1	603	Runs	3
104	Men's 1500 m run	1	1	603	Runs	3
105	Men's 5000 m run	1	1	603	Runs	3
106	Men's 10,000 m run	1	1	603	Runs	3
107	Men's 110 m hurdles	1	1	603	Runs	3
108	Men's 400 m hurdles	1	1	603	Runs	3
109	Men's 3000 m steeplechase	1	1	603	Runs	3
110	Men's 4x100 m relay run	4	4	201	Runs	1
111	Men's 4x400 m relay run	4	4	201	Runs	1
112	Men's marathon	1	1	603	Runs	3
113	Men's 20 km walk	1	1	603	Runs	3
114	Men's 50 km walk	1	1	603	Runs	3
115	Men's long jump	1	1	603	Jumps	3
116	Men's triple jump	1	1	603	Jumps	3
117	Men's high jump	1	1	603	Jumps	3
118	Men's pole vault	1	1	603	Jumps	3
119	Men's shot put	1	1	603	Throws	3
120	Men's discus throw	1	1	603	Throws	3
121	Men's javelin throw	1	1	603	Throws	3
122	Men's hammer throw	1	1	603	Throws	3
123	Men's decathlon	1	1	603	Athletics	3
124	Women's 100 m run	1	1	603	Runs	3
125	Women's 200 m run	1	1	603	Runs	3
126	Women's 400 m run	1	1	603	Runs	3
127	Women's 800 m run	1	1	603	Runs	3
128	Women's 1500 m run	1	1	603	Runs	3
129	Women's 5000 m run	1	1	603	Runs	3
130	Women's 10,000 m run	1	1	603	Runs	3
131	Women's 100 m hurdles	1	1	603	Runs	3
132	Women's 400 m hurdles	1	1	603	Runs	3
133	Women's 3000 m steeplechase	1	1	603	Runs	3
134	Women's 4x100 m relay run	4	4	201	Runs	1
135	Women's 4x400 m relay run	4	4	201	Runs	1
136	Women's marathon	1	1	603	Runs	3
137	Women's 20 km walk	1	1	603	Runs	3
138	Women's long jump	1	1	603	Jumps	3
139	Women's triple jump	1	1	603	Jumps	3
140	Women's high jump	1	1	603	Jumps	3
141	Women's pole vault	1	1	603	Jumps	3
142	Women's shot put	1	1	603	Throws	3
143	Women's discus throw	1	1	603	Throws	3
144	Women's javelin throw	1	1	603	Throws	3
145	Women's hammer throw	1	1	603	Throws	3
146	Women's heptathlon	1	1	603	Athletics	3
150	Men's singles badminton	1	1	40	Badminton	3
151	Men's doubles badminton	2	2	16	Badminton	1
152	Mixed doubles badminton	2	2	16	Badminton	1
153	Women's singles badminton	1	1	46	Badminton	3
154	Women's doubles badminton	2	2	16	Badminton	1
160	Men's basketball	12	12	12	Basketball	1
161	Women's basketball	12	12	12	Basketball	1
170	Men's Light flyweight (49kg) boxing	1	1	26	Boxing	1
171	Men's Flyweight (52kg) boxing	1	1	26	Boxing	1
172	Men's Bantamweight (56kg) boxing	1	1	28	Boxing	1
173	Men's Lightweight (60kg) boxing	1	1	28	Boxing	1
174	Men's Light welterweight (64kg) boxing	1	1	28	Boxing	1
175	Men's Welterweight (69kg) boxing	1	1	28	Boxing	1
176	Men's Middleweight (75kg) boxing	1	1	28	Boxing	1
177	Men's Light heavyweight (81kg) boxing	1	1	26	Boxing	1
178	Men's Heavyweight (91kg) boxing	1	1	15	Boxing	1
179	Men's Super heavyweight (+91kg) boxing	1	1	16	Boxing	1
180	Women's Flyweight (51kg) boxing	1	1	12	Boxing	1
181	Women's Lightweight (60kg) boxing	1	1	12	Boxing	1
182	Women's Middleweight (75kg) boxing	1	1	12	Boxing	1
\.
COPY nationalities (NationalityId, Nationality) FROM stdin;
1	Great Britain
2	United States
3	Russia
4	Australia
5	China
6	Germany
7	France
8	Japan
9	Italy
10	Spain
11	Canada
12	Brazil
13	South Korea
14	Ukraine
15	Poland
16	Jamaica
17	Netherland
18	Trinidad and Tobago
19	The Bahamas
20	Cayman Islands
21	Zambia
22	Antigua and Barbuda
23	Saint Kitts and Nevis
24	Ivory Coast
25	Gambia
\.

COPY Places (Place_name) FROM stdin;
Aquatics Centre
Basketball Arena
BMX Track
Copper Box
Velodrome
Riverbank Arena
Olympic Stadium
Water Polo Arena
ExCeL
Greenwich Park
North Greenwich Arena
Royal Artillery Barracks
All England Lawn Tennis and Croquet Club
Earls Court Exhibition Centre
Horse Guards Parade
Hyde Park
Lord's Cricket Ground
Marathon Course
Wembley Arena
Wembley Stadium
Dorney Lake
Hadleigh Farm
Lee Valley White Water Centre
Weymouth and Portland National Sailing Academy
City of Coventry Stadium
Millennium Stadium
Hampden Park Stadium
Old Trafford Stadium
St James' Park Stadium
\.

COPY People ( Name, Surname, Birth_Date, Sex, NationalityId, Height, Weight) FROM stdin;
Ira	Bbrube	1985-03-07	M	1	175	75
Bhnjamin	Bujchman	1982-01-11	M	1	169	83
Nathanael	Holzes	1985-05-18	M	1	152	72
Heather	Rqvel	1988-08-27	M	1	168	82
Akexis	Oiff	1981-08-12	M	1	159	75
Noah	Bzlt	1986-11-06	M	2	155	86
Chad	Adajoson	1987-06-29	M	2	192	72
Hal	Toulouse-Laut	1982-02-04	M	2	166	85
Bv	Stkin	1986-10-11	M	2	194	86
Alfredo	Cou	1980-06-14	M	2	172	72
Matt	Oxff	1982-04-08	M	3	186	84
Solomon	Vsvaldi	1982-09-17	M	3	199	85
Felton	Fqagonard	1988-10-29	M	3	185	74
Ollie	Duvid	1981-02-14	M	3	182	76
Xio	Cermen	1980-08-30	M	3	174	74
Dianne	Cou	1982-04-03	M	4	165	76
Juan	Beqube	1988-09-07	M	4	172	74
Len	Cdu	1989-08-05	M	4	173	76
Christopher	Berg	1989-06-28	M	4	175	74
Alicja	Cezlnne	1989-04-07	M	4	172	84
Lena	Stracss	1983-09-20	M	5	191	84
Anhel	Oeff	1986-02-02	M	5	182	75
Hai	Bllke	1981-07-04	M	5	176	85
Hrmer	Svein	1982-12-30	M	5	162	94
Len	Cblvin	1980-05-01	M	5	171	88
Alyson	Etg	1981-12-05	M	6	173	75
Ktm	Cgvanaugh	1982-09-23	M	6	195	96
Lce	Ctin	1987-12-03	M	6	182	89
Kfmberly	Nlbkov	1989-01-12	M	6	183	78
At	Nabyov	1984-05-26	M	6	171	85
Ivaac	Chcridn	1982-09-25	M	7	192	74
Aujutine	Adkins	1986-01-13	M	7	183	97
Noah	Vivoldi	1982-09-05	M	7	171	85
Isaias	Narkov	1987-03-17	M	7	192	76
Duryll	Brqtton	1988-02-21	M	7	183	99
Owcar	Cafill	1982-12-14	M	8	171	88
Lio	Kqfka	1987-03-05	M	8	182	72
Xavier	Ocff	1988-06-06	M	8	193	91
Almero	Gjgh	1987-03-31	M	8	171	84
Atelle	Delgadnllo	1984-07-07	M	8	162	78
\.


COPY Teams ( TeamId, CategoryId, Nationality) FROM stdin;
1	100	1
2	100	1
3	100	1
4	101	1
5	101	1
6	100	2
7	100	2
8	100	2
9	101	2
10	101	2
11	100	3
12	100	3
13	100	3
14	101	3
15	101	3
16	100	4
17	100	4
18	100	4
19	101	4
20	101	4
21	100	5
22	100	5
23	100	5
24	101	5
25	101	5
26	100	6
27	100	6
28	100	6
29	101	6
30	101	6
31	100	7
32	100	7
33	100	7
34	101	7
35	101	7
36	100	8
37	100	8
38	100	8
39	101	8
40	101	8
4001	110	1
4002	110	2
4003	110	3
4004	110	4
4005	110	5
4006	110	6
4007	110	7
4008	110	8
101	175	1
102	176	1
103	177	1
104	178	1
105	179	1
106	175	2
107	176	2
108	177	2
109	178	2
110	179	2
111	175	3
112	176	3
113	177	3
114	178	3
115	179	3
116	175	4
117	176	4
118	177	4
119	178	4
120	179	4
121	175	5
122	176	5
123	177	5
124	178	5
125	179	5
126	175	6
127	176	6
128	177	6
129	178	6
130	179	6
131	175	7
132	176	7
133	177	7
134	178	7
135	179	7
136	175	8
137	176	8
138	177	8
139	178	8
140	179	8
201	115	1
202	115	1
203	115	1
206	115	2
207	115	2
208	115	2
211	115	3
212	115	3
213	115	3
216	115	4
217	115	4
218	115	4
221	115	5
222	115	5
223	115	5
226	115	6
227	115	6
228	115	6
231	115	7
232	115	7
233	115	7
236	115	8
237	115	8
238	115	8
\.


COPY competitor_to_team ( CompetitorId, TeamId) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
33	33
34	34
35	35
36	36
37	37
38	38
39	39
40	40
1	4001
2	4001
3	4001
4	4001
6	4002
7	4002
8	4002
9	4002
11	4003
12	4003
13	4003
14	4003
16	4004
17	4004
18	4004
19	4004
21	4005
22	4005
23	4005
24	4005
26	4006
27	4006
28	4006
29	4006
31	4007
32	4007
33	4007
34	4007
36	4008
37	4008
38	4008
39	4008
1	101
2	102
3	103
4	104
5	105
6	106
7	107
8	108
9	109
10	110
11	111
12	112
13	113
14	114
15	115
16	116
17	117
18	118
19	119
20	120
21	121
22	122
23	123
24	124
25	125
26	126
27	127
28	128
29	129
30	130
31	131
32	132
33	133
34	134
35	135
36	136
37	137
38	138
39	139
40	140
1	201
2	202
3	203
6	206
7	207
8	208
11	211
12	212
13	213
16	216
17	217
18	218
21	221
22	222
23	223
26	226
27	227
28	228
31	231
32	232
33	233
36	236
37	237
38	238
\.


COPY Events (EventId, Datum, CategoryId, Placeid, Runde) FROM stdin;
1	'2012-06-06'	100	7	1
2	'2012-06-05'	100	7	2
3	'2012-06-06'	110	7	1
4	'2012-06-05'	110	7	2
5	'2012-06-05'	115	7	1
6	'2012-06-05'	175	9	1
7	'2012-06-05'	175	9	2
8	'2012-06-06'	101	7	1
9	'2012-06-05'	101	7	2
\.


COPY Team_to_Event (TeamId, EventId) FROM stdin;
1	1
2	1
3	1
4	8
5	8
6	1
7	1
8	1
9	8
10	8
11	1
12	1
13	1
14	8
15	8
16	1
17	1
18	1
19	8
20	8
21	1
22	1
23	1
24	8
25	8
26	1
27	1
28	1
29	8
30	8
31	1
32	1
33	1
34	8
35	8
36	1
37	1
38	1
39	8
40	8
4001	3
4002	3
4003	3
4004	3
4005	3
4006	3
4007	3
4008	3
1	2
2	2
3	2
4	9
5	9
6	2
7	2
8	2
9	9
10	9
11	2
12	2
13	2
14	9
15	9
16	2
17	2
18	2
19	9
20	9
21	2
22	2
23	2
24	9
25	9
26	2
27	2
28	2
29	9
30	9
31	2
32	2
33	2
34	9
35	9
36	2
37	2
38	2
39	9
40	9
4001	4
4002	4
4003	4
4004	4
4005	4
4006	4
4007	4
4008	4
101	6
106	6
101	7
106	7
111	7
116	7
201	5
202	5
203	5
206	5
207	5
208	5
211	5
212	5
213	5
216	5
217	5
218	5
221	5
222	5
223	5
226	5
227	5
228	5
231	5
232	5
233	5
236	5
237	5
238	5
\.

COPY decisions (shortcut, decision_name) FROM stdin;
'Q'	'Qualified'
'D'	'Disqualified'
'WJD'	'Winner By Judge Decision'
'W'	'Walkover'
\.

COPY Results (EventId, Team1Id, Team2Id, Content, Additional_Content, Overall_penalties, Judge_decisions) FROM stdin;
1	1	\N	'00:00:09.24'	\N	\N	\N
1	2	\N	'00:00:09.31'	\N	\N	\N
1	6	\N	'00:00:09.32'	\N	\N	\N
1	7	\N	'00:00:09.33'	\N	\N	\N
1	11	\N	'00:00:09.34'	\N	\N	\N
1	12	\N	'00:00:09.45'	\N	\N	\N
1	16	\N	'00:00:09.56'	\N	\N	\N
1	17	\N	'00:00:09.67'	\N	\N	\N
2	1	\N	'00:00:10.24'	\N	\N	'Q'
2	2	\N	'00:00:10.31'	\N	\N	'Q'
2	6	\N	'00:00:10.32'	\N	\N	'Q'
2	7	\N	'00:00:10.33'	\N	\N	'Q'
2	11	\N	'00:00:10.34'	\N	\N	'Q'
2	12	\N	'00:00:10.45'	\N	\N	'Q'
2	16	\N	'00:00:10.56'	\N	\N	'Q'
2	17	\N	'00:00:10.67'	\N	\N	'Q'
2	21	\N	'00:00:11.24'	\N	\N	\N
2	22	\N	'00:00:11.31'	\N	\N	\N
2	26	\N	'00:00:11.32'	\N	\N	\N
2	27	\N	'00:00:11.33'	\N	\N	\N
2	31	\N	'00:00:11.34'	\N	\N	\N
2	32	\N	'00:00:11.45'	\N	\N	\N
2	36	\N	'00:00:11.56'	\N	\N	\N
2	37	\N	'00:00:11.67'	\N	\N	\N
3	4001	\N	'00:00:41.14'	\N	\N	\N
3	4001	\N	'00:00:42.35'	\N	\N	\N
3	4001	\N	'00:00:43.54'	\N	\N	\N
3	4001	\N	'00:00:44.76'	\N	\N	\N
3	4001	\N	'00:00:45.94'	\N	\N	\N
3	4001	\N	'00:00:46.24'	\N	\N	\N
3	4001	\N	'00:00:47.47'	\N	\N	\N
3	4001	\N	'00:00:48.64'	\N	\N	\N
5	201	\N	'6.23'	\N	\N	\N
5	202	\N	'7.26'	\N	\N	\N
5	203	\N	'3.12'	\N	\N	\N
5	206	\N	'4.26'	\N	\N	\N
5	207	\N	'8.12'	\N	\N	\N
5	208	\N	'8.10'	\N	\N	\N
5	211	\N	'8.15'	\N	\N	'D'
5	212	\N	'7.99'	\N	\N	\N
5	213	\N	'8.16'	\N	\N	\N
5	216	\N	'8.33'	\N	\N	\N
5	217	\N	'7.95'	\N	\N	\N
6	101	106	'1'	\N	\N	\N
7	101	111	'3'	\N	\N	\N
7	106	116	'3'	\N	\N	\N
\.


COPY Medals (TeamId, Medal) FROM stdin;
101	1
106	2
111	3
1	1
2	2
6	3
\.

COMMIT;
