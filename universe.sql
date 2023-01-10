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
    description text,
    is_spherical boolean,
    bird boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_gid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_gid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_gid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteorite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorite (
    meteorite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.meteorite OWNER TO freecodecamp;

--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteorite_meteorite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteorite_meteorite_id_seq OWNER TO freecodecamp;

--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteorite_meteorite_id_seq OWNED BY public.meteorite.meteorite_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    planet_id integer NOT NULL,
    bird boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mid_seq OWNER TO freecodecamp;

--
-- Name: moon_mid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mid_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    star_id integer NOT NULL,
    bird boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_pid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_pid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_pid_seq OWNER TO freecodecamp;

--
-- Name: planet_pid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_pid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    pourcentage_before_colapse numeric(2,0),
    is_spherical boolean,
    galaxy_id integer,
    bird boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_sid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_sid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_sid_seq OWNER TO freecodecamp;

--
-- Name: star_sid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_sid_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_gid_seq'::regclass);


--
-- Name: meteorite meteorite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite ALTER COLUMN meteorite_id SET DEFAULT nextval('public.meteorite_meteorite_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mid_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_pid_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_sid_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'voilacté', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'endromède', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'scorpion', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'vierge', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'dorado', NULL, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'tucana', NULL, false, NULL);


--
-- Data for Name: meteorite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorite VALUES (1, 'Ido', NULL);
INSERT INTO public.meteorite VALUES (2, 'Pido', NULL);
INSERT INTO public.meteorite VALUES (3, 'Kido', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (2, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (3, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (4, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (5, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (6, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (7, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (8, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (9, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (10, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (11, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (12, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (13, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (14, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (15, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (16, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (17, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (18, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (19, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (20, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (21, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (22, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (23, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (24, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (25, NULL, 1, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercure', NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'terre', NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'mars', NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'venuse', NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'pluton', NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'saturn', NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'ppa', NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'koupa', NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'koukou', NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'flouka', NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'douka', NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'soleil', NULL, false, 1, NULL);
INSERT INTO public.star VALUES (2, 'sopeille', NULL, false, 2, NULL);
INSERT INTO public.star VALUES (3, 'soreille', NULL, false, 2, NULL);
INSERT INTO public.star VALUES (4, 'sofeille', NULL, false, 3, NULL);
INSERT INTO public.star VALUES (5, 'soxeille', NULL, false, 4, NULL);
INSERT INTO public.star VALUES (6, 'soqeille', NULL, false, 5, NULL);
INSERT INTO public.star VALUES (7, 'soteille', NULL, false, 6, NULL);


--
-- Name: galaxy_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_gid_seq', 6, true);


--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteorite_meteorite_id_seq', 3, true);


--
-- Name: moon_mid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mid_seq', 25, true);


--
-- Name: planet_pid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_pid_seq', 12, true);


--
-- Name: star_sid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_sid_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy gali; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT gali UNIQUE (name);


--
-- Name: meteorite meteorite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_pkey PRIMARY KEY (meteorite_id);


--
-- Name: moon mi; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT mi UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet pi; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pi UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star stari; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stari UNIQUE (name);


--
-- Name: meteorite uni; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT uni UNIQUE (name);


--
-- Name: moon moon_plannet_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plannet_i_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
