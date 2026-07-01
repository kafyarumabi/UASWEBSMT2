--
-- PostgreSQL database dump
--

\restrict EDzp3ijzkO9ZO3W3qX0LJam46PeLpqAolsfMgKioUzbBbNkVFd8g8T4cUpdRrBF

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-07-01 23:46:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 25223)
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    rating integer NOT NULL,
    review text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT reviews_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25222)
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_id_seq OWNER TO postgres;

--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 219
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- TOC entry 4856 (class 2604 OID 25226)
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- TOC entry 5009 (class 0 OID 25223)
-- Dependencies: 220
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, title, rating, review, created_at) FROM stdin;
5	BATMAN 	5	MANTAP BAGUS BANGET	2026-07-01 23:33:40.796831
6	Batman kedua	1	jelek gak sebagus film pertama	2026-07-01 23:33:59.746696
\.


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 219
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 6, true);


--
-- TOC entry 4860 (class 2606 OID 25236)
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


-- Completed on 2026-07-01 23:46:24

--
-- PostgreSQL database dump complete
--

\unrestrict EDzp3ijzkO9ZO3W3qX0LJam46PeLpqAolsfMgKioUzbBbNkVFd8g8T4cUpdRrBF

