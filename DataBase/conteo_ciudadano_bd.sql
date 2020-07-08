--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-07-08 00:38:54

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
-- TOC entry 219 (class 1255 OID 16751)
-- Name: eliminar(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.eliminar() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE BEGIN
INSERT INTO respaldo VALUES(OLD.cod_municipio,OLD.nombre_municipio);
RETURN NULL;
END;
$$;


ALTER FUNCTION public.eliminar() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16624)
-- Name: censo_derecho; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.censo_derecho (
    id_censo_derecho integer NOT NULL,
    fecha_registro date NOT NULL,
    direccion character varying(60) NOT NULL
);


ALTER TABLE public.censo_derecho OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16622)
-- Name: censo_derecho_id_censo_derecho_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.censo_derecho_id_censo_derecho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.censo_derecho_id_censo_derecho_seq OWNER TO postgres;

--
-- TOC entry 2927 (class 0 OID 0)
-- Dependencies: 202
-- Name: censo_derecho_id_censo_derecho_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.censo_derecho_id_censo_derecho_seq OWNED BY public.censo_derecho.id_censo_derecho;


--
-- TOC entry 205 (class 1259 OID 16632)
-- Name: censo_distrital_derecho; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.censo_distrital_derecho (
    id_censo_derecho_dis integer NOT NULL,
    id_fecha_registro date NOT NULL,
    fk_id_censo_derecho integer
);


ALTER TABLE public.censo_distrital_derecho OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16630)
-- Name: censo_distrital_derecho_id_censo_derecho_dis_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.censo_distrital_derecho_id_censo_derecho_dis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.censo_distrital_derecho_id_censo_derecho_dis_seq OWNER TO postgres;

--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 204
-- Name: censo_distrital_derecho_id_censo_derecho_dis_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.censo_distrital_derecho_id_censo_derecho_dis_seq OWNED BY public.censo_distrital_derecho.id_censo_derecho_dis;


--
-- TOC entry 207 (class 1259 OID 16640)
-- Name: censo_distrital_hecho; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.censo_distrital_hecho (
    id_censo_hecho_dis integer NOT NULL,
    id_fecha_registro_hecho date NOT NULL,
    fk_id_censo_hecho integer NOT NULL
);


ALTER TABLE public.censo_distrital_hecho OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16638)
-- Name: censo_distrital_hecho_id_censo_hecho_dis_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.censo_distrital_hecho_id_censo_hecho_dis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.censo_distrital_hecho_id_censo_hecho_dis_seq OWNER TO postgres;

--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 206
-- Name: censo_distrital_hecho_id_censo_hecho_dis_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.censo_distrital_hecho_id_censo_hecho_dis_seq OWNED BY public.censo_distrital_hecho.id_censo_hecho_dis;


--
-- TOC entry 209 (class 1259 OID 16648)
-- Name: censo_hecho; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.censo_hecho (
    id_censo_hecho integer NOT NULL,
    fecha_inicio_residencia date,
    direccion character varying(50) DEFAULT NULL::character varying,
    pais_residencia character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.censo_hecho OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16646)
-- Name: censo_hecho_id_censo_hecho_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.censo_hecho_id_censo_hecho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.censo_hecho_id_censo_hecho_seq OWNER TO postgres;

--
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 208
-- Name: censo_hecho_id_censo_hecho_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.censo_hecho_id_censo_hecho_seq OWNED BY public.censo_hecho.id_censo_hecho;


--
-- TOC entry 211 (class 1259 OID 16658)
-- Name: distrito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.distrito (
    cod_distrito numeric NOT NULL,
    nombre_distrito character varying(100) DEFAULT NULL::character varying,
    fk_cod_municipio integer NOT NULL,
    fk_cod_provincia integer NOT NULL
);


ALTER TABLE public.distrito OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16656)
-- Name: distrito_cod_distrito_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.distrito_cod_distrito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distrito_cod_distrito_seq OWNER TO postgres;

