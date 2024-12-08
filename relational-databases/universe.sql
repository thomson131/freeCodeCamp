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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: extra_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_info (
    reference_id integer NOT NULL,
    info_dump text NOT NULL,
    name character varying(40),
    extra_info_id integer NOT NULL
);


ALTER TABLE public.extra_info OWNER TO freecodecamp;

--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_info_extra_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_info_extra_info_id_seq OWNER TO freecodecamp;

--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_info_extra_info_id_seq OWNED BY public.extra_info.extra_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_km integer,
    weight_in_kg integer,
    age_in_years numeric(4,1),
    description text,
    is_a_spiral boolean,
    has_a_blackhole boolean
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
    diameter_in_km integer,
    weight_in_kg integer,
    age_in_years numeric(4,1),
    description text,
    is_in_milky_way boolean,
    orbits_our_sun boolean,
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
    diameter_in_km integer,
    weight_in_kg integer,
    age_in_years numeric(4,1),
    description text,
    is_in_milky_way boolean,
    orbits_our_sun boolean,
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
    diameter_in_km integer,
    weight_in_kg integer,
    age_in_years numeric(4,1),
    description text,
    is_in_milky_way boolean,
    is_a_red_giant boolean,
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
-- Name: extra_info extra_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info ALTER COLUMN extra_info_id SET DEFAULT nextval('public.extra_info_extra_info_id_seq'::regclass);


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
-- Data for Name: extra_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.extra_info (reference_id, info_dump, name, extra_info_id) FROM stdin;
1	test1	dummy1	2
2	test2	dummy2	3
3	test3	dummy3	4
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, diameter_in_km, weight_in_kg, age_in_years, description, is_a_spiral, has_a_blackhole) FROM stdin;
1	Andromeda	\N	\N	\N	\N	t	f
2	Alcyoneus	\N	\N	\N	\N	t	f
3	Backward	\N	\N	\N	\N	t	f
4	Barnards	\N	\N	\N	\N	t	f
5	Milky Way	\N	\N	\N	\N	t	f
6	Medusa	\N	\N	\N	\N	f	t
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, diameter_in_km, weight_in_kg, age_in_years, description, is_in_milky_way, orbits_our_sun, planet_id) FROM stdin;
1	The Moon	\N	\N	\N	\N	\N	\N	3
2	IO	\N	\N	\N	\N	\N	\N	5
3	Titan	\N	\N	\N	\N	\N	\N	5
4	moon01	\N	\N	\N	\N	\N	\N	1
5	moon02	\N	\N	\N	\N	\N	\N	2
6	moon03	\N	\N	\N	\N	\N	\N	3
7	moon04	\N	\N	\N	\N	\N	\N	4
8	moon05	\N	\N	\N	\N	\N	\N	5
9	moon06	\N	\N	\N	\N	\N	\N	6
10	moon07	\N	\N	\N	\N	\N	\N	7
11	moon08	\N	\N	\N	\N	\N	\N	8
12	moon09	\N	\N	\N	\N	\N	\N	9
13	moon10	\N	\N	\N	\N	\N	\N	10
14	moon11	\N	\N	\N	\N	\N	\N	11
15	moon12	\N	\N	\N	\N	\N	\N	12
16	moon13	\N	\N	\N	\N	\N	\N	13
17	moon14	\N	\N	\N	\N	\N	\N	14
18	moon15	\N	\N	\N	\N	\N	\N	15
19	moon16	\N	\N	\N	\N	\N	\N	16
20	moon17	\N	\N	\N	\N	\N	\N	17
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, diameter_in_km, weight_in_kg, age_in_years, description, is_in_milky_way, orbits_our_sun, star_id) FROM stdin;
1	Mercury	\N	\N	\N	\N	\N	t	1
2	Venus	\N	\N	\N	\N	\N	t	1
3	Earth	\N	\N	\N	\N	\N	t	1
4	Mars	\N	\N	\N	\N	\N	t	1
5	Jupiter	\N	\N	\N	\N	\N	t	1
6	Saturn	\N	\N	\N	\N	\N	t	1
7	Uranus	\N	\N	\N	\N	\N	t	1
8	Neptune	\N	\N	\N	\N	\N	t	1
9	Pluto	\N	\N	\N	\N	\N	t	1
10	planet001	\N	\N	\N	\N	\N	f	2
11	planet002	\N	\N	\N	\N	\N	f	3
12	planet004	\N	\N	\N	\N	\N	f	4
13	planet005	\N	\N	\N	\N	\N	f	5
14	planet006	\N	\N	\N	\N	\N	f	6
15	planet007	\N	\N	\N	\N	\N	f	7
16	planet008	\N	\N	\N	\N	\N	f	8
17	planet009	\N	\N	\N	\N	\N	f	9
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, diameter_in_km, weight_in_kg, age_in_years, description, is_in_milky_way, is_a_red_giant, galaxy_id) FROM stdin;
1	The Sun	\N	\N	\N	\N	t	\N	5
2	sun0001	\N	\N	\N	\N	f	\N	4
3	sun0002	\N	\N	\N	\N	f	\N	4
4	sun0003	\N	\N	\N	\N	f	\N	3
5	sun0004	\N	\N	\N	\N	f	\N	2
6	sun0005	\N	\N	\N	\N	f	\N	2
7	sun0006	\N	\N	\N	\N	f	\N	1
8	sun0007	\N	\N	\N	\N	f	\N	1
9	sun0008	\N	\N	\N	\N	f	\N	1
\.


--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_info_extra_info_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: extra_info extra_info_info_dump_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_info_dump_key UNIQUE (info_dump);


--
-- Name: extra_info extra_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_name_key UNIQUE (name);


--
-- Name: extra_info extra_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_pkey PRIMARY KEY (extra_info_id);


--
-- Name: extra_info extra_info_reference_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_reference_id_key UNIQUE (reference_id);


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

