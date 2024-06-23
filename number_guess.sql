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

DROP DATABASE guessing_game;
--
-- Name: guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guessing_game OWNER TO freecodecamp;

\connect guessing_game

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
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
    game_id integer NOT NULL,
    username character varying(22) NOT NULL,
    guesses integer DEFAULT 0
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;


--
-- Name: game game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game VALUES (1, 'Justin', 1);
INSERT INTO public.game VALUES (2, 'Justin', 111);
INSERT INTO public.game VALUES (3, 'Justin', 2);
INSERT INTO public.game VALUES (4, 'user_1719185571880', 714);
INSERT INTO public.game VALUES (5, 'user_1719185571880', 702);
INSERT INTO public.game VALUES (6, 'user_1719185571879', 60);
INSERT INTO public.game VALUES (7, 'user_1719185571879', 602);
INSERT INTO public.game VALUES (8, 'user_1719185571880', 822);
INSERT INTO public.game VALUES (9, 'user_1719185571880', 305);
INSERT INTO public.game VALUES (10, 'user_1719185571880', 22);
INSERT INTO public.game VALUES (11, 'Justin', 3);
INSERT INTO public.game VALUES (12, 'user_1719185649513', 913);
INSERT INTO public.game VALUES (13, 'user_1719185649513', 851);
INSERT INTO public.game VALUES (14, 'user_1719185649512', 522);
INSERT INTO public.game VALUES (15, 'user_1719185649512', 820);
INSERT INTO public.game VALUES (16, 'user_1719185649513', 786);
INSERT INTO public.game VALUES (17, 'user_1719185649513', 310);
INSERT INTO public.game VALUES (18, 'user_1719185649513', 983);
INSERT INTO public.game VALUES (19, 'user_1719185718523', 339);
INSERT INTO public.game VALUES (20, 'user_1719185718523', 833);
INSERT INTO public.game VALUES (21, 'user_1719185718522', 690);
INSERT INTO public.game VALUES (22, 'user_1719185718522', 242);
INSERT INTO public.game VALUES (23, 'user_1719185718523', 988);
INSERT INTO public.game VALUES (24, 'user_1719185718523', 115);
INSERT INTO public.game VALUES (25, 'user_1719185718523', 669);
INSERT INTO public.game VALUES (26, 'user_1719185738155', 309);
INSERT INTO public.game VALUES (27, 'user_1719185738155', 524);
INSERT INTO public.game VALUES (28, 'user_1719185738154', 116);
INSERT INTO public.game VALUES (29, 'user_1719185738154', 835);
INSERT INTO public.game VALUES (30, 'user_1719185738155', 240);
INSERT INTO public.game VALUES (31, 'user_1719185738155', 889);
INSERT INTO public.game VALUES (32, 'user_1719185738155', 645);
INSERT INTO public.game VALUES (33, 'user_1719185791921', 476);
INSERT INTO public.game VALUES (34, 'user_1719185791921', 729);
INSERT INTO public.game VALUES (35, 'user_1719185791920', 786);
INSERT INTO public.game VALUES (36, 'user_1719185791920', 862);
INSERT INTO public.game VALUES (37, 'user_1719185791921', 581);
INSERT INTO public.game VALUES (38, 'user_1719185791921', 547);
INSERT INTO public.game VALUES (39, 'user_1719185791921', 804);
INSERT INTO public.game VALUES (40, 'user_1719185823360', 679);
INSERT INTO public.game VALUES (41, 'user_1719185823360', 636);
INSERT INTO public.game VALUES (42, 'user_1719185823359', 476);
INSERT INTO public.game VALUES (43, 'user_1719185823359', 186);
INSERT INTO public.game VALUES (44, 'user_1719185823360', 28);
INSERT INTO public.game VALUES (45, 'user_1719185823360', 727);
INSERT INTO public.game VALUES (46, 'user_1719185823360', 323);


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 46, true);


--
-- Name: game game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