--
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 210
-- Name: distrito_cod_distrito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.distrito_cod_distrito_seq OWNED BY public.distrito.cod_distrito;


--
-- TOC entry 213 (class 1259 OID 16667)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    cod_municipio integer NOT NULL,
    nombre_municipio character varying(100) NOT NULL,
    fk_cod_provincia integer NOT NULL
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16665)
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipio_cod_municipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipio_cod_municipio_seq OWNER TO postgres;

--
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 212
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.municipio_cod_municipio_seq OWNED BY public.municipio.cod_municipio;


--
-- TOC entry 215 (class 1259 OID 16675)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    numero_doc integer NOT NULL,
    nombre character varying(50) DEFAULT NULL::character varying,
    apellidos character varying(50) DEFAULT NULL::character varying,
    fecha_nacimiento date,
    tipo_doc character varying(50) DEFAULT NULL::character varying,
    edad character varying(5) DEFAULT NULL::character varying,
    estatura character varying(10) DEFAULT NULL::character varying,
    situacion_militar character varying(15) DEFAULT NULL::character varying,
    sexo character varying(10) DEFAULT NULL::character varying,
    nivel_de_estudios character varying(15) DEFAULT NULL::character varying,
    fk_persona_cod_municipio integer
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16673)
-- Name: persona_numero_doc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_numero_doc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_numero_doc_seq OWNER TO postgres;

--
-- TOC entry 2945 (class 0 OID 0)
-- Dependencies: 214
-- Name: persona_numero_doc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_numero_doc_seq OWNED BY public.persona.numero_doc;


--
-- TOC entry 217 (class 1259 OID 16693)
-- Name: provincia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincia (
    cod_provincia integer NOT NULL,
    nombre_provincia character varying(50) NOT NULL
);


ALTER TABLE public.provincia OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16691)
-- Name: provincia_cod_provincia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provincia_cod_provincia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provincia_cod_provincia_seq OWNER TO postgres;

--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 216
-- Name: provincia_cod_provincia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provincia_cod_provincia_seq OWNED BY public.provincia.cod_provincia;


--
-- TOC entry 218 (class 1259 OID 16735)
-- Name: respaldo; Type: TABLE; Schema: public; Owner: administrador
--

CREATE TABLE public.respaldo (
    cod_municipio integer DEFAULT nextval('public.municipio_cod_municipio_seq'::regclass) NOT NULL,
    nombre_municipio character varying(100) NOT NULL
);


ALTER TABLE public.respaldo OWNER TO administrador;

