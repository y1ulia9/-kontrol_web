--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.6

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying NOT NULL,
    invoice integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: costs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.costs (
    id bigint NOT NULL,
    cost integer NOT NULL,
    product_id bigint,
    company_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.costs OWNER TO postgres;

--
-- Name: costs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.costs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.costs_id_seq OWNER TO postgres;

--
-- Name: costs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.costs_id_seq OWNED BY public.costs.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    amount integer NOT NULL,
    delivered boolean,
    user_id bigint,
    cost_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: product_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_groups (
    id bigint NOT NULL,
    name character varying NOT NULL,
    plan integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.product_groups OWNER TO postgres;

--
-- Name: product_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_groups_id_seq OWNER TO postgres;

--
-- Name: product_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_groups_id_seq OWNED BY public.product_groups.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying NOT NULL,
    product_group_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    last_sign_in_at timestamp without time zone,
    username character varying NOT NULL,
    admin boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    current_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: costs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costs ALTER COLUMN id SET DEFAULT nextval('public.costs_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: product_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_groups ALTER COLUMN id SET DEFAULT nextval('public.product_groups_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-07-15 13:03:40.851911	2021-07-15 13:03:40.851911
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companies (id, name, invoice, created_at, updated_at) FROM stdin;
1	ООО "Калинковичский молочный"	350	2021-07-16 11:44:56.303167	2021-07-17 22:06:43.32169
3	ОАО "Спартак"	130	2021-07-16 11:45:38.416285	2021-07-17 22:08:59.811076
5	ОАО "Минская марка"	150	2021-07-16 11:46:13.191691	2021-07-17 22:09:27.556227
4	ООО "Звезда"	5955	2021-07-16 11:45:52.072385	2021-07-17 22:10:09.300038
6	ОАО "Новый Орлеан"	4100	2021-07-16 11:46:41.471285	2021-07-17 23:40:32.571791
2	ООО "Витебский мясопродукт"	3240	2021-07-16 11:45:21.227684	2021-07-17 23:40:46.918149
\.


--
-- Data for Name: costs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.costs (id, cost, product_id, company_id, created_at, updated_at) FROM stdin;
1	7	2	3	2021-07-16 11:47:20.804634	2021-07-16 11:47:20.804634
2	9	1	3	2021-07-16 11:47:49.990289	2021-07-16 11:47:49.990289
3	4	13	3	2021-07-16 11:48:13.746706	2021-07-16 11:48:13.746706
4	2	9	3	2021-07-16 11:48:25.310667	2021-07-16 11:48:25.310667
5	27	17	4	2021-07-16 11:48:35.95943	2021-07-16 11:48:35.95943
6	20	16	4	2021-07-16 11:48:46.685433	2021-07-16 11:48:46.685433
7	23	15	4	2021-07-16 11:48:56.26937	2021-07-16 11:48:56.26937
8	10	14	4	2021-07-16 11:49:03.053788	2021-07-16 11:49:03.053788
9	5	13	4	2021-07-16 11:49:11.282334	2021-07-16 11:49:11.282334
10	6	12	4	2021-07-16 11:49:20.328936	2021-07-16 11:49:20.328936
11	13	7	4	2021-07-16 11:49:36.64491	2021-07-16 11:49:36.64491
12	40	5	4	2021-07-16 11:49:46.107347	2021-07-16 11:49:46.107347
13	40	8	6	2021-07-16 11:50:15.766855	2021-07-16 11:50:15.766855
14	30	4	6	2021-07-16 11:50:24.555557	2021-07-16 11:50:24.555557
15	34	6	6	2021-07-16 11:50:32.573966	2021-07-16 11:50:32.573966
16	23	2	6	2021-07-16 11:50:43.127954	2021-07-16 11:50:43.127954
17	3	13	5	2021-07-16 11:50:51.368133	2021-07-16 11:50:51.368133
18	7	12	5	2021-07-16 11:51:01.217871	2021-07-16 11:51:01.217871
19	3	11	5	2021-07-16 11:51:11.802718	2021-07-16 11:51:11.802718
20	2	9	5	2021-07-16 11:51:21.621293	2021-07-16 11:51:21.621293
21	23	6	5	2021-07-16 11:51:32.944853	2021-07-16 11:51:32.944853
22	39	17	2	2021-07-16 11:51:43.905635	2021-07-16 11:51:43.905635
23	38	16	2	2021-07-16 11:51:56.367512	2021-07-16 11:51:56.367512
24	22	15	2	2021-07-16 11:52:05.065978	2021-07-16 11:52:05.065978
25	13	14	2	2021-07-16 11:52:11.617737	2021-07-16 11:52:11.617737
26	19	7	2	2021-07-16 11:52:24.902304	2021-07-16 11:52:24.902304
27	7	13	1	2021-07-16 11:52:35.862187	2021-07-16 11:52:35.862187
28	18	12	1	2021-07-16 11:52:48.440189	2021-07-16 11:52:48.440189
29	5	11	1	2021-07-16 11:52:55.680078	2021-07-16 11:52:55.680078
30	3	10	1	2021-07-16 11:53:02.823271	2021-07-16 11:53:02.823271
31	3	9	1	2021-07-16 11:53:12.541336	2021-07-16 11:53:12.541336
32	49	6	1	2021-07-16 11:53:24.553414	2021-07-16 11:53:24.553414
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, amount, delivered, user_id, cost_id, created_at, updated_at) FROM stdin;
13	10	t	1	15	2021-07-17 21:36:03.287896	2021-07-17 21:36:16.471501
14	50	t	1	27	2021-07-17 22:06:43.313116	2021-07-17 22:06:43.313116
15	100	t	1	12	2021-07-17 22:07:51.565551	2021-07-17 22:07:51.565551
16	50	t	1	22	2021-07-17 22:08:44.310631	2021-07-17 22:08:44.310631
17	15	t	1	3	2021-07-17 22:08:59.805144	2021-07-17 22:08:59.805144
18	50	t	1	17	2021-07-17 22:09:27.550429	2021-07-17 22:09:27.550429
19	45	t	1	7	2021-07-17 22:09:45.837536	2021-07-17 22:09:45.837536
20	40	t	1	7	2021-07-17 22:10:09.294057	2021-07-17 22:10:09.294057
21	70	t	1	14	2021-07-17 22:10:26.090262	2021-07-17 22:10:26.090262
22	50	t	2	24	2021-07-17 23:39:19.757009	2021-07-17 23:39:19.757009
23	10	t	2	14	2021-07-17 23:39:41.992487	2021-07-17 23:39:41.992487
24	20	t	3	16	2021-07-17 23:40:16.384249	2021-07-17 23:40:18.857907
25	30	t	3	14	2021-07-17 23:40:32.565935	2021-07-17 23:40:32.565935
26	5	t	3	23	2021-07-17 23:40:46.911941	2021-07-17 23:40:46.911941
\.


--
-- Data for Name: product_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_groups (id, name, plan, created_at, updated_at) FROM stdin;
4	Копчености	300	2021-07-16 11:37:56.791015	2021-07-17 21:36:16.460568
1	Молочные	130	2021-07-16 11:37:10.189004	2021-07-17 22:09:27.567638
3	Сладости	940	2021-07-16 11:37:34.182682	2021-07-17 23:40:32.583353
2	Мясные	410	2021-07-16 11:37:21.719057	2021-07-17 23:40:46.929837
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, product_group_id, created_at, updated_at) FROM stdin;
1	Батончик "Витоша"	3	2021-07-16 11:38:39.523772	2021-07-16 11:38:39.523772
2	Конфеты "Глазурька"	3	2021-07-16 11:39:07.752231	2021-07-16 11:39:07.752231
3	Конфеты "Бешенная пчёлка"	3	2021-07-16 11:39:21.22641	2021-07-16 11:39:21.22641
4	Торт "Праздничный"	3	2021-07-16 11:39:34.917057	2021-07-16 11:39:34.917057
5	Торт "Жозефина"	3	2021-07-16 11:39:59.022729	2021-07-16 11:39:59.022729
6	Сыр-косичка	4	2021-07-16 11:40:12.451467	2021-07-16 11:40:12.451467
7	Крылышки копченые 	4	2021-07-16 11:40:24.092867	2021-07-16 11:40:24.092867
8	Шейное мясо копченое	4	2021-07-16 11:40:58.361116	2021-07-16 11:40:58.361116
9	Молоко "Савушкин 3,2%"	1	2021-07-16 11:41:16.902093	2021-07-16 11:41:16.902093
10	Молоко "Савушкин 2,2%"	1	2021-07-16 11:41:30.903385	2021-07-16 11:41:30.903385
11	Кефир "Детский 3%"	1	2021-07-16 11:41:57.556707	2021-07-16 11:41:57.556707
12	Сырок творожный "Радуга"	1	2021-07-16 11:42:09.066841	2021-07-16 11:42:09.066841
13	Творог "Простоквашино"	1	2021-07-16 11:42:21.974075	2021-07-16 11:42:21.974075
14	Филе куриное "Петя"	2	2021-07-16 11:42:44.010106	2021-07-16 11:42:44.010106
15	Колбаса "Докторская"	2	2021-07-16 11:43:10.872533	2021-07-16 11:43:10.872533
16	Шпинат "Припять"	2	2021-07-16 11:43:27.034946	2021-07-16 11:43:27.034946
17	Вырезка "100% мясо"	2	2021-07-16 11:43:40.682073	2021-07-16 11:43:40.682073
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20210714173145
20210715140220
20210715140602
20210715143637
20210715150900
20210715151649
20210715192844
20210715193520
20210715194111
20210715195645
20210716092720
20210716093201
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, last_sign_in_at, username, admin, created_at, updated_at, current_sign_in_at, current_sign_in_ip, last_sign_in_ip) FROM stdin;
2	example_user1@gmail.com	$2a$12$GCZYf..pb6.MXyyYbETMb.W7I7CqCDoEU9sZr6y9rshNaNWGwTUYm	\N	\N	\N	1	2021-07-17 23:37:21.819175	example_user1	\N	2021-07-17 23:37:21.809003	2021-07-17 23:37:21.819339	2021-07-17 23:37:21.819175	::1	::1
3	example_user2@gmail.com	$2a$12$ZzBy7YAgBGS4efhWSwWlYuDSnmnGu8TlBi7L0POhtTcNu7YTaddS6	\N	\N	\N	1	2021-07-17 23:40:05.567743	example_user2	\N	2021-07-17 23:40:05.560915	2021-07-17 23:40:05.567911	2021-07-17 23:40:05.567743	::1	::1
1	admin123@gmail.com	$2a$12$fPqww2pw9s8ZcDj4.6Z42.XkWZdL6yvqrIZRbOIkkdlQlo4FfYUay	\N	\N	\N	8	2021-07-18 01:43:52.704138	admin123	t	2021-07-16 09:24:41.815173	2021-07-18 02:24:50.293589	2021-07-18 02:24:50.293225	::1	::1
\.


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 6, true);


--
-- Name: costs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.costs_id_seq', 32, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 26, true);


--
-- Name: product_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_groups_id_seq', 4, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 17, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: costs costs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costs
    ADD CONSTRAINT costs_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: product_groups product_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_groups
    ADD CONSTRAINT product_groups_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_costs_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_costs_on_company_id ON public.costs USING btree (company_id);


--
-- Name: index_costs_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_costs_on_product_id ON public.costs USING btree (product_id);


--
-- Name: index_orders_on_cost_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_cost_id ON public.orders USING btree (cost_id);


--
-- Name: index_orders_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_user_id ON public.orders USING btree (user_id);


--
-- Name: index_products_on_product_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_product_group_id ON public.products USING btree (product_group_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_username ON public.users USING btree (username);


--
-- PostgreSQL database dump complete
--

