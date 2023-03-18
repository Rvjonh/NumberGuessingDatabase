--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 6, 10);
INSERT INTO public.games VALUES (2, 6, 8);
INSERT INTO public.games VALUES (3, 20, 3);
INSERT INTO public.games VALUES (4, 20, 2);
INSERT INTO public.games VALUES (5, 21, 667);
INSERT INTO public.games VALUES (6, 21, 668);
INSERT INTO public.games VALUES (7, 22, 993);
INSERT INTO public.games VALUES (8, 22, 645);
INSERT INTO public.games VALUES (9, 21, 466);
INSERT INTO public.games VALUES (10, 21, 438);
INSERT INTO public.games VALUES (11, 21, 666);
INSERT INTO public.games VALUES (12, 6, 3);
INSERT INTO public.games VALUES (13, 23, 851);
INSERT INTO public.games VALUES (14, 23, 9);
INSERT INTO public.games VALUES (15, 24, 434);
INSERT INTO public.games VALUES (16, 24, 543);
INSERT INTO public.games VALUES (17, 23, 817);
INSERT INTO public.games VALUES (18, 23, 322);
INSERT INTO public.games VALUES (19, 23, 897);
INSERT INTO public.games VALUES (20, 25, 910);
INSERT INTO public.games VALUES (21, 25, 427);
INSERT INTO public.games VALUES (22, 26, 197);
INSERT INTO public.games VALUES (23, 26, 354);
INSERT INTO public.games VALUES (24, 25, 40);
INSERT INTO public.games VALUES (25, 25, 237);
INSERT INTO public.games VALUES (26, 25, 186);
INSERT INTO public.games VALUES (27, 27, 697);
INSERT INTO public.games VALUES (28, 27, 155);
INSERT INTO public.games VALUES (29, 28, 170);
INSERT INTO public.games VALUES (30, 28, 510);
INSERT INTO public.games VALUES (31, 27, 264);
INSERT INTO public.games VALUES (32, 27, 665);
INSERT INTO public.games VALUES (33, 27, 389);
INSERT INTO public.games VALUES (34, 29, 353);
INSERT INTO public.games VALUES (35, 29, 603);
INSERT INTO public.games VALUES (36, 30, 750);
INSERT INTO public.games VALUES (37, 30, 474);
INSERT INTO public.games VALUES (38, 29, 252);
INSERT INTO public.games VALUES (39, 29, 16);
INSERT INTO public.games VALUES (40, 29, 599);
INSERT INTO public.games VALUES (41, 31, 117);
INSERT INTO public.games VALUES (42, 31, 998);
INSERT INTO public.games VALUES (43, 32, 419);
INSERT INTO public.games VALUES (44, 32, 231);
INSERT INTO public.games VALUES (45, 31, 981);
INSERT INTO public.games VALUES (46, 31, 848);
INSERT INTO public.games VALUES (47, 31, 441);
INSERT INTO public.games VALUES (48, 33, 622);
INSERT INTO public.games VALUES (49, 33, 679);
INSERT INTO public.games VALUES (50, 34, 973);
INSERT INTO public.games VALUES (51, 34, 183);
INSERT INTO public.games VALUES (52, 33, 924);
INSERT INTO public.games VALUES (53, 33, 290);
INSERT INTO public.games VALUES (54, 33, 263);
INSERT INTO public.games VALUES (55, 35, 941);
INSERT INTO public.games VALUES (56, 35, 43);
INSERT INTO public.games VALUES (57, 36, 634);
INSERT INTO public.games VALUES (58, 36, 105);
INSERT INTO public.games VALUES (59, 35, 277);
INSERT INTO public.games VALUES (60, 35, 258);
INSERT INTO public.games VALUES (61, 35, 262);
INSERT INTO public.games VALUES (62, 6, 12);
INSERT INTO public.games VALUES (63, 37, 963);
INSERT INTO public.games VALUES (64, 37, 135);
INSERT INTO public.games VALUES (65, 38, 718);
INSERT INTO public.games VALUES (66, 38, 167);
INSERT INTO public.games VALUES (67, 37, 427);
INSERT INTO public.games VALUES (68, 37, 419);
INSERT INTO public.games VALUES (69, 37, 801);
INSERT INTO public.games VALUES (70, 39, 120);
INSERT INTO public.games VALUES (71, 39, 40);
INSERT INTO public.games VALUES (72, 40, 491);
INSERT INTO public.games VALUES (73, 40, 889);
INSERT INTO public.games VALUES (74, 39, 512);
INSERT INTO public.games VALUES (75, 39, 516);
INSERT INTO public.games VALUES (76, 39, 585);
INSERT INTO public.games VALUES (77, 41, 173);
INSERT INTO public.games VALUES (78, 41, 130);
INSERT INTO public.games VALUES (79, 42, 576);
INSERT INTO public.games VALUES (80, 42, 569);
INSERT INTO public.games VALUES (81, 41, 778);
INSERT INTO public.games VALUES (82, 41, 302);
INSERT INTO public.games VALUES (83, 41, 263);
INSERT INTO public.games VALUES (84, 43, 491);
INSERT INTO public.games VALUES (85, 43, 266);
INSERT INTO public.games VALUES (86, 44, 658);
INSERT INTO public.games VALUES (87, 44, 95);
INSERT INTO public.games VALUES (88, 43, 826);
INSERT INTO public.games VALUES (89, 43, 903);
INSERT INTO public.games VALUES (90, 43, 270);
INSERT INTO public.games VALUES (91, 45, 204);
INSERT INTO public.games VALUES (92, 45, 220);
INSERT INTO public.games VALUES (93, 46, 632);
INSERT INTO public.games VALUES (94, 46, 845);
INSERT INTO public.games VALUES (95, 45, 409);
INSERT INTO public.games VALUES (96, 45, 868);
INSERT INTO public.games VALUES (97, 45, 321);
INSERT INTO public.games VALUES (98, 47, 913);
INSERT INTO public.games VALUES (99, 47, 716);
INSERT INTO public.games VALUES (100, 48, 432);
INSERT INTO public.games VALUES (101, 48, 894);
INSERT INTO public.games VALUES (102, 47, 782);
INSERT INTO public.games VALUES (103, 47, 589);
INSERT INTO public.games VALUES (104, 47, 854);
INSERT INTO public.games VALUES (105, 6, 10);
INSERT INTO public.games VALUES (106, 49, 996);
INSERT INTO public.games VALUES (107, 49, 957);
INSERT INTO public.games VALUES (108, 50, 937);
INSERT INTO public.games VALUES (109, 50, 458);
INSERT INTO public.games VALUES (110, 49, 702);
INSERT INTO public.games VALUES (111, 49, 522);
INSERT INTO public.games VALUES (112, 49, 332);
INSERT INTO public.games VALUES (113, 51, 962);
INSERT INTO public.games VALUES (114, 51, 225);
INSERT INTO public.games VALUES (115, 52, 637);
INSERT INTO public.games VALUES (116, 52, 557);
INSERT INTO public.games VALUES (117, 51, 133);
INSERT INTO public.games VALUES (118, 51, 409);
INSERT INTO public.games VALUES (119, 51, 641);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jonh');
INSERT INTO public.users VALUES (2, 'user_1679101550404');
INSERT INTO public.users VALUES (3, 'user_1679101550403');
INSERT INTO public.users VALUES (4, 'user_1679101793413');
INSERT INTO public.users VALUES (5, 'user_1679101793412');
INSERT INTO public.users VALUES (6, 'jonh');
INSERT INTO public.users VALUES (7, 'user_1679102501109');
INSERT INTO public.users VALUES (8, 'user_1679102501108');
INSERT INTO public.users VALUES (9, 'user_1679102593706');
INSERT INTO public.users VALUES (10, 'user_1679102593705');
INSERT INTO public.users VALUES (11, 'user_1679102977162');
INSERT INTO public.users VALUES (12, 'user_1679102977161');
INSERT INTO public.users VALUES (13, 'user_1679103034542');
INSERT INTO public.users VALUES (14, 'user_1679103034541');
INSERT INTO public.users VALUES (15, 'user_1679103130412');
INSERT INTO public.users VALUES (16, 'user_1679103130411');
INSERT INTO public.users VALUES (17, 'user_1679103276242');
INSERT INTO public.users VALUES (18, 'user_1679103276241');
INSERT INTO public.users VALUES (19, 'JONH');
INSERT INTO public.users VALUES (20, 'carlos');
INSERT INTO public.users VALUES (21, 'user_1679104589687');
INSERT INTO public.users VALUES (22, 'user_1679104589686');
INSERT INTO public.users VALUES (23, 'user_1679104718976');
INSERT INTO public.users VALUES (24, 'user_1679104718975');
INSERT INTO public.users VALUES (25, 'user_1679104914819');
INSERT INTO public.users VALUES (26, 'user_1679104914818');
INSERT INTO public.users VALUES (27, 'user_1679104922899');
INSERT INTO public.users VALUES (28, 'user_1679104922898');
INSERT INTO public.users VALUES (29, 'user_1679104982349');
INSERT INTO public.users VALUES (30, 'user_1679104982348');
INSERT INTO public.users VALUES (31, 'user_1679105610804');
INSERT INTO public.users VALUES (32, 'user_1679105610803');
INSERT INTO public.users VALUES (33, 'user_1679105643843');
INSERT INTO public.users VALUES (34, 'user_1679105643842');
INSERT INTO public.users VALUES (35, 'user_1679105726105');
INSERT INTO public.users VALUES (36, 'user_1679105726104');
INSERT INTO public.users VALUES (37, 'user_1679105844394');
INSERT INTO public.users VALUES (38, 'user_1679105844393');
INSERT INTO public.users VALUES (39, 'user_1679105910319');
INSERT INTO public.users VALUES (40, 'user_1679105910318');
INSERT INTO public.users VALUES (41, 'user_1679105995851');
INSERT INTO public.users VALUES (42, 'user_1679105995850');
INSERT INTO public.users VALUES (43, 'user_1679106001874');
INSERT INTO public.users VALUES (44, 'user_1679106001873');
INSERT INTO public.users VALUES (45, 'user_1679106006251');
INSERT INTO public.users VALUES (46, 'user_1679106006250');
INSERT INTO public.users VALUES (47, 'user_1679106018001');
INSERT INTO public.users VALUES (48, 'user_1679106018000');
INSERT INTO public.users VALUES (49, 'user_1679106092250');
INSERT INTO public.users VALUES (50, 'user_1679106092249');
INSERT INTO public.users VALUES (51, 'user_1679106114359');
INSERT INTO public.users VALUES (52, 'user_1679106114358');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 119, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 52, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

