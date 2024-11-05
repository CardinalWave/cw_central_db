--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8 (Debian 15.8-0+deb12u1)
-- Dumped by pg_dump version 15.8 (Debian 15.8-0+deb12u1)

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
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id character varying(255) NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

INSERT INTO public.groups (id, title) VALUES ('0', 'GLOBAL');
--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    session_id character varying(255) NOT NULL,
    device character varying(255) NOT NULL,
    username character varying(255) NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    token character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    username character varying(60) NOT NULL,
    device character varying(255) NOT NULL,
    session_id character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_groups (
    id character varying(255) NOT NULL,
    secure_email character varying(255) NOT NULL,
    user_token character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    group_title character varying(255) NOT NULL,
    group_id character varying(255) NOT NULL,
    updated_at character varying(255) NOT NULL
);


ALTER TABLE public.users_groups OWNER TO postgres;



ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (session_id);



ALTER TABLE ONLY public.users_groups
    ADD CONSTRAINT users_groups_pkey PRIMARY KEY (id);

