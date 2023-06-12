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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20),
    speed integer,
    year_of_discovery integer NOT NULL,
    discovered_by character varying(30)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    age integer NOT NULL,
    is_spherical boolean,
    description text
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
    distance_from_planet integer NOT NULL,
    name character varying(20),
    discovery_date date,
    description text
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
    description text,
    is_life boolean,
    main_element character varying(20) NOT NULL,
    name character varying(20)
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
    distance_from_earth numeric,
    mass integer NOT NULL,
    name character varying(20),
    magnitude integer NOT NULL,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Zephyr', 500, 2001, ' Astronomical Union');
INSERT INTO public.asteroid VALUES (2, 'Lyris', 750, 2013, 'Keck Observatory');
INSERT INTO public.asteroid VALUES (3, 'Vesper', 400, 1998, 'Spacewatch');
INSERT INTO public.asteroid VALUES (4, 'Orinoco', 600, 2006, 'Catalina Sky Survey');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 5, false, 'first galaxy');
INSERT INTO public.galaxy VALUES (2, 'canis', 10, true, 'second galaxy');
INSERT INTO public.galaxy VALUES (3, 'cygnus', 15, true, 'third galaxy');
INSERT INTO public.galaxy VALUES (4, 'maffei', 20, false, 'forth galaxy');
INSERT INTO public.galaxy VALUES (5, 'magellanic clouds', 20, false, 'fifth galaxy');
INSERT INTO public.galaxy VALUES (6, 'milky way', 20, true, 'our galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 100, 'Luna', '1900-01-01', 'Earth moon');
INSERT INTO public.moon VALUES (2, 76, 'Io', '1610-08-01', 'Jupiter moon');
INSERT INTO public.moon VALUES (3, 130, 'Europa', '1610-08-08', 'Jupiter moon');
INSERT INTO public.moon VALUES (4, 240, 'Ganymede', '1610-08-01', 'Jupiter moon');
INSERT INTO public.moon VALUES (5, 420, 'Callisto', '1610-07-01', 'Jupiter moon');
INSERT INTO public.moon VALUES (6, 250, 'Titan', '1655-03-25', 'Saturn moon');
INSERT INTO public.moon VALUES (7, 175, 'Enceladus', '1789-08-28', 'Saturn moon');
INSERT INTO public.moon VALUES (8, 275, 'Triton', '1846-10-10', 'Neptune moon');
INSERT INTO public.moon VALUES (9, 90, 'Phobos', '1877-08-17', 'Mars moon');
INSERT INTO public.moon VALUES (10, 140, 'Deimos', '1877-08-12', 'Mars moon');
INSERT INTO public.moon VALUES (11, 300, 'Charon', '1978-06-22', 'Pluto moon');
INSERT INTO public.moon VALUES (12, 95, 'Nereid', '1949-05-01', 'Neptune moon');
INSERT INTO public.moon VALUES (13, 50, 'Mimas', '1789-09-17', 'Saturn moon');
INSERT INTO public.moon VALUES (14, 80, 'Rhea', '1675-12-23', 'Saturn moon');
INSERT INTO public.moon VALUES (15, 110, 'Dione', '1684-03-21', 'Saturn moon');
INSERT INTO public.moon VALUES (16, 120, 'Thetys', '1684-03-21', 'Saturn moon');
INSERT INTO public.moon VALUES (17, 200, 'Hyperion', '1848-09-16', 'Saturn moon');
INSERT INTO public.moon VALUES (18, 150, 'Lapetus', '1671-10-25', 'Saturn moon');
INSERT INTO public.moon VALUES (19, 170, 'Miranda', '1948-02-16', 'Uranus moon');
INSERT INTO public.moon VALUES (20, 60, 'Ariel', '1851-10-24', 'Uranus moon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Blue gas giant', true, 'Hydrogen', 'Aurora');
INSERT INTO public.planet VALUES (2, 'Red tocky planet', false, 'Iron', 'Crimson');
INSERT INTO public.planet VALUES (3, 'Green ocean world', true, 'Oxygen', 'Marina');
INSERT INTO public.planet VALUES (4, 'Yellow desert planet', false, 'Silicon', 'Sahara');
INSERT INTO public.planet VALUES (5, 'Orange volcanic planet', false, 'Magma', 'Inferno');
INSERT INTO public.planet VALUES (6, 'Pink ice planet', false, 'Nitrogen', 'Blush');
INSERT INTO public.planet VALUES (7, 'Brown dwarf planet', false, 'Helium', 'Ember');
INSERT INTO public.planet VALUES (8, 'Purple gas giant', false, 'Methane', 'Orchid');
INSERT INTO public.planet VALUES (9, 'Teal ringed planet', false, 'Carbon', 'Azura');
INSERT INTO public.planet VALUES (10, 'White frozen planet', false, 'Water', 'Alba');
INSERT INTO public.planet VALUES (11, 'Black ocean planet', true, 'Carbon', 'Obsidian');
INSERT INTO public.planet VALUES (12, 'Gold desert planet', false, 'Gold', 'Aureus');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 3.2, 500, 'Alpha Centauri', 1, NULL);
INSERT INTO public.star VALUES (2, 8.7, 1000, 'Betelgeuse', 0, NULL);
INSERT INTO public.star VALUES (3, 5.4, 750, 'Sirius', 2, NULL);
INSERT INTO public.star VALUES (4, 12.1, 120, 'Polaris', 4, NULL);
INSERT INTO public.star VALUES (5, 20.5, 900, 'Vega', 3, NULL);
INSERT INTO public.star VALUES (6, 8.5, 120, 'Altair', 3, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroid asteroid_discovered_by_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_discovered_by_key UNIQUE (discovered_by);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

