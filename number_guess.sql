--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess_game;
--
-- Name: number_guess_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess_game OWNER TO freecodecamp;

\connect number_guess_game

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
    game_guesses integer,
    user_id integer
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
    user_name character varying(50)
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

INSERT INTO public.games VALUES (1, 2, 1);
INSERT INTO public.games VALUES (2, 3, 3);
INSERT INTO public.games VALUES (3, 292, 5);
INSERT INTO public.games VALUES (4, 863, 5);
INSERT INTO public.games VALUES (5, 563, 6);
INSERT INTO public.games VALUES (6, 42, 6);
INSERT INTO public.games VALUES (7, 915, 5);
INSERT INTO public.games VALUES (8, 333, 5);
INSERT INTO public.games VALUES (9, 724, 5);
INSERT INTO public.games VALUES (10, 1, 3);
INSERT INTO public.games VALUES (11, 4, 3);
INSERT INTO public.games VALUES (12, 5, 3);
INSERT INTO public.games VALUES (13, 779, 7);
INSERT INTO public.games VALUES (14, 993, 7);
INSERT INTO public.games VALUES (15, 841, 8);
INSERT INTO public.games VALUES (16, 12, 8);
INSERT INTO public.games VALUES (17, 285, 7);
INSERT INTO public.games VALUES (18, 138, 7);
INSERT INTO public.games VALUES (19, 987, 7);
INSERT INTO public.games VALUES (20, 140, 9);
INSERT INTO public.games VALUES (21, 803, 9);
INSERT INTO public.games VALUES (22, 984, 10);
INSERT INTO public.games VALUES (23, 453, 10);
INSERT INTO public.games VALUES (24, 600, 9);
INSERT INTO public.games VALUES (25, 999, 9);
INSERT INTO public.games VALUES (26, 821, 9);
INSERT INTO public.games VALUES (27, 3, 11);
INSERT INTO public.games VALUES (28, 949, 12);
INSERT INTO public.games VALUES (29, 20, 12);
INSERT INTO public.games VALUES (30, 420, 13);
INSERT INTO public.games VALUES (31, 217, 13);
INSERT INTO public.games VALUES (32, 40, 12);
INSERT INTO public.games VALUES (33, 465, 12);
INSERT INTO public.games VALUES (34, 7, 12);
INSERT INTO public.games VALUES (35, 3, 11);
INSERT INTO public.games VALUES (36, 714, 14);
INSERT INTO public.games VALUES (37, 591, 14);
INSERT INTO public.games VALUES (38, 452, 15);
INSERT INTO public.games VALUES (39, 344, 15);
INSERT INTO public.games VALUES (40, 546, 14);
INSERT INTO public.games VALUES (41, 870, 14);
INSERT INTO public.games VALUES (42, 24, 14);
INSERT INTO public.games VALUES (43, 80, 16);
INSERT INTO public.games VALUES (44, 326, 16);
INSERT INTO public.games VALUES (45, 73, 17);
INSERT INTO public.games VALUES (46, 194, 17);
INSERT INTO public.games VALUES (47, 688, 16);
INSERT INTO public.games VALUES (48, 868, 16);
INSERT INTO public.games VALUES (49, 219, 16);
INSERT INTO public.games VALUES (50, 997, 18);
INSERT INTO public.games VALUES (51, 290, 18);
INSERT INTO public.games VALUES (52, 29, 19);
INSERT INTO public.games VALUES (53, 314, 19);
INSERT INTO public.games VALUES (54, 43, 18);
INSERT INTO public.games VALUES (55, 341, 18);
INSERT INTO public.games VALUES (56, 307, 18);
INSERT INTO public.games VALUES (57, 377, 20);
INSERT INTO public.games VALUES (58, 640, 20);
INSERT INTO public.games VALUES (59, 132, 21);
INSERT INTO public.games VALUES (60, 554, 21);
INSERT INTO public.games VALUES (61, 124, 20);
INSERT INTO public.games VALUES (62, 447, 20);
INSERT INTO public.games VALUES (63, 316, 20);
INSERT INTO public.games VALUES (64, 304, 22);
INSERT INTO public.games VALUES (65, 139, 22);
INSERT INTO public.games VALUES (66, 1000, 23);
INSERT INTO public.games VALUES (67, 87, 23);
INSERT INTO public.games VALUES (68, 847, 22);
INSERT INTO public.games VALUES (69, 680, 22);
INSERT INTO public.games VALUES (70, 211, 22);
INSERT INTO public.games VALUES (71, 753, 24);
INSERT INTO public.games VALUES (72, 964, 24);
INSERT INTO public.games VALUES (73, 152, 25);
INSERT INTO public.games VALUES (74, 643, 25);
INSERT INTO public.games VALUES (75, 953, 24);
INSERT INTO public.games VALUES (76, 307, 24);
INSERT INTO public.games VALUES (77, 198, 24);
INSERT INTO public.games VALUES (78, 763, 26);
INSERT INTO public.games VALUES (79, 63, 26);
INSERT INTO public.games VALUES (80, 283, 27);
INSERT INTO public.games VALUES (81, 31, 27);
INSERT INTO public.games VALUES (82, 606, 26);
INSERT INTO public.games VALUES (83, 944, 26);
INSERT INTO public.games VALUES (84, 232, 26);
INSERT INTO public.games VALUES (85, 908, 28);
INSERT INTO public.games VALUES (86, 687, 28);
INSERT INTO public.games VALUES (87, 113, 29);
INSERT INTO public.games VALUES (88, 971, 29);
INSERT INTO public.games VALUES (89, 754, 28);
INSERT INTO public.games VALUES (90, 20, 28);
INSERT INTO public.games VALUES (91, 949, 28);
INSERT INTO public.games VALUES (92, 189, 30);
INSERT INTO public.games VALUES (93, 438, 30);
INSERT INTO public.games VALUES (94, 322, 31);
INSERT INTO public.games VALUES (95, 992, 31);
INSERT INTO public.games VALUES (96, 296, 30);
INSERT INTO public.games VALUES (97, 583, 30);
INSERT INTO public.games VALUES (98, 951, 30);
INSERT INTO public.games VALUES (99, 546, 32);
INSERT INTO public.games VALUES (100, 292, 32);
INSERT INTO public.games VALUES (101, 990, 33);
INSERT INTO public.games VALUES (102, 292, 33);
INSERT INTO public.games VALUES (103, 403, 32);
INSERT INTO public.games VALUES (104, 714, 32);
INSERT INTO public.games VALUES (105, 210, 32);
INSERT INTO public.games VALUES (106, 513, 34);
INSERT INTO public.games VALUES (107, 653, 34);
INSERT INTO public.games VALUES (108, 726, 35);
INSERT INTO public.games VALUES (109, 475, 35);
INSERT INTO public.games VALUES (110, 503, 34);
INSERT INTO public.games VALUES (111, 662, 34);
INSERT INTO public.games VALUES (112, 67, 34);
INSERT INTO public.games VALUES (113, 661, 36);
INSERT INTO public.games VALUES (114, 634, 36);
INSERT INTO public.games VALUES (115, 12, 37);
INSERT INTO public.games VALUES (116, 316, 37);
INSERT INTO public.games VALUES (117, 602, 36);
INSERT INTO public.games VALUES (118, 580, 36);
INSERT INTO public.games VALUES (119, 354, 36);
INSERT INTO public.games VALUES (120, 866, 38);
INSERT INTO public.games VALUES (121, 728, 38);
INSERT INTO public.games VALUES (122, 791, 39);
INSERT INTO public.games VALUES (123, 358, 39);
INSERT INTO public.games VALUES (124, 946, 38);
INSERT INTO public.games VALUES (125, 691, 38);
INSERT INTO public.games VALUES (126, 577, 38);
INSERT INTO public.games VALUES (127, 737, 40);
INSERT INTO public.games VALUES (128, 288, 40);
INSERT INTO public.games VALUES (129, 773, 41);
INSERT INTO public.games VALUES (130, 323, 41);
INSERT INTO public.games VALUES (131, 647, 40);
INSERT INTO public.games VALUES (132, 8, 40);
INSERT INTO public.games VALUES (133, 421, 40);
INSERT INTO public.games VALUES (134, 103, 42);
INSERT INTO public.games VALUES (135, 456, 42);
INSERT INTO public.games VALUES (136, 143, 43);
INSERT INTO public.games VALUES (137, 81, 43);
INSERT INTO public.games VALUES (138, 657, 42);
INSERT INTO public.games VALUES (139, 954, 42);
INSERT INTO public.games VALUES (140, 70, 42);
INSERT INTO public.games VALUES (141, 368, 44);
INSERT INTO public.games VALUES (142, 207, 44);
INSERT INTO public.games VALUES (143, 733, 45);
INSERT INTO public.games VALUES (144, 852, 45);
INSERT INTO public.games VALUES (145, 326, 44);
INSERT INTO public.games VALUES (146, 65, 44);
INSERT INTO public.games VALUES (147, 85, 44);
INSERT INTO public.games VALUES (148, 881, 46);
INSERT INTO public.games VALUES (149, 488, 46);
INSERT INTO public.games VALUES (150, 962, 47);
INSERT INTO public.games VALUES (151, 436, 47);
INSERT INTO public.games VALUES (152, 719, 46);
INSERT INTO public.games VALUES (153, 724, 46);
INSERT INTO public.games VALUES (154, 456, 46);
INSERT INTO public.games VALUES (155, 310, 48);
INSERT INTO public.games VALUES (156, 566, 48);
INSERT INTO public.games VALUES (157, 90, 49);
INSERT INTO public.games VALUES (158, 908, 49);
INSERT INTO public.games VALUES (159, 127, 48);
INSERT INTO public.games VALUES (160, 492, 48);
INSERT INTO public.games VALUES (161, 924, 48);
INSERT INTO public.games VALUES (162, 588, 50);
INSERT INTO public.games VALUES (163, 270, 50);
INSERT INTO public.games VALUES (164, 847, 51);
INSERT INTO public.games VALUES (165, 737, 51);
INSERT INTO public.games VALUES (166, 919, 50);
INSERT INTO public.games VALUES (167, 808, 50);
INSERT INTO public.games VALUES (168, 511, 50);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'klkl');
INSERT INTO public.users VALUES (2, 'f');
INSERT INTO public.users VALUES (3, 'kl');
INSERT INTO public.users VALUES (4, 'KL');
INSERT INTO public.users VALUES (5, 'user_1720968898631');
INSERT INTO public.users VALUES (6, 'user_1720968898630');
INSERT INTO public.users VALUES (7, 'user_1720969167580');
INSERT INTO public.users VALUES (8, 'user_1720969167579');
INSERT INTO public.users VALUES (9, 'user_1720969574821');
INSERT INTO public.users VALUES (10, 'user_1720969574820');
INSERT INTO public.users VALUES (11, 'sd');
INSERT INTO public.users VALUES (12, 'user_1720969740974');
INSERT INTO public.users VALUES (13, 'user_1720969740973');
INSERT INTO public.users VALUES (14, 'user_1720969862661');
INSERT INTO public.users VALUES (15, 'user_1720969862660');
INSERT INTO public.users VALUES (16, 'user_1720970309647');
INSERT INTO public.users VALUES (17, 'user_1720970309646');
INSERT INTO public.users VALUES (18, 'user_1720970319353');
INSERT INTO public.users VALUES (19, 'user_1720970319352');
INSERT INTO public.users VALUES (20, 'user_1720970902811');
INSERT INTO public.users VALUES (21, 'user_1720970902810');
INSERT INTO public.users VALUES (22, 'user_1720970913477');
INSERT INTO public.users VALUES (23, 'user_1720970913476');
INSERT INTO public.users VALUES (24, 'user_1720970965284');
INSERT INTO public.users VALUES (25, 'user_1720970965283');
INSERT INTO public.users VALUES (26, 'user_1720970970681');
INSERT INTO public.users VALUES (27, 'user_1720970970680');
INSERT INTO public.users VALUES (28, 'user_1720970979870');
INSERT INTO public.users VALUES (29, 'user_1720970979869');
INSERT INTO public.users VALUES (30, 'user_1720970989471');
INSERT INTO public.users VALUES (31, 'user_1720970989470');
INSERT INTO public.users VALUES (32, 'user_1720971011080');
INSERT INTO public.users VALUES (33, 'user_1720971011079');
INSERT INTO public.users VALUES (34, 'user_1720971052187');
INSERT INTO public.users VALUES (35, 'user_1720971052186');
INSERT INTO public.users VALUES (36, 'user_1720971057859');
INSERT INTO public.users VALUES (37, 'user_1720971057858');
INSERT INTO public.users VALUES (38, 'user_1720971087310');
INSERT INTO public.users VALUES (39, 'user_1720971087309');
INSERT INTO public.users VALUES (40, 'user_1720971106085');
INSERT INTO public.users VALUES (41, 'user_1720971106084');
INSERT INTO public.users VALUES (42, 'user_1720971125997');
INSERT INTO public.users VALUES (43, 'user_1720971125996');
INSERT INTO public.users VALUES (44, 'user_1720971131541');
INSERT INTO public.users VALUES (45, 'user_1720971131540');
INSERT INTO public.users VALUES (46, 'user_1720971134812');
INSERT INTO public.users VALUES (47, 'user_1720971134811');
INSERT INTO public.users VALUES (48, 'user_1720971137710');
INSERT INTO public.users VALUES (49, 'user_1720971137709');
INSERT INTO public.users VALUES (50, 'user_1720971437622');
INSERT INTO public.users VALUES (51, 'user_1720971437621');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 168, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 51, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

