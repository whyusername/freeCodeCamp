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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: another_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.another_table (
    another_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    diameter_in_ly integer,
    distance_from_earth numeric(5,0),
    has_life boolean
);


ALTER TABLE public.another_table OWNER TO freecodecamp;

--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.another_table_another_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.another_table_another_table_id_seq OWNER TO freecodecamp;

--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.another_table_another_table_id_seq OWNED BY public.another_table.another_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    diameter_in_ly integer,
    distance_from_earth numeric(5,0),
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    diameter_in_km integer,
    distance_from_earth numeric(5,0),
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    diameter_in_km integer,
    distance_from_earth numeric(5,0),
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    diameter_in_km integer,
    distance_from_earth numeric(5,0),
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: another_table another_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table ALTER COLUMN another_table_id SET DEFAULT nextval('public.another_table_another_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: another_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.another_table VALUES (1, 'Isabell', 'Libero quod voluptas et est voluptatem.', 48994, 81735, true);
INSERT INTO public.another_table VALUES (2, 'Delphia', 'Omnis culpa eum dolor aut et perferendis.', 93795, 77283, true);
INSERT INTO public.another_table VALUES (3, 'Shanny', 'Illo exercitationem amet.', 35571, 54572, true);
INSERT INTO public.another_table VALUES (4, 'Ferne', 'Perspiciatis excepturi autem at quia.', 34811, 17359, false);
INSERT INTO public.another_table VALUES (5, 'Morgan', 'Nesciunt harum soluta officiis molestias praesentium ut optio velit odio.', 56130, 31084, true);
INSERT INTO public.another_table VALUES (6, 'Abby', 'Quam sit quis labore doloremque magnam vel atque voluptatem cupiditate.', 87142, 77397, false);
INSERT INTO public.another_table VALUES (7, 'Niko', 'Vel recusandae modi iure sed et voluptatem est deleniti.', 20604, 95844, true);
INSERT INTO public.another_table VALUES (8, 'Celine', 'Amet dolor blanditiis dolore corrupti harum fuga quidem facilis rerum.', 30294, 86803, true);
INSERT INTO public.another_table VALUES (9, 'Hayley', 'Dolorem error officiis vel.', 73116, 49672, false);
INSERT INTO public.another_table VALUES (10, 'Malcolm', 'Vel aut illum saepe voluptate voluptatem.', 19634, 38581, true);
INSERT INTO public.another_table VALUES (11, 'Hilma', 'Dolores in vero officiis quod qui.', 60836, 83036, false);
INSERT INTO public.another_table VALUES (12, 'Tre', 'Dolor earum omnis quas quis ipsam consequatur qui.', 22285, 10594, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Immanuel', 'Autem consequatur cupiditate.', 19155, 62198, true);
INSERT INTO public.galaxy VALUES (2, 'Elta', 'Cumque fugit corporis.', 92767, 49226, true);
INSERT INTO public.galaxy VALUES (3, 'Laisha', 'Eum non asperiores recusandae molestias reprehenderit consequatur.', 300, 52506, true);
INSERT INTO public.galaxy VALUES (4, 'Denis', 'Non consequatur aut.', 41020, 30645, true);
INSERT INTO public.galaxy VALUES (5, 'Camylle', 'Cumque vero praesentium ea et cupiditate illum tempore.', 41407, 68969, true);
INSERT INTO public.galaxy VALUES (6, 'Jacques', 'Id sed officiis rerum.', 14121, 39867, true);
INSERT INTO public.galaxy VALUES (7, 'Regan', 'Voluptatem aut voluptatem totam mollitia eos quisquam veritatis inventore laboriosam.', 93225, 39948, true);
INSERT INTO public.galaxy VALUES (8, 'Darrell', 'Consectetur deserunt molestias consequatur vel nobis quia.', 99936, 93641, false);
INSERT INTO public.galaxy VALUES (9, 'Rey', 'Et optio et est.', 95581, 24006, true);
INSERT INTO public.galaxy VALUES (10, 'Derek', 'Delectus aut consequuntur minus quo mollitia ducimus ad.', 6644, 94538, false);
INSERT INTO public.galaxy VALUES (11, 'Jacey', 'Sunt quis id repellendus eos.', 87376, 8343, false);
INSERT INTO public.galaxy VALUES (12, 'Kenton', 'Ratione beatae nisi omnis facere enim.', 49116, 99535, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Natalie', 'Maiores soluta fuga et ut ut vel autem quo.', 89600, 53666, false, 1);
INSERT INTO public.moon VALUES (2, 'Omari', 'Nesciunt voluptatem voluptatum.', 48503, 79128, true, 2);
INSERT INTO public.moon VALUES (3, 'Joanie', 'Autem et quia necessitatibus ut quo expedita aspernatur at.', 24490, 743, false, 3);
INSERT INTO public.moon VALUES (4, 'Gaylord', 'Laborum autem libero possimus dignissimos delectus qui et.', 63802, 41688, true, 4);
INSERT INTO public.moon VALUES (5, 'Loma', 'Ad eius aut doloremque.', 62550, 16322, true, 5);
INSERT INTO public.moon VALUES (6, 'Shanna', 'Autem veniam quidem reiciendis consequuntur itaque quidem et dolorum quisquam.', 14442, 73702, false, 6);
INSERT INTO public.moon VALUES (7, 'Pierce', 'Quam deleniti sit ad aperiam exercitationem necessitatibus debitis architecto occaecati.', 47050, 44636, false, 7);
INSERT INTO public.moon VALUES (8, 'Dax', 'Et vero est quo vitae cupiditate nostrum est.', 37331, 29528, true, 8);
INSERT INTO public.moon VALUES (9, 'Joana', 'Et voluptate soluta error autem voluptas dolorem ut.', 78433, 20608, true, 9);
INSERT INTO public.moon VALUES (10, 'Delilah', 'A qui tempora possimus aperiam.', 13628, 31501, true, 10);
INSERT INTO public.moon VALUES (11, 'Lon', 'Vel porro ut quam quos sequi dicta voluptatem officiis aut.', 87979, 30857, false, 11);
INSERT INTO public.moon VALUES (12, 'Lisandro', 'Voluptatibus et ratione error sit dignissimos.', 4973, 7760, true, 12);
INSERT INTO public.moon VALUES (13, 'Everett', 'Ut dolor rerum.', 17888, 62153, false, 1);
INSERT INTO public.moon VALUES (14, 'Glennie', 'Eveniet ut ea.', 62755, 39027, true, 2);
INSERT INTO public.moon VALUES (15, 'Emilio', 'Sequi doloribus perferendis ut eum.', 58488, 52285, false, 3);
INSERT INTO public.moon VALUES (16, 'Bernita', 'In asperiores vero eos porro est consequatur.', 59797, 30189, true, 4);
INSERT INTO public.moon VALUES (17, 'Maxie', 'Ratione delectus saepe eligendi optio repellat.', 49447, 54621, false, 5);
INSERT INTO public.moon VALUES (18, 'Garret', 'Minima voluptas id est quaerat laudantium inventore eos beatae et.', 50489, 53997, true, 6);
INSERT INTO public.moon VALUES (19, 'Rogers', 'Quisquam est sint neque quod.', 93069, 84751, true, 7);
INSERT INTO public.moon VALUES (20, 'Makayla', 'Deserunt dolores qui voluptatem sed ut qui ipsa.', 30798, 68044, false, 8);
INSERT INTO public.moon VALUES (21, 'Naomie', 'Dicta aut dolores dolorem et.', 62615, 86809, true, 9);
INSERT INTO public.moon VALUES (22, 'Georgiana', 'Laborum dolorem quo possimus pariatur distinctio cum ratione vero repellat.', 37537, 62484, false, 10);
INSERT INTO public.moon VALUES (23, 'Bret', 'Vel eum nulla.', 40281, 82801, false, 11);
INSERT INTO public.moon VALUES (24, 'Zella', 'Quis perspiciatis eum laborum.', 94255, 98622, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Holden', 'Architecto accusantium et sit ut magni dicta molestias perferendis.', 42429, 69217, false, 1);
INSERT INTO public.planet VALUES (2, 'Chad', 'Similique ut nisi.', 91362, 10366, true, 2);
INSERT INTO public.planet VALUES (3, 'Rosalind', 'Eos ut in ut deserunt quod sapiente cum.', 97872, 69082, true, 3);
INSERT INTO public.planet VALUES (4, 'Mariah', 'Autem illum et officiis consectetur consequatur magni error magni distinctio.', 79884, 88261, true, 4);
INSERT INTO public.planet VALUES (5, 'Catharine', 'Nulla saepe neque velit et tempora voluptate ipsa vitae.', 98510, 85513, false, 5);
INSERT INTO public.planet VALUES (6, 'Dillan', 'Et accusamus nam aliquam.', 89240, 3174, true, 6);
INSERT INTO public.planet VALUES (7, 'Jerad', 'Quia modi quia eos.', 94241, 62000, false, 7);
INSERT INTO public.planet VALUES (8, 'Name', 'Quibusdam tempore fugit iste.', 41977, 69890, true, 8);
INSERT INTO public.planet VALUES (9, 'Amiya', 'Alias odit optio iusto.', 47462, 55368, true, 9);
INSERT INTO public.planet VALUES (10, 'Carroll', 'Consectetur neque quia quibusdam et nesciunt.', 46042, 59264, true, 10);
INSERT INTO public.planet VALUES (11, 'Anjali', 'Perferendis rerum nisi.', 3543, 33782, false, 11);
INSERT INTO public.planet VALUES (12, 'Malachi', 'Rerum est in nam.', 19046, 56728, true, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alaina', 'Delectus autem placeat quia exercitationem sequi consequatur aut.', 53680, 19849, true, 1);
INSERT INTO public.star VALUES (2, 'Brennon', 'Laudantium minima hic culpa totam voluptatem excepturi alias voluptates incidunt.', 73178, 2218, true, 2);
INSERT INTO public.star VALUES (3, 'Sigrid', 'Voluptates exercitationem distinctio autem labore facilis.', 17719, 62012, false, 3);
INSERT INTO public.star VALUES (4, 'Arlie', 'Sint molestiae fugit et.', 42998, 59246, false, 4);
INSERT INTO public.star VALUES (5, 'Loren', 'Aut odit doloremque exercitationem perspiciatis cupiditate corrupti corrupti adipisci repellendus.', 84970, 2199, false, 5);
INSERT INTO public.star VALUES (6, 'Yasmeen', 'Eum consequuntur qui impedit perferendis possimus voluptas est soluta maiores.', 69599, 33156, false, 6);
INSERT INTO public.star VALUES (7, 'Carmen', 'Animi et omnis voluptatem.', 18259, 15518, true, 7);
INSERT INTO public.star VALUES (8, 'Trenton', 'Doloribus commodi ex perspiciatis sint fugit quia.', 66663, 83432, true, 8);
INSERT INTO public.star VALUES (9, 'Retha', 'A excepturi omnis laboriosam accusamus explicabo.', 3177, 64686, false, 9);
INSERT INTO public.star VALUES (10, 'Troy', 'Dolores ducimus autem.', 91088, 13396, false, 10);
INSERT INTO public.star VALUES (11, 'Newell', 'Quam laborum corporis dolorum adipisci ut voluptate.', 36609, 12052, false, 11);
INSERT INTO public.star VALUES (12, 'Colt', 'Odio recusandae necessitatibus et quaerat perspiciatis error et.', 79914, 12386, false, 12);


--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.another_table_another_table_id_seq', 12, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: another_table another_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_name_key UNIQUE (name);


--
-- Name: another_table another_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_pkey PRIMARY KEY (another_table_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

