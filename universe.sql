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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    orbital_period integer,
    composition text,
    is_visible boolean
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_type character varying(30),
    distance_from_earth numeric
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_id integer
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    star_id integer
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley is Comet', 1, 76, 'Ice and dust', true);
INSERT INTO public.comet VALUES (2, 'Comet Hale-Bopp', 1, 2380, 'Ice and dust', true);
INSERT INTO public.comet VALUES (4, 'Comet McNaught', 1, 585, 'Ice and dust', true);
INSERT INTO public.comet VALUES (5, 'Comet Hyakutake', 2, 12067, 'Ice and dust', true);
INSERT INTO public.comet VALUES (6, 'Comet ISON', 1, 356, 'Ice and dust', true);
INSERT INTO public.comet VALUES (3, 'Comet Lovejoy', 2, 1212, 'Ice and dust', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13000, 'Spiral', 25000.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', 22000, 'Spiral', 2200000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy', 5000, 'Spiral', 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical galaxy', 12000, 'Elliptical', 11000000.00);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy with a prominent dust lane', 20000, 'Spiral', 31000000.00);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Interacting spiral galaxies', 15000, 'Spiral', 37000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth is natural satellite', false, true, 4500, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Moon of Mars', false, true, 4000, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Moon of Mars', false, true, 4000, 2);
INSERT INTO public.moon VALUES (4, 'Charon', 'Moon of Pluto', false, true, 4800, 10);
INSERT INTO public.moon VALUES (5, 'Europa', 'Moon of Jupiter', false, true, 7000, 7);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Moon of Jupiter', false, true, 7000, 7);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Moon of Jupiter', false, true, 7000, 7);
INSERT INTO public.moon VALUES (8, 'Titan', 'Moon of Saturn', false, true, 6000, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Moon of Saturn', false, true, 6000, 8);
INSERT INTO public.moon VALUES (10, 'Triton', 'Moon of Neptune', false, true, 5500, 9);
INSERT INTO public.moon VALUES (11, 'Nereid', 'Moon of Neptune', false, true, 5500, 9);
INSERT INTO public.moon VALUES (12, 'Luna', 'Moon of Kepler-186f', false, true, 4000, 11);
INSERT INTO public.moon VALUES (13, 'Phosphorus', 'Moon of Kepler-186f', false, true, 4000, 11);
INSERT INTO public.moon VALUES (14, 'Sirius Bb Moon 1', 'Moon of Sirius Bb', false, true, 3000, 4);
INSERT INTO public.moon VALUES (15, 'Sirius Bb Moon 2', 'Moon of Sirius Bb', false, true, 3000, 4);
INSERT INTO public.moon VALUES (16, 'Alpha Centauri Ab Moon 1', 'Moon of Alpha Centauri Ab', false, true, 2500, 5);
INSERT INTO public.moon VALUES (17, 'Alpha Centauri Ab Moon 2', 'Moon of Alpha Centauri Ab', false, true, 2500, 5);
INSERT INTO public.moon VALUES (18, 'Alpha Centauri Ab Moon 3', 'Moon of Alpha Centauri Ab', false, true, 2500, 5);
INSERT INTO public.moon VALUES (19, 'Venus Moon 1', 'Moon of Venus', false, true, 5000, 6);
INSERT INTO public.moon VALUES (20, 'Venus Moon 2', 'Moon of Venus', false, true, 5000, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Third planet from the Sun', true, true, 4500, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Fourth planet from the Sun', false, true, 4000, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 'Exoplanet orbiting Proxima Centauri', false, true, 2000, 2);
INSERT INTO public.planet VALUES (4, 'Sirius Bb', 'Exoplanet orbiting Sirius', false, true, 3000, 4);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Ab', 'Exoplanet orbiting Alpha Centauri', false, true, 2500, 6);
INSERT INTO public.planet VALUES (6, 'Venus', 'Second planet from the Sun', false, true, 5000, 1);
INSERT INTO public.planet VALUES (7, 'Jupiter', 'Fifth planet from the Sun', false, true, 7000, 1);
INSERT INTO public.planet VALUES (8, 'Saturn', 'Sixth planet from the Sun', false, true, 6000, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Eighth planet from the Sun', false, true, 5500, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Dwarf planet in our solar system', false, true, 4800, 1);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 'Exoplanet in the habitable zone of its star', false, true, 4000, 2);
INSERT INTO public.planet VALUES (12, 'HD 189733b', 'Hot gas giant exoplanet', false, true, 3000, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', true, true, 4600, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Nearest star to the Sun', false, false, 6000, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant in the constellation Orion', false, false, 8000, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'Brightest star in the night sky', false, false, 2500, 2);
INSERT INTO public.star VALUES (5, 'Polaris', 'North Star', false, false, 7000, 3);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 'Closest star system to the Sun', false, false, 4000, 2);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: comet fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

