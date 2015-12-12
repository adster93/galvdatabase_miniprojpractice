--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cohorts; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE cohorts (
    id integer NOT NULL,
    name character varying,
    programsid integer
);


ALTER TABLE cohorts OWNER TO "Adam_Oken";

--
-- Name: cohorts_id_seq; Type: SEQUENCE; Schema: public; Owner: Adam_Oken
--

CREATE SEQUENCE cohorts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cohorts_id_seq OWNER TO "Adam_Oken";

--
-- Name: cohorts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Adam_Oken
--

ALTER SEQUENCE cohorts_id_seq OWNED BY cohorts.id;


--
-- Name: exercises; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE exercises (
    id integer NOT NULL,
    name character varying,
    length integer,
    studentid integer
);


ALTER TABLE exercises OWNER TO "Adam_Oken";

--
-- Name: exercises_id_seq; Type: SEQUENCE; Schema: public; Owner: Adam_Oken
--

CREATE SEQUENCE exercises_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exercises_id_seq OWNER TO "Adam_Oken";

--
-- Name: exercises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Adam_Oken
--

ALTER SEQUENCE exercises_id_seq OWNED BY exercises.id;


--
-- Name: instructors; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE instructors (
    id integer NOT NULL,
    name character varying,
    cohortid integer
);


ALTER TABLE instructors OWNER TO "Adam_Oken";

--
-- Name: instructors_id_seq; Type: SEQUENCE; Schema: public; Owner: Adam_Oken
--

CREATE SEQUENCE instructors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instructors_id_seq OWNER TO "Adam_Oken";

--
-- Name: instructors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Adam_Oken
--

ALTER SEQUENCE instructors_id_seq OWNED BY instructors.id;


--
-- Name: programs; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE programs (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE programs OWNER TO "Adam_Oken";

--
-- Name: programs_id_seq; Type: SEQUENCE; Schema: public; Owner: Adam_Oken
--

CREATE SEQUENCE programs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE programs_id_seq OWNER TO "Adam_Oken";

--
-- Name: programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Adam_Oken
--

ALTER SEQUENCE programs_id_seq OWNED BY programs.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE projects (
    id integer NOT NULL,
    name character varying,
    term integer,
    "time" character varying,
    studentid integer
);


ALTER TABLE projects OWNER TO "Adam_Oken";

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: Adam_Oken
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE projects_id_seq OWNER TO "Adam_Oken";

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Adam_Oken
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE students (
    id integer NOT NULL,
    name character varying,
    cohortid integer
);


ALTER TABLE students OWNER TO "Adam_Oken";

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: Adam_Oken
--

CREATE SEQUENCE students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE students_id_seq OWNER TO "Adam_Oken";

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Adam_Oken
--

ALTER SEQUENCE students_id_seq OWNED BY students.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY cohorts ALTER COLUMN id SET DEFAULT nextval('cohorts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY exercises ALTER COLUMN id SET DEFAULT nextval('exercises_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY instructors ALTER COLUMN id SET DEFAULT nextval('instructors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY programs ALTER COLUMN id SET DEFAULT nextval('programs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY students ALTER COLUMN id SET DEFAULT nextval('students_id_seq'::regclass);


--
-- Data for Name: cohorts; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY cohorts (id, name, programsid) FROM stdin;
5	g15	1
6	g16	1
7	g17	1
8	d18	2
9	d19	2
\.


--
-- Name: cohorts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('cohorts_id_seq', 10, true);


--
-- Data for Name: exercises; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY exercises (id, name, length, studentid) FROM stdin;
1	Learning Strings	4	1
3	Arrays	5	2
4	Objects	6	3
5	Functions	8	4
6	CSS/HTML	4	5
\.


--
-- Name: exercises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('exercises_id_seq', 6, true);


--
-- Data for Name: instructors; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY instructors (id, name, cohortid) FROM stdin;
1	Kyle Coberly	5
2	CJ	6
3	Danny Fritz	7
4	Roberto	8
5	Martha	9
\.


--
-- Name: instructors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('instructors_id_seq', 5, true);


--
-- Data for Name: programs; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY programs (id, name) FROM stdin;
1	FullStack
2	Data Science
\.


--
-- Name: programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('programs_id_seq', 2, true);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY projects (id, name, term, "time", studentid) FROM stdin;
1	Randomizer	1	2 weeks	1
2	Doggy Site	2	1 week	2
3	iDeliver	3	3 week	3
4	Books.io	2	1 week	4
5	Socket.io App	4	4 weeks	5
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('projects_id_seq', 5, true);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY students (id, name, cohortid) FROM stdin;
1	Bill Bilium	5
2	Jen Jenny	6
3	Alex Al	7
4	Bobby Be	8
5	Selma Cee	9
\.


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('students_id_seq', 5, true);


--
-- Name: cohorts_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY cohorts
    ADD CONSTRAINT cohorts_pkey PRIMARY KEY (id);


--
-- Name: exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


--
-- Name: instructors_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (id);


--
-- Name: programs_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);


--
-- Name: projects_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: students_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: Adam_Oken
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "Adam_Oken";
GRANT ALL ON SCHEMA public TO "Adam_Oken";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

