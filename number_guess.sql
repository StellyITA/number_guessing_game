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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    games integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Agvzz', 1, 50);
INSERT INTO public.users VALUES ('Ayeye', 10, 30);
INSERT INTO public.users VALUES ('qwerty', 4, 9);
INSERT INTO public.users VALUES ('user_1674755719896', 2, 12);
INSERT INTO public.users VALUES ('user_1674756809095', 2, 519);
INSERT INTO public.users VALUES ('user_1674756809096', 5, 97);
INSERT INTO public.users VALUES ('user_1674755719897', 5, 559);
INSERT INTO public.users VALUES ('user_1674756186127', 2, 97);
INSERT INTO public.users VALUES ('user_1674756186128', 5, 113);
INSERT INTO public.users VALUES ('user_1674756841448', 2, 335);
INSERT INTO public.users VALUES ('user_1674756841449', 5, 232);
INSERT INTO public.users VALUES ('user_1674756562324', 2, 309);
INSERT INTO public.users VALUES ('user_1674756562325', 5, 106);
INSERT INTO public.users VALUES ('user_1674757071322', 2, 366);
INSERT INTO public.users VALUES ('user_1674756656124', 2, 462);
INSERT INTO public.users VALUES ('user_1674757071323', 5, 120);
INSERT INTO public.users VALUES ('user_1674756656125', 5, 12);


--
-- PostgreSQL database dump complete
--

