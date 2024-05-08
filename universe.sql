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
    name character varying,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    star_id integer NOT NULL,
    gn character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    planet_id integer NOT NULL,
    mn character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    pn character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    sn character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 500, 750, 1500.75, 'solid', true, true, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy1', 500, 750, 1500.75, 'solid', true, true, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 500, 750, 1500.75, 'solid', true, true, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 500, 750, 1500.75, 'solid', true, true, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 500, 750, 1500.75, 'solid', true, true, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 500, 750, 1500.75, 'solid', true, true, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 500, 750, 1500.75, 'solid', true, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 500, 750, 1500.75, 'solid', true, true, 2, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 500, 750, 1500.75, 'solid', true, true, 3, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 500, 750, 1500.75, 'solid', true, true, 4, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 500, 750, 1500.75, 'solid', true, true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 500, 750, 1500.75, 'solid', true, true, 6, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 500, 750, 1500.75, 'solid', true, true, 7, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 500, 750, 1500.75, 'solid', true, true, 8, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 500, 750, 1500.75, 'solid', true, true, 9, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 500, 750, 1500.75, 'solid', true, true, 10, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 500, 750, 1500.75, 'solid', true, true, 11, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 500, 750, 1500.75, 'solid', true, true, 11, NULL);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'info1', 'lorem impsum');
INSERT INTO public.more_info VALUES (2, 2, 'info2', 'lorem impsum');
INSERT INTO public.more_info VALUES (3, 3, 'info3', 'lorem impsum');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 500, 750, 1500.75, 'solid', true, true, 1, 1, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 500, 750, 1500.75, 'solid', true, true, 2, 2, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 500, 750, 1500.75, 'solid', true, true, 3, 3, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', 500, 750, 1500.75, 'solid', true, true, 4, 4, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', 500, 750, 1500.75, 'solid', true, true, 5, 5, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', 500, 750, 1500.75, 'solid', true, true, 6, 6, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', 500, 750, 1500.75, 'solid', true, true, 6, 7, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', 500, 750, 1500.75, 'solid', true, true, 6, 8, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', 500, 750, 1500.75, 'solid', true, true, 6, 9, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', 500, 750, 1500.75, 'solid', true, true, 6, 10, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', 500, 750, 1500.75, 'solid', true, true, 6, 11, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', 500, 750, 1500.75, 'solid', true, true, 6, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 500, 750, 1500.75, 'solid', true, true, 1, 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', 500, 750, 1500.75, 'solid', true, true, 2, 2, NULL);
INSERT INTO public.star VALUES (3, 'star3', 500, 750, 1500.75, 'solid', true, true, 3, 3, NULL);
INSERT INTO public.star VALUES (4, 'star4', 500, 750, 1500.75, 'solid', true, true, 4, 4, NULL);
INSERT INTO public.star VALUES (5, 'star5', 500, 750, 1500.75, 'solid', true, true, 5, 5, NULL);
INSERT INTO public.star VALUES (6, 'star6', 500, 750, 1500.75, 'solid', true, true, 6, 6, NULL);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (gn);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (mn);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (pn);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (sn);


--
-- Name: star fkey_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkey_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fkey_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fkey_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkey_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkey_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

