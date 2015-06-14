BEGIN;
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
COMMIT;