--
-- TOC entry 2737 (class 2604 OID 16627)
-- Name: censo_derecho id_censo_derecho; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_derecho ALTER COLUMN id_censo_derecho SET DEFAULT nextval('public.censo_derecho_id_censo_derecho_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 16635)
-- Name: censo_distrital_derecho id_censo_derecho_dis; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_distrital_derecho ALTER COLUMN id_censo_derecho_dis SET DEFAULT nextval('public.censo_distrital_derecho_id_censo_derecho_dis_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 16643)
-- Name: censo_distrital_hecho id_censo_hecho_dis; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_distrital_hecho ALTER COLUMN id_censo_hecho_dis SET DEFAULT nextval('public.censo_distrital_hecho_id_censo_hecho_dis_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 16651)
-- Name: censo_hecho id_censo_hecho; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_hecho ALTER COLUMN id_censo_hecho SET DEFAULT nextval('public.censo_hecho_id_censo_hecho_seq'::regclass);


--
-- TOC entry 2744 (class 2604 OID 16722)
-- Name: distrito cod_distrito; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distrito ALTER COLUMN cod_distrito SET DEFAULT nextval('public.distrito_cod_distrito_seq'::regclass);


--
-- TOC entry 2745 (class 2604 OID 16670)
-- Name: municipio cod_municipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio ALTER COLUMN cod_municipio SET DEFAULT nextval('public.municipio_cod_municipio_seq'::regclass);


--
-- TOC entry 2746 (class 2604 OID 16678)
-- Name: persona numero_doc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN numero_doc SET DEFAULT nextval('public.persona_numero_doc_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 16696)
-- Name: provincia cod_provincia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincia ALTER COLUMN cod_provincia SET DEFAULT nextval('public.provincia_cod_provincia_seq'::regclass);


--
-- TOC entry 2905 (class 0 OID 16624)
-- Dependencies: 203
-- Data for Name: censo_derecho; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.censo_derecho (id_censo_derecho, fecha_registro, direccion) FROM stdin;
\.


--
-- TOC entry 2907 (class 0 OID 16632)
-- Dependencies: 205
-- Data for Name: censo_distrital_derecho; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.censo_distrital_derecho (id_censo_derecho_dis, id_fecha_registro, fk_id_censo_derecho) FROM stdin;
\.


--
-- TOC entry 2909 (class 0 OID 16640)
-- Dependencies: 207
-- Data for Name: censo_distrital_hecho; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.censo_distrital_hecho (id_censo_hecho_dis, id_fecha_registro_hecho, fk_id_censo_hecho) FROM stdin;
1	2018-05-27	1
2	2012-07-13	3
\.


--
-- TOC entry 2911 (class 0 OID 16648)
-- Dependencies: 209
-- Data for Name: censo_hecho; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.censo_hecho (id_censo_hecho, fecha_inicio_residencia, direccion, pais_residencia) FROM stdin;
1	2020-06-28	Sector la puñalá	México
2	2009-05-06	Alameda la Victoria	Bolivia
3	2015-06-11	El Recreo 8va Calle	Argentina
\.


--
-- TOC entry 2913 (class 0 OID 16658)
-- Dependencies: 211
-- Data for Name: distrito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.distrito (cod_distrito, nombre_distrito, fk_cod_municipio, fk_cod_provincia) FROM stdin;
\.


--
-- TOC entry 2915 (class 0 OID 16667)
-- Dependencies: 213
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.municipio (cod_municipio, nombre_municipio, fk_cod_provincia) FROM stdin;
1	Turbaco	3
3	Santa Marta	5
4	Siberia	2
5	Monteria	6
6	Cartagena	3
7	Ibagué	3
8	Honda	2
9	Arjona	3
10	Calamar	3
11	Pinillos	3
\.


--
-- TOC entry 2917 (class 0 OID 16675)
-- Dependencies: 215
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (numero_doc, nombre, apellidos, fecha_nacimiento, tipo_doc, edad, estatura, situacion_militar, sexo, nivel_de_estudios, fk_persona_cod_municipio) FROM stdin;
9047015	Galford	Balmer	1980-01-05	Cedula	40	1.95	SIN DEFINIR	HOM	Superior	4
33159774	Chun	Li	1993-03-05	Cedula de Extanjeria	27	1.78	SIN DEFINIR	MUJ	Primaria	2
\.


--
-- TOC entry 2919 (class 0 OID 16693)
-- Dependencies: 217
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provincia (cod_provincia, nombre_provincia) FROM stdin;
2	Cundinamarca
3	Bolívar
4	Atlántico
5	Magdalena
6	Cordoba
\.


--
-- TOC entry 2920 (class 0 OID 16735)
-- Dependencies: 218
-- Data for Name: respaldo; Type: TABLE DATA; Schema: public; Owner: administrador
--

COPY public.respaldo (cod_municipio, nombre_municipio) FROM stdin;
12	Achí
\.


--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 202
-- Name: censo_derecho_id_censo_derecho_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.censo_derecho_id_censo_derecho_seq', 4, true);


--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 204
-- Name: censo_distrital_derecho_id_censo_derecho_dis_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.censo_distrital_derecho_id_censo_derecho_dis_seq', 1, false);


--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 206
-- Name: censo_distrital_hecho_id_censo_hecho_dis_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.censo_distrital_hecho_id_censo_hecho_dis_seq', 2, true);


--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 208
-- Name: censo_hecho_id_censo_hecho_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.censo_hecho_id_censo_hecho_seq', 3, true);


--
-- TOC entry 2955 (class 0 OID 0)
-- Dependencies: 210
-- Name: distrito_cod_distrito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.distrito_cod_distrito_seq', 1, false);


--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 212
-- Name: municipio_cod_municipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.municipio_cod_municipio_seq', 6, true);


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 214
-- Name: persona_numero_doc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_numero_doc_seq', 1, false);


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 216
-- Name: provincia_cod_provincia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provincia_cod_provincia_seq', 6, true);


--
-- TOC entry 2758 (class 2606 OID 16629)
-- Name: censo_derecho censo_derecho_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_derecho
    ADD CONSTRAINT censo_derecho_pkey PRIMARY KEY (id_censo_derecho);


--
-- TOC entry 2760 (class 2606 OID 16637)
-- Name: censo_distrital_derecho censo_distrital_derecho_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_distrital_derecho
    ADD CONSTRAINT censo_distrital_derecho_pkey PRIMARY KEY (id_censo_derecho_dis);


--
-- TOC entry 2762 (class 2606 OID 16645)
-- Name: censo_distrital_hecho censo_distrital_hecho_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_distrital_hecho
    ADD CONSTRAINT censo_distrital_hecho_pkey PRIMARY KEY (id_censo_hecho_dis);


--
-- TOC entry 2764 (class 2606 OID 16655)
-- Name: censo_hecho censo_hecho_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_hecho
    ADD CONSTRAINT censo_hecho_pkey PRIMARY KEY (id_censo_hecho);


--
-- TOC entry 2766 (class 2606 OID 16724)
-- Name: distrito distrito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distrito
    ADD CONSTRAINT distrito_pkey PRIMARY KEY (cod_distrito);


--
-- TOC entry 2768 (class 2606 OID 16672)
-- Name: municipio municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (cod_municipio);


--
-- TOC entry 2770 (class 2606 OID 16688)
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (numero_doc);


--
-- TOC entry 2772 (class 2606 OID 16698)
-- Name: provincia provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (cod_provincia);


--
-- TOC entry 2777 (class 2620 OID 16752)
-- Name: municipio insertar_eliminados; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER insertar_eliminados AFTER DELETE ON public.municipio FOR EACH ROW EXECUTE FUNCTION public.eliminar();


--
-- TOC entry 2773 (class 2606 OID 16699)
-- Name: censo_distrital_derecho fktest; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_distrital_derecho
    ADD CONSTRAINT fktest FOREIGN KEY (fk_id_censo_derecho) REFERENCES public.censo_derecho(id_censo_derecho);


--
-- TOC entry 2774 (class 2606 OID 16704)
-- Name: censo_distrital_hecho fktest; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.censo_distrital_hecho
    ADD CONSTRAINT fktest FOREIGN KEY (fk_id_censo_hecho) REFERENCES public.censo_hecho(id_censo_hecho);


--
-- TOC entry 2776 (class 2606 OID 16709)
-- Name: municipio fktest; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT fktest FOREIGN KEY (fk_cod_provincia) REFERENCES public.provincia(cod_provincia);


--
-- TOC entry 2775 (class 2606 OID 16714)
-- Name: distrito fktest; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distrito
    ADD CONSTRAINT fktest FOREIGN KEY (fk_cod_municipio) REFERENCES public.municipio(cod_municipio);


--
-- TOC entry 2926 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE censo_derecho; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.censo_derecho TO PUBLIC;
GRANT ALL ON TABLE public.censo_derecho TO administrador;
GRANT ALL ON TABLE public.censo_derecho TO rafael;


--
-- TOC entry 2928 (class 0 OID 0)
-- Dependencies: 202
-- Name: SEQUENCE censo_derecho_id_censo_derecho_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.censo_derecho_id_censo_derecho_seq TO administrador;
GRANT ALL ON SEQUENCE public.censo_derecho_id_censo_derecho_seq TO rafael;


--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE censo_distrital_derecho; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.censo_distrital_derecho TO PUBLIC;
GRANT ALL ON TABLE public.censo_distrital_derecho TO administrador;
GRANT ALL ON TABLE public.censo_distrital_derecho TO rafael;


--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 204
-- Name: SEQUENCE censo_distrital_derecho_id_censo_derecho_dis_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.censo_distrital_derecho_id_censo_derecho_dis_seq TO administrador;
GRANT ALL ON SEQUENCE public.censo_distrital_derecho_id_censo_derecho_dis_seq TO rafael;


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE censo_distrital_hecho; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.censo_distrital_hecho TO PUBLIC;
GRANT ALL ON TABLE public.censo_distrital_hecho TO administrador;
GRANT ALL ON TABLE public.censo_distrital_hecho TO rafael;


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 206
-- Name: SEQUENCE censo_distrital_hecho_id_censo_hecho_dis_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.censo_distrital_hecho_id_censo_hecho_dis_seq TO administrador;
GRANT ALL ON SEQUENCE public.censo_distrital_hecho_id_censo_hecho_dis_seq TO rafael;


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE censo_hecho; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.censo_hecho TO PUBLIC;
GRANT ALL ON TABLE public.censo_hecho TO administrador;
GRANT ALL ON TABLE public.censo_hecho TO rafael;


--
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 208
-- Name: SEQUENCE censo_hecho_id_censo_hecho_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.censo_hecho_id_censo_hecho_seq TO administrador;
GRANT ALL ON SEQUENCE public.censo_hecho_id_censo_hecho_seq TO rafael;


--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE distrito; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.distrito TO PUBLIC;
GRANT ALL ON TABLE public.distrito TO administrador;
GRANT ALL ON TABLE public.distrito TO rafael;


--
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 210
-- Name: SEQUENCE distrito_cod_distrito_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.distrito_cod_distrito_seq TO administrador;
GRANT ALL ON SEQUENCE public.distrito_cod_distrito_seq TO rafael;


--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE municipio; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.municipio TO PUBLIC;
GRANT ALL ON TABLE public.municipio TO administrador;
GRANT ALL ON TABLE public.municipio TO rafael;


--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 212
-- Name: SEQUENCE municipio_cod_municipio_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.municipio_cod_municipio_seq TO administrador;
GRANT ALL ON SEQUENCE public.municipio_cod_municipio_seq TO rafael;


--
-- TOC entry 2944 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE persona; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.persona TO PUBLIC;
GRANT ALL ON TABLE public.persona TO administrador;
GRANT ALL ON TABLE public.persona TO rafael;


--
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 214
-- Name: SEQUENCE persona_numero_doc_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.persona_numero_doc_seq TO administrador;
GRANT ALL ON SEQUENCE public.persona_numero_doc_seq TO rafael;


--
-- TOC entry 2947 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE provincia; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.provincia TO PUBLIC;
GRANT ALL ON TABLE public.provincia TO administrador;
GRANT ALL ON TABLE public.provincia TO rafael;


--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 216
-- Name: SEQUENCE provincia_cod_provincia_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.provincia_cod_provincia_seq TO administrador;
GRANT ALL ON SEQUENCE public.provincia_cod_provincia_seq TO rafael;


--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE respaldo; Type: ACL; Schema: public; Owner: administrador
--

GRANT ALL ON TABLE public.respaldo TO PUBLIC;


--
-- TOC entry 1738 (class 826 OID 16721)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES  TO administrador;


--
-- TOC entry 1737 (class 826 OID 16719)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO administrador;


-- Completed on 2020-07-08 00:38:55

--
-- PostgreSQL database dump complete
--

