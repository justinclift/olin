--
-- PostgreSQL database dump
--

-- Dumped from database version 10.8
-- Dumped by pg_dump version 10.8

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

DROP DATABASE IF EXISTS olintest;
--
-- Name: olintest; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE olintest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


\connect olintest

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: execution_run; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.execution_run (
    op_num bigint NOT NULL,
    run_num integer,
    op_name text NOT NULL,
    before_val_int integer,
    after_val_int integer,
    operands text,
    called_func integer,
    data_int1 bigint,
    result_register integer,
    arg_count integer,
    result_value bigint,
    op_code integer,
    memory_address bigint
);


--
-- Name: execution_run_op_num_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.execution_run_op_num_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: execution_run_op_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.execution_run_op_num_seq OWNED BY public.execution_run.op_num;


--
-- Name: execution_runs_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.execution_runs_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: execution_run op_num; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.execution_run ALTER COLUMN op_num SET DEFAULT nextval('public.execution_run_op_num_seq'::regclass);


--
-- Name: execution_run execution_run_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.execution_run
    ADD CONSTRAINT execution_run_pk PRIMARY KEY (op_num);


--
-- PostgreSQL database dump complete
--

