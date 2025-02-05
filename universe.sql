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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_ly integer,
    foo integer,
    bar integer,
    baz integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    foo integer,
    bar integer,
    baz integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population numeric,
    nickname text,
    habitable boolean,
    star_id integer,
    foo integer,
    bar integer,
    baz integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    foo integer,
    bar integer,
    baz integer,
    buzz integer,
    name character varying(30) NOT NULL,
    solar_system_id integer NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_mi integer,
    galaxy_id integer,
    alive boolean,
    foo integer,
    bar integer,
    baz integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 2000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'blorp', 900, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'blorp-2', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'blorp-3', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'blorp-4', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'blorp-5', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'chronos', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'greek guy', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'a', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'b', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'c', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'd', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'e', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'f', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'g', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'h', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'i', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, '1', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, '2', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, '3', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, '4', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, '5', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, '6', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, '7', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'a', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'b', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'c', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'd', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'e', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'f', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'g', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'h', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'i', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (29, '1', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (30, '2', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (31, '3', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (32, '4', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (33, '5', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (34, '6', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (35, '7', 8, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'erf', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'jupiter', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'mars', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'a', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'b', NULL, NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'c', NULL, NULL, NULL, 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'd', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'e', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'f', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'g', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'h', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'i', NULL, NULL, NULL, 1, NULL, NULL, NULL);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 1, 1, 1, 'test', 1);
INSERT INTO public.solar_system VALUES (2, 2, 2, 2, 'test', 2);
INSERT INTO public.solar_system VALUES (3, 3, 3, 3, 'test', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 200, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'blorp-sun', 900, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'sun-2', 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'sun-3', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'magnus', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'idktomanystars', NULL, 6, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 35, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_column_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_column_name UNIQUE (galaxy_id);


--
-- Name: moon unique_column_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_column_name_moon UNIQUE (moon_id);


--
-- Name: planet unique_column_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_column_name_planet UNIQUE (planet_id);


--
-- Name: solar_system unique_column_name_ss; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT unique_column_name_ss UNIQUE (solar_system_id);


--
-- Name: star unique_column_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_column_name_star UNIQUE (star_id);


--
-- Name: star fk_galaxy_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_planet FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

