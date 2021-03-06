--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    isbn character varying(255) NOT NULL,
    author character varying(255),
    description character varying(255),
    image_url character varying(255),
    title character varying(255)
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: defis_lectures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.defis_lectures (
    id integer NOT NULL,
    description character varying(255),
    image_url character varying(255),
    nbre_total_livre integer NOT NULL,
    titre character varying(255)
);


ALTER TABLE public.defis_lectures OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: livres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livres (
    isbn character varying(255) NOT NULL,
    auteur character varying(255),
    description character varying(255),
    image_url character varying(255),
    titre character varying(255)
);


ALTER TABLE public.livres OWNER TO postgres;

--
-- Name: reading_challenge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reading_challenge (
    id integer NOT NULL,
    description character varying(255),
    image_url character varying(255),
    nbr_total_book integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.reading_challenge OWNER TO postgres;

--
-- Name: utili_livre_done; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utili_livre_done (
    note integer,
    user_done_id integer NOT NULL,
    livre_done_isbn character varying(255) NOT NULL
);


ALTER TABLE public.utili_livre_done OWNER TO postgres;

--
-- Name: utilisateur_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateur_roles (
    utilisateur_id integer NOT NULL,
    roles integer
);


ALTER TABLE public.utilisateur_roles OWNER TO postgres;

--
-- Name: utilisateurs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateurs (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    image_name character varying(255),
    password character varying(255),
    username character varying(255)
);


ALTER TABLE public.utilisateurs OWNER TO postgres;

--
-- Name: utilisateurs_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateurs_books (
    utilisateurs_id integer NOT NULL,
    books_isbn character varying(255) NOT NULL
);


ALTER TABLE public.utilisateurs_books OWNER TO postgres;

--
-- Name: utilisateurs_defis_lectures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateurs_defis_lectures (
    utilisateur_id integer NOT NULL,
    defis_lectures_id integer NOT NULL
);


ALTER TABLE public.utilisateurs_defis_lectures OWNER TO postgres;

--
-- Name: utilisateurs_livres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateurs_livres (
    utilisateurs_id integer NOT NULL,
    livres_isbn character varying(255) NOT NULL
);


ALTER TABLE public.utilisateurs_livres OWNER TO postgres;

--
-- Name: utilisateurs_reading_challenges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateurs_reading_challenges (
    utilisateur_id integer NOT NULL,
    reading_challenges_id integer NOT NULL
);


ALTER TABLE public.utilisateurs_reading_challenges OWNER TO postgres;

--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (isbn, author, description, image_url, title) FROM stdin;
\.


--
-- Data for Name: defis_lectures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.defis_lectures (id, description, image_url, nbre_total_livre, titre) FROM stdin;
0	Good start, continue ..	https://firebasestorage.googleapis.com/v0/b/onesignal-9d554.appspot.com/o/bgtrophy1-min.jpg?alt=media&token=46cb82b9-3a42-47c6-b9e9-d1b0660d87ff	2	Novice
2	You're doing well, Bravo	https://firebasestorage.googleapis.com/v0/b/onesignal-9d554.appspot.com/o/trophy2-min.jpg?alt=media&token=f8f0e718-5764-48e1-a50b-cd740f64ea68	4	Intermediate
3	Excellent, continue ..	https://firebasestorage.googleapis.com/v0/b/onesignal-9d554.appspot.com/o/trophy3-min.jpg?alt=media&token=d8b3ef7f-c173-4b97-8012-0f1265c87a81	6	Expert
\.


--
-- Data for Name: livres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livres (isbn, auteur, description, image_url, titre) FROM stdin;
8755544441	 Fran??oise BOURDIN	Les r??ves les plus fous s'accomplissent dans les vies sans r??serve.D??couvrez le roman d'un homme qui r??vait de distraire les tigres... 	https://images-na.ssl-images-amazon.com/images/I/41pJbtp1hJL._SX315_BO1,204,203,200_.jpg	Gran Paradiso
2287965424	Don Miguel Ruiz	Dans son best-seller mondial, Les Quatre Accords Tolt??ques, Don Miguel Ruiz r??v??lait comment le processus ??ducatif, notre 'domestication', nous fait oublier la sagesse inh??rente avec laquelle nous venons au monde.	https://images-na.ssl-images-amazon.com/images/I/51pQWa3qbHL._SX352_BO1,204,203,200_.jpg	Le cinqui??me Accord Tolt??que
2287965423	Peter Thiel	Comment construire le futur pour l'homme qui a cr???? PayPal et investi dans Facebook, SpaceX et Linkedin.	https://images-na.ssl-images-amazon.com/images/I/415QLoxLJRL._SX312_BO1,204,203,200_.jpg	De z??ro ?? un
2287965422	Ashlee Vance	Elon Musk fait partie de ceux qui changent les r??gles du jeu. Largement consid??r?? comme le plus grand industriel du moment, il porte l'innovation ?? des niveaux rarement atteints au point d'avoir servi de mod??le pour Tony Stark, alias Iron man.	https://images-na.ssl-images-amazon.com/images/I/51XDYOsV3xL._SX331_BO1,204,203,200_.jpg	Elon Musk
2287965421	J. K. Rowling	Cette ann??e, Harry a dix-sept ans et ne retourne pas ?? Poudlard. Avec Ron et Hermione, il se consacre ?? la derni??re mission confi??e par Dumbledore. Mais le Seigneur des T??n??bres r??gne en ma??tre.	https://images-na.ssl-images-amazon.com/images/I/51A-5PmudyL._SX346_BO1,204,203,200_.jpg	Harry Potter et les Reliques de la Mort
2287965420	J. K. Rowling	Harry Potter a quatorze ans et entre en quatri??me ann??e ?? Poudlard. Une grande nouvelle attend Harry, Ron et Hermione ?? leur arriv??e : la tenue d'un tournoi de magie exceptionnel entre les plus c??l??bres ??coles de sorcellerie.	https://images-na.ssl-images-amazon.com/images/I/51TxleRCAfL._SX346_BO1,204,203,200_.jpg	Harry Potter et la Coupe de Feu
2287965419	J. K. Rowling	?? quinze ans, Harry entre en cinqui??me ann??e ?? Poudlard, mais il n'a jamais ??t?? si anxieux. L'adolescence, la perspective des examens et ces ??tranges cauchemars... 	https://images-na.ssl-images-amazon.com/images/I/515HTEZdHOL._SX346_BO1,204,203,200_.jpg	Harry Potter et l'Ordre du Ph??nix
2287965418	J. K. Rowling	Sirius Black, le dangereux criminel qui s'est ??chapp?? de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisi??me rentr??e.	https://images-na.ssl-images-amazon.com/images/I/51Fu0v5LcfL._SX346_BO1,204,203,200_.jpg	Harry Potter et le prisonnier d'Azkaban
2287965417	J. K. Rowling	Dans un monde de plus en plus inqui??tant, Harry se pr??pare ?? retrouver Ron et Hermione. Bient??t, ce sera la rentr??e ?? Poudlard, avec les autres ??tudiants de sixi??me ann??e. 	https://images-na.ssl-images-amazon.com/images/I/51AbaS6Xq7L._SX346_BO1,204,203,200_.jpg	Harry Potter et le Prince de Sang-M??l??
2287965416	J. K. Rowling	Une rentr??e fracassante en voiture volante, une ??trange mal??diction quis'abat sur les ??l??ves, cette deuxi??me ann??e ?? l'??cole des sorciers ne s'annonce pas de tout repos ! 	https://images-na.ssl-images-amazon.com/images/I/51SXJtzUeML._SX346_BO1,204,203,200_.jpg	Harry Potter et la Chambre des Secrets
2287965415	J. K. Rowling	Le jour de ses onze ans, Harry Potter, un orphelin ??lev?? par un oncle et une tante qui le d??testent, voit son existence boulevers??e. Un g??ant vient le chercher pour l'emmener ?? Poudlard, une ??cole de sorcellerie !	https://images-na.ssl-images-amazon.com/images/I/51egAWrxs3L._SX346_BO1,204,203,200_.jpg	Harry Potter ?? l'??cole des sorciers
2287965414	Cyprien	Roger, le robot intelligent, a fini par apprivoiser son loser d'humain, Hugo. Sans pour autant oublier la tendance de ce dernier ?? pr??f??rer la PLS ?? P??le emploi et la PS4 aux soir??es entre amis.	https://images-na.ssl-images-amazon.com/images/I/51POHVtQsEL._SX331_BO1,204,203,200_.jpg	Roger et ses humains - tome 2
2287965413	Cyprien	Hugo est un jeune homme de son temps, accro ?? Internet et aux jeux vid??o, entre deux petits boulots. Il voit sa vie soudainement boulevers??e le jour o?? il trouve dans son salon un robot dot?? d'une intelligence artificielle.	https://images-na.ssl-images-amazon.com/images/I/511FSVLgjPL._SX335_BO1,204,203,200_.jpg	Roger et ses humains - tome 1
2266290701	Marc Levy	Super, une nappe ?? colorier ! Des heures d"amusement en perspective, ?? partager bien ??videmment avec sa famille et ses amis !	https://images-na.ssl-images-amazon.com/images/I/41G81OmablL._SX303_BO1,204,203,200_.jpg	Une autre id??e du bonheur
2287965412	Michelle Obama	Il y a encore tant de choses que j'ignore au sujet de l'Am??rique, de la vie, et de ce que l'avenir nous r??serve. Mais je sais qui je suis. Mon p??re, Fraser, m'a appris ?? travailler dur, ?? rire souvent et ?? tenir parole.	https://images-na.ssl-images-amazon.com/images/I/41cZftVwUXL._SX324_BO1,204,203,200_.jpg	Devenir
2287965425	Eckhart Tolle	Le pouvoir du moment pr??sent est probablement l'un des livres les plus importants de notre ??poque. Son enseignement simple et n??anmoins profond a aid?? des millions de gens ?? travers le monde ?? trouver la paix int??rieure.	https://images-na.ssl-images-amazon.com/images/I/51ZZ5iLP%2BML._SX307_BO1,204,203,200_.jpg	Le pouvoir du moment pr??sent
2287965426	Paulo Coelho	Santiago, un jeune berger andalou, part ?? la recherche d'un tr??sor enfoui au pied des Pyramides.\nLorsqu'il rencontre l'Alchimiste dans le d??sert, celui-ci lui apprend ?? ??couter son c??ur, ?? lire les signes du destin..	https://images-na.ssl-images-amazon.com/images/I/41fDeh9mhIL._SX307_BO1,204,203,200_.jpg	L'Alchimiste
2287965429	Paulo Coelho	Ces pages contiennent les r??cits de certains moments que j'ai v??cus, des histoires que l'on m'a racont??es, des r??flexions que je me suis faites pendant que je parcourais un certaine ??tape du fleuve de ma vie.	https://images-na.ssl-images-amazon.com/images/I/41ECtARqCuL._SX307_BO1,204,203,200_.jpg	Comme le fleuve qui coule
2287965428	Paulo Coelho	Recueil de paraboles inspir??es ?? l'auteur par les sources et les folklores les plus divers, Maktub est un v??ritable tr??sor de sagesse.	https://images-na.ssl-images-amazon.com/images/I/31-z-XuQYGL._SX307_BO1,204,203,200_.jpg	Maktub
2287965430	Paulo Coelho	Je dois me reconstruire et, pour la premi??re fois de toute mon existence, accepter que j'aime un ??tre humain plus que moi-m??me	https://images-na.ssl-images-amazon.com/images/I/41uWeYi6RgL._SX307_BO1,204,203,200_.jpg	Le Zahir
2287965431	Guillaume Musso	un chirurgien r??put??. Il nagerait dans le bonheur le plus total si Ilena, la femme de sa vie, n'??tait pas morte trente ans auparavant. Mais, un jour, il fait une rencontre ??trange : un homme lui donne l'opportunit?? de revenir en arri??re.	https://images-na.ssl-images-amazon.com/images/I/41KBP2ZQGuL._SX303_BO1,204,203,200_.jpg	Seras-tu l?? ?
2287965432	Guillaume Musso	?? huit ans, Nathan s'est noy?? en plongeant dans un lac pour sauver une fillette.\nArr??t cardiaque, tunnel de lumi??re, mort clinique.\nEt puis, contre toute attente, de nouveau la vie.	https://images-na.ssl-images-amazon.com/images/I/41cVOTXOYfL._SX303_BO1,204,203,200_.jpg	Et apr??s...
2287965433	Miguel Ruiz	Don Miguel r??v??le la source des croyances limitatrices qui nous privent de joie et cr??ent des souffrances inutiles. Il montre en des termes tr??s simples comment on peut se lib??rer du conditionnement collectif.	https://images-na.ssl-images-amazon.com/images/I/51TUvGNRqvL._SX307_BO1,204,203,200_.jpg	Les quatre accords tolt??ques
2287965434	Paulo Coelho	D??cider. Changer. Se r??inventer. Agir. Exp??rimenter. R??ussir. Oser. R??ver. Gagner. D??couvrir. Eloigner. S'engager. Penser. Croire. Nous avons parfois besoin de redonner un sens ?? notre vie.	https://images-na.ssl-images-amazon.com/images/I/414yaeRJwvL._SX307_BO1,204,203,200_.jpg	Aleph
2287965436	Marc Levy	 Marc Levy est un multi-instrumentiste de l???imaginaire??? La plus jolie des com??dies romantiques. Tout est sourire dans ce roman. Entrez au 12 de la Cinqui??me Avenue. Vous verrez, c???est du plaisir ?? tous les ??tages.	https://images-na.ssl-images-amazon.com/images/I/51R2cJitdDL._SX309_BO1,204,203,200_.jpg	Une fille comme elle
\.


--
-- Data for Name: reading_challenge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reading_challenge (id, description, image_url, nbr_total_book, title) FROM stdin;
\.


--
-- Data for Name: utili_livre_done; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utili_livre_done (note, user_done_id, livre_done_isbn) FROM stdin;
4	10	2287965426
3	10	2287965433
4	10	2287965413
4	10	2287965423
4	10	2287965421
4	10	2287965420
4	10	2287965412
4	10	8755544441
4	10	2287965429
4	10	2287965430
4	10	2287965436
\.


--
-- Data for Name: utilisateur_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateur_roles (utilisateur_id, roles) FROM stdin;
9	0
10	1
\.


--
-- Data for Name: utilisateurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateurs (id, email, image_name, password, username) FROM stdin;
9	admin@email.com	\N	$2a$12$i1dLSyBW1Xi0EiqL7m4DWes0AkkwAZQjnq1vrLJXf/VC8Z1syjxI6	admin
10	client@email.com	hs.png	$2a$12$0z20VhMqgRJ/bkr90pfZreh1vptKFYzC6tO5xaPJCvCfcEOB1pxh.	Houssem
\.


--
-- Data for Name: utilisateurs_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateurs_books (utilisateurs_id, books_isbn) FROM stdin;
\.


--
-- Data for Name: utilisateurs_defis_lectures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateurs_defis_lectures (utilisateur_id, defis_lectures_id) FROM stdin;
10	0
10	2
10	3
\.


--
-- Data for Name: utilisateurs_livres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateurs_livres (utilisateurs_id, livres_isbn) FROM stdin;
10	2287965422
10	2287965434
\.


--
-- Data for Name: utilisateurs_reading_challenges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateurs_reading_challenges (utilisateur_id, reading_challenges_id) FROM stdin;
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 4, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (isbn);


--
-- Name: defis_lectures defis_lectures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defis_lectures
    ADD CONSTRAINT defis_lectures_pkey PRIMARY KEY (id);


--
-- Name: livres livres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livres
    ADD CONSTRAINT livres_pkey PRIMARY KEY (isbn);


--
-- Name: reading_challenge reading_challenge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reading_challenge
    ADD CONSTRAINT reading_challenge_pkey PRIMARY KEY (id);


--
-- Name: utilisateurs uk_6ldvumu3hqvnmmxy1b6lsxwqy; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT uk_6ldvumu3hqvnmmxy1b6lsxwqy UNIQUE (email);


--
-- Name: utili_livre_done utili_livre_done_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utili_livre_done
    ADD CONSTRAINT utili_livre_done_pkey PRIMARY KEY (user_done_id, livre_done_isbn);


--
-- Name: utilisateurs utilisateurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (id);


--
-- Name: utilisateurs_reading_challenges fk2kxkku9xyu1lh3vbmfpmohhbl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_reading_challenges
    ADD CONSTRAINT fk2kxkku9xyu1lh3vbmfpmohhbl FOREIGN KEY (reading_challenges_id) REFERENCES public.reading_challenge(id);


--
-- Name: utilisateurs_reading_challenges fk2lf30v5gdf56mji87myb3vrre; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_reading_challenges
    ADD CONSTRAINT fk2lf30v5gdf56mji87myb3vrre FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id);


