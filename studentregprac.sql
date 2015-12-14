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
-- Name: class_type; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE class_type (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE class_type OWNER TO "Adam_Oken";

--
-- Name: class_type_id_seq; Type: SEQUENCE; Schema: public; Owner: Adam_Oken
--

CREATE SEQUENCE class_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE class_type_id_seq OWNER TO "Adam_Oken";

--
-- Name: class_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Adam_Oken
--

ALTER SEQUENCE class_type_id_seq OWNED BY class_type.id;


--
-- Name: exercises; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE exercises (
    id integer NOT NULL,
    name character varying,
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
-- Name: students; Type: TABLE; Schema: public; Owner: Adam_Oken; Tablespace: 
--

CREATE TABLE students (
    id integer NOT NULL,
    name character varying,
    classtypeid integer
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

ALTER TABLE ONLY class_type ALTER COLUMN id SET DEFAULT nextval('class_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY exercises ALTER COLUMN id SET DEFAULT nextval('exercises_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Adam_Oken
--

ALTER TABLE ONLY students ALTER COLUMN id SET DEFAULT nextval('students_id_seq'::regclass);


--
-- Data for Name: class_type; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY class_type (id, name) FROM stdin;
1	Fullstack
2	Data Science
\.


--
-- Name: class_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('class_type_id_seq', 2, true);


--
-- Data for Name: exercises; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY exercises (id, name, studentid) FROM stdin;
1	Arrays	2
2	Functions	1
\.


--
-- Name: exercises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('exercises_id_seq', 2, true);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: Adam_Oken
--

COPY students (id, name, classtypeid) FROM stdin;
2	Will Bill Williams	\N
1	John Joseph Smith	2
\.


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Adam_Oken
--

SELECT pg_catalog.setval('students_id_seq', 2, true);


--
-- Name: class_type_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY class_type
    ADD CONSTRAINT class_type_pkey PRIMARY KEY (id);


--
-- Name: exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: Adam_Oken; Tablespace: 
--

ALTER TABLE ONLY exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


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

