BEGIN;
COPY Categories (CategoryId, name, Min_Team_Capacity, Max_Team_Capacity, Max_Team_Number, Category_name) FROM stdin;
1	Men's individual archery	1	1	64	Archery
2	Men's team archery	3	3	12	Archery
3	Women's individual archery	1	1	64	Archery
4	Women's team archery	3	3	12	Archery
11	Men's 3 m springboard diving	1	1	50	Diving
12	Men's 10 m platform diving	1	1	50	Diving
13	Men's synchronised 3 m springboard diving	2	2	25	Diving
14	Men's synchronised 10 m platform diving	2	2	25	Diving
15	Women's 3 m springboard diving	1	1	50	Diving
16	Women's 10 m platform diving	1	1	50	Diving
17	Women's synchronised 3 m springboard diving	2	2	25	Diving
18	Women's synchronised 10 m platform diving	2	2	25	Diving
21	Men's 50 m freestyle swimming	1	1	332	Swimming
22	Men's 100 m freestyle swimming	1	1	332	Swimming
23	Men's 200 m freestyle swimming	1	1	332	Swimming
24	Men's 400 m freestyle swimming	1	1	332	Swimming
25	Men's 1500 m freestyle swimming	1	1	332	Swimming
26	Men's 100 m backstroke swimming	1	1	332	Swimming
27	Men's 200 m backstroke swimming	1	1	332	Swimming
28	Men's 100 m breaststroke swimming	1	1	332	Swimming
29	Men's 200 m breaststroke swimming	1	1	332	Swimming
30	Men's 100 m butterfly swimming	1	1	332	Swimming
31	Men's 200 m butterfly swimming	1	1	332	Swimming
32	Men's 200 m individual medley swimming	1	1	332	Swimming
33	Men's 400 m individual medley swimming	1	1	332	Swimming
34	Men's 4x100 m freestyle relay swimming	4	8	166	Swimming
35	Men's 4x200 m freestyle relay swimming	4	8	166	Swimming
36	Men's 4x100 m medley relay swimming	4	8	166	Swimming
37	Men's 10 km open water swimming	1	1	332	Swimming
38	Women's 50 m freestyle swimming	1	1	332	Swimming
39	Women's 100 m freestyle swimming	1	1	332	Swimming
40	Women's 200 m freestyle swimming	1	1	332	Swimming
41	Women's 400 m freestyle swimming	1	1	332	Swimming
42	Women's 800 m freestyle swimming	1	1	332	Swimming
43	Women's 100 m backstroke swimming	1	1	332	Swimming
44	Women's 200 m backstroke swimming	1	1	332	Swimming
45	Women's 100 m breaststroke swimming	1	1	332	Swimming
46	Women's 200 m breaststroke swimming	1	1	332	Swimming
47	Women's 100 m butterfly swimming	1	1	332	Swimming
48	Women's 200 m butterfly swimming	1	1	332	Swimming
49	Women's 200 m individual medley swimming	1	1	332	Swimming
50	Women's 400 m individual medley swimming	1	1	332	Swimming
51	Women's 4x100 m freestyle relay swimming	4	8	166	Swimming
52	Women's 4x200 m freestyle relay swimming	4	8	166	Swimming
53	Women's 4x100 m medley relay swimming	4	8	166	Swimming
54	Women's 10 km open water swimming	1	1	332	Swimming
55	Duet synchronized swimming	2	2	12	Synchronized swimming
56	Team synchronized swimming	8	9	8	Synchronized swimming
57	Men's water polo	13	13	12	Water polo
58	Women's water polo	13	13	12	Water polo
100	Men's 100 m run	1	1	603	Runs
101	Men's 200 m run	1	1	603	Runs
102	Men's 400 m run	1	1	603	Runs
103	Men's 800 m run	1	1	603	Runs
104	Men's 1500 m run	1	1	603	Runs
105	Men's 5000 m run	1	1	603	Runs
106	Men's 10,000 m run	1	1	603	Runs
107	Men's 110 m hurdles	1	1	603	Runs
108	Men's 400 m hurdles	1	1	603	Runs
109	Men's 3000 m steeplechase	1	1	603	Runs
110	Men's 4x100 m relay run	4	4	201	Runs
111	Men's 4x400 m relay run	4	4	201	Runs
112	Men's marathon	1	1	603	Runs
113	Men's 20 km walk	1	1	603	Runs
114	Men's 50 km walk	1	1	603	Runs
115	Men's long jump	1	1	603	Jumps
116	Men's triple jump	1	1	603	Jumps
117	Men's high jump	1	1	603	Jumps
118	Men's pole vault	1	1	603	Jumps
119	Men's shot put	1	1	603	Throws
120	Men's discus throw	1	1	603	Throws
121	Men's javelin throw	1	1	603	Throws
122	Men's hammer throw	1	1	603	Throws
123	Men's decathlon	1	1	603	Athletics
124	Women's 100 m run	1	1	603	Runs
125	Women's 200 m run	1	1	603	Runs
126	Women's 400 m run	1	1	603	Runs
127	Women's 800 m run	1	1	603	Runs
128	Women's 1500 m run	1	1	603	Runs
129	Women's 5000 m run	1	1	603	Runs
130	Women's 10,000 m run	1	1	603	Runs
131	Women's 100 m hurdles	1	1	603	Runs
132	Women's 400 m hurdles	1	1	603	Runs
133	Women's 3000 m steeplechase	1	1	603	Runs
134	Women's 4x100 m relay run	4	4	201	Runs
135	Women's 4x400 m relay run	4	4	201	Runs
136	Women's marathon	1	1	603	Runs
137	Women's 20 km walk	1	1	603	Runs
138	Women's long jump	1	1	603	Jumps
139	Women's triple jump	1	1	603	Jumps
140	Women's high jump	1	1	603	Jumps
141	Women's pole vault	1	1	603	Jumps
142	Women's shot put	1	1	603	Throws
143	Women's discus throw	1	1	603	Throws
144	Women's javelin throw	1	1	603	Throws
145	Women's hammer throw	1	1	603	Throws
146	Women's heptathlon	1	1	603	Athletics
150	Men's singles badminton	1	1	40	Badminton
151	Men's doubles badminton	2	2	16	Badminton
152	Mixed doubles badminton	2	2	16	Badminton
153	Women's singles badminton	1	1	46	Badminton
154	Women's doubles badminton	2	2	16	Badminton
160	Men's basketball	12	12	12	Basketball
161	Women's basketball	12	12	12	Basketball
170	Men's Light flyweight (49kg) boxing	1	1	26	Boxing
171	Men's Flyweight (52kg) boxing	1	1	26	Boxing
172	Men's Bantamweight (56kg) boxing	1	1	28	Boxing
173	Men's Lightweight (60kg) boxing	1	1	28	Boxing
174	Men's Light welterweight (64kg) boxing	1	1	28	Boxing
175	Men's Welterweight (69kg) boxing	1	1	28	Boxing
176	Men's Middleweight (75kg) boxing	1	1	28	Boxing
177	Men's Light heavyweight (81kg) boxing	1	1	26	Boxing
178	Men's Heavyweight (91kg) boxing	1	1	15	Boxing
179	Men's Super heavyweight (+91kg) boxing	1	1	16	Boxing
180	Women's Flyweight (51kg) boxing	1	1	12	Boxing
181	Women's Lightweight (60kg) boxing	1	1	12	Boxing
182	Women's Middleweight (75kg) boxing	1	1	12	Boxing
\.
COMMIT;