--
-- Name: utilisateur_roles fk7fm9de8itma0gr6wpblfr5o0o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur_roles
    ADD CONSTRAINT fk7fm9de8itma0gr6wpblfr5o0o FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id);


--
-- Name: utilisateurs_livres fk840e6xdwk0ou89tu3hxrp0tt9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_livres
    ADD CONSTRAINT fk840e6xdwk0ou89tu3hxrp0tt9 FOREIGN KEY (livres_isbn) REFERENCES public.livres(isbn);


--
-- Name: utilisateurs_books fkc5scnhq844nncdsjti4693s3o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_books
    ADD CONSTRAINT fkc5scnhq844nncdsjti4693s3o FOREIGN KEY (books_isbn) REFERENCES public.books(isbn);


--
-- Name: utili_livre_done fkca89tuxmrerqf0vnqvx0l0ixt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utili_livre_done
    ADD CONSTRAINT fkca89tuxmrerqf0vnqvx0l0ixt FOREIGN KEY (user_done_id) REFERENCES public.utilisateurs(id);


--
-- Name: utilisateurs_defis_lectures fkj2koji8ks4p0i74wd896v19oy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_defis_lectures
    ADD CONSTRAINT fkj2koji8ks4p0i74wd896v19oy FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id);


--
-- Name: utilisateurs_defis_lectures fklohxbkjg22soo1ji67x84wu4j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_defis_lectures
    ADD CONSTRAINT fklohxbkjg22soo1ji67x84wu4j FOREIGN KEY (defis_lectures_id) REFERENCES public.defis_lectures(id);


--
-- Name: utilisateurs_books fkmmsyejfyxuqd76fmolt6rv3as; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_books
    ADD CONSTRAINT fkmmsyejfyxuqd76fmolt6rv3as FOREIGN KEY (utilisateurs_id) REFERENCES public.utilisateurs(id);


--
-- Name: utilisateurs_livres fkn5uw5b30hpac8cr34axkbbmmc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs_livres
    ADD CONSTRAINT fkn5uw5b30hpac8cr34axkbbmmc FOREIGN KEY (utilisateurs_id) REFERENCES public.utilisateurs(id);


--
-- Name: utili_livre_done fkspa8an2bk8etms6hptbs9m7ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utili_livre_done
    ADD CONSTRAINT fkspa8an2bk8etms6hptbs9m7ce FOREIGN KEY (livre_done_isbn) REFERENCES public.livres(isbn);


--
-- PostgreSQL database dump complete
--

