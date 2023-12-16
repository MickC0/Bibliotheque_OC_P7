--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

DROP DATABASE IF EXISTS db_oc_library;
--
-- Name: db_oc_library; Type: DATABASE; Schema: -; Owner: admin_library
--

CREATE DATABASE db_oc_library WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';


ALTER DATABASE db_oc_library OWNER TO admin_library;

\connect db_oc_library

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

SET default_with_oids = false;

--
-- Name: account; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.account (
    account_id integer NOT NULL,
    last_name character varying NOT NULL,
    first_name character varying NOT NULL,
    address_id integer NOT NULL,
    email character varying NOT NULL,
    phone_number character varying NOT NULL,
    roles character varying NOT NULL,
    permissions character varying,
    account_status boolean NOT NULL,
    password character varying NOT NULL,
    registration_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone
);


ALTER TABLE public.account OWNER TO admin_library;

--
-- Name: account_account_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.account_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_account_id_seq OWNER TO admin_library;

--
-- Name: account_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account.account_id;


--
-- Name: address; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.address (
    address_id integer NOT NULL,
    housenumber character varying NOT NULL,
    street character varying NOT NULL,
    postcode character varying(5) NOT NULL,
    city character varying(50) NOT NULL
);


ALTER TABLE public.address OWNER TO admin_library;

--
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.address_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_address_id_seq OWNER TO admin_library;

--
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;


--
-- Name: author; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.author (
    author_id integer NOT NULL,
    last_name character varying NOT NULL,
    first_name character varying NOT NULL
);


ALTER TABLE public.author OWNER TO admin_library;

--
-- Name: author_author_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.author_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.author_author_id_seq OWNER TO admin_library;

--
-- Name: author_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.author_author_id_seq OWNED BY public.author.author_id;


--
-- Name: book; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.book (
    book_id integer NOT NULL,
    edition_id integer NOT NULL,
    title character varying NOT NULL,
    author_id integer NOT NULL,
    isbn character varying NOT NULL,
    summary character varying NOT NULL,
    cover_id integer NOT NULL,
    stock integer
);


ALTER TABLE public.book OWNER TO admin_library;

--
-- Name: book_book_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.book_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_book_id_seq OWNER TO admin_library;

--
-- Name: book_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.book_book_id_seq OWNED BY public.book.book_id;


--
-- Name: categories_of_books; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.categories_of_books (
    category_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.categories_of_books OWNER TO admin_library;

--
-- Name: category; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    label character varying(20) NOT NULL
);


ALTER TABLE public.category OWNER TO admin_library;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.category_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_category_id_seq OWNER TO admin_library;

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- Name: copy; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.copy (
    copy_id integer NOT NULL,
    book_id integer NOT NULL,
    available boolean NOT NULL
);


ALTER TABLE public.copy OWNER TO admin_library;

--
-- Name: copy_copy_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.copy_copy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.copy_copy_id_seq OWNER TO admin_library;

--
-- Name: copy_copy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.copy_copy_id_seq OWNED BY public.copy.copy_id;


--
-- Name: cover; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.cover (
    cover_id integer NOT NULL,
    name character varying NOT NULL,
    url character varying NOT NULL
);


ALTER TABLE public.cover OWNER TO admin_library;

--
-- Name: cover_cover_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.cover_cover_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cover_cover_id_seq OWNER TO admin_library;

--
-- Name: cover_cover_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.cover_cover_id_seq OWNED BY public.cover.cover_id;


--
-- Name: edition; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.edition (
    edition_id integer NOT NULL,
    label character varying(20) NOT NULL
);


ALTER TABLE public.edition OWNER TO admin_library;

--
-- Name: edition_edition_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.edition_edition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.edition_edition_id_seq OWNER TO admin_library;

--
-- Name: edition_edition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.edition_edition_id_seq OWNED BY public.edition.edition_id;


--
-- Name: loan; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.loan (
    loan_id integer NOT NULL,
    copy_id integer NOT NULL,
    account_id integer NOT NULL,
    loan_status character varying NOT NULL,
    extend boolean DEFAULT false NOT NULL,
    begin_loan_date timestamp without time zone,
    ending_loan_date timestamp without time zone,
    extend_loan_date timestamp without time zone,
    return_loan_date timestamp without time zone
);


ALTER TABLE public.loan OWNER TO admin_library;

--
-- Name: loan_loan_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_library
--

CREATE SEQUENCE public.loan_loan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loan_loan_id_seq OWNER TO admin_library;

--
-- Name: loan_loan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.loan_loan_id_seq OWNED BY public.loan.loan_id;


--
-- Name: account account_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.account ALTER COLUMN account_id SET DEFAULT nextval('public.account_account_id_seq'::regclass);


--
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- Name: author author_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.author ALTER COLUMN author_id SET DEFAULT nextval('public.author_author_id_seq'::regclass);


--
-- Name: book book_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book ALTER COLUMN book_id SET DEFAULT nextval('public.book_book_id_seq'::regclass);


--
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- Name: copy copy_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.copy ALTER COLUMN copy_id SET DEFAULT nextval('public.copy_copy_id_seq'::regclass);


--
-- Name: cover cover_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.cover ALTER COLUMN cover_id SET DEFAULT nextval('public.cover_cover_id_seq'::regclass);


--
-- Name: edition edition_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.edition ALTER COLUMN edition_id SET DEFAULT nextval('public.edition_edition_id_seq'::regclass);


--
-- Name: loan loan_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan ALTER COLUMN loan_id SET DEFAULT nextval('public.loan_loan_id_seq'::regclass);


--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.account VALUES (3, 'Christ', 'Jesus', 2, 'jc@gmail.com', '0000000000', 'EMPLOYEE', 'READ,WRITE,UPDATE', true, '$2a$10$O2o7CwtKM6eJSJ/cn0uUguFsyZ6BpKGyiua3fsq1gCHMA7F.3EPem', '2020-03-23 21:12:53.488', '2020-03-23 21:12:53.488');
INSERT INTO public.account VALUES (4, 'Nobody', 'Jesuis', 3, 'jn@gmail.com', '0123456789', 'CLIENT', 'READ', true, '$2a$10$nfrW4m4Q3Fc8Gc/Ss2TrJeXQLu.bjdZ6VCf7Vtn3CEC9yqRg0c2hC', '2020-03-23 21:12:53.586', '2020-03-23 21:12:53.586');
INSERT INTO public.account VALUES (2, 'Coz', 'Mickael', 1, 'coz.mickael@gmail.com', '0123456789', 'ADMIN', 'READ,WRITE,UPDATE,DELETE', true, '$2a$10$gGwLEHgYgT9rEkEf7.i6Gu7N0G.TluyIam7iwPmjjiE.29duT1DO.', '2020-03-23 21:12:53.344', '2020-03-23 21:12:53.345');
INSERT INTO public.account VALUES (1, 'bacth', 'bacth', 4, 'mc.ocform@gmail.com', '0000000000', 'BATCH', 'READ,WRITE,UPDATE,DELETE', true, '$2a$10$uHS0iRVkWg6Nhk/E8HlFZOsfN6lJ19hNZXVjw0MueDBN2APXa9i6q', '2020-04-09 15:16:02.671208', '2020-04-09 15:16:02.672208');


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.address VALUES (2, '2', 'Rue du Paradis', '77777', 'Hell');
INSERT INTO public.address VALUES (3, '1', 'Rue Je sais pas', '12345', 'Nullepart');
INSERT INTO public.address VALUES (1, '1', 'Rue du Paradis', '77777', 'OCLand');
INSERT INTO public.address VALUES (4, '1', 'rue principal', '77777', 'OCland');


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.author VALUES (1, 'Morgan', 'Richard');
INSERT INTO public.author VALUES (2, 'Hobb', 'Robin');
INSERT INTO public.author VALUES (3, 'Weber', 'Bernard');
INSERT INTO public.author VALUES (4, 'Hamilton', 'Laurell K.');
INSERT INTO public.author VALUES (5, 'Sapkowski', 'Andrzej');


--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.book VALUES (1, 1, 'Carbone modifié', 1, '2914370423', 'Action, aventure, cyber, thriller, tous les genres les plus porteurs du cinéma hollywoodien sont réunis dans ce roman actuellement en cours d''adaptation cinématographique... Au 26e siècle, l''humanité s''est répandue à travers la galaxie, emportant ses religions et ses conflits raciaux dans la froide arène de l''espace. Tandis que ces tensions font rage et que de sales petites guerres éclatent tous les quatre matins, le Protectorat des Nations unies maintient une poigne de fer sur les nouveaux mondes, avec l''aide de ses troupes de choc d''élite : les Corps Diplomatiques. En outre, la technologie a apporté ce que la religion ne pouvait garantir ; quand votre conscience peut être stockée dans une pile corticale et téléchargée dans un nouveau corps, même la mort n''est plus qu''un dérangement mineur. Tant que vous pouvez vous offrir un nouveau corps... L''ex-Corps Diplomatique Takeshi Kovacs avait déjà été tué, avant ; c''étaient les risques du métier, mais sa dernière mort en date a été particulièrement brutale. Injecté à travers des années-lumières, réenveloppé dans un corps à San Francisco, sur la Vieille Terre, et balancé au centre d''une conspiration vicieuse (même selon les critères d''une société qui a oublié la valeur d''une vie humaine), il réalise bientôt que la cartouche qui a troué sa poitrine sur Harlan n''était que le début de ses problèmes... Un riche magnat demande à Takeshi de l''aider à élucider sa propre mort. La police a conclu à un suicide. Mais pourquoi se serait-il suicidé alors qu''il sauvegardait son esprit tous les jours, certain de revenir parmi les vivants ?', 1, 3);
INSERT INTO public.book VALUES (2, 1, 'Anges déchus', 1, '2914370423', 'Réenveloppé dans un corps conçu pour le combat tactique, Takeshi Kovacs est désormais un mercenaire engagé dans une guerre sanglante qui ravage la planète Sanction IV.
Kovacs profite du conflit pour rejoindre un petit groupe qui essaie de s’approprier une découverte archéologique inestimable. Et, de fait, il est propulsé dans un maelström d’intrigues et de trahisons en comparaison duquel le conflit qu’il vient de quitter fait pâle figure.
En effet, toutes les corporations tueraient pour cette découverte. Car elle risque de signifier la fin de l’humanité ou le début d’une nouvelle ère. Or dans ce XXVIIe  siècle d’une humanité ravagée par la violence, les hommes sont bien mal préparés à l’héritage qui s’offre soudain à eux : les étoiles !', 2, 3);
INSERT INTO public.book VALUES (3, 1, 'Furies déchainées', 1, '2811202129', 'Takeshi Kovacs crie vengeance !
Il a déclaré la guerre aux extrémistes religieux de la Nouvelle Apocalypse et est bien décidé à les éliminer jusqu''au dernier. À peine de retour sur son monde natal, Harlan la planète océan, Kovacs est jeté dans un ouragan d''intrigues politiques et de mystères technologiques tandis que les fantômes de son propre passé de violence et se rappellent à lui. Quellcrist Falconer, leader révolutionnaire, serait revenu d''entre les morts ! Et qui lance-t-on à ses trousses ? Une réplique illégale de Kovacs, en hibernation depuis deux cents ans, qui ne compte pas partager sa nouvelle existence avec un sosie criminel sur le retour.
Dans ce chaos, une chose est sûre : un certain Takeshi Kovacs va devoir mourir. Pour de bon.', 3, 3);
INSERT INTO public.book VALUES (4, 3, 'Les Fourmis', 3, '2253063339', 'La longue période d''hibernation prend fin à Bel-O-Kan, 
		la cité des fourmis. Tout un monde s''éveille lentement. 
		327e, un mâle sexué parti en expédition, retrouve ses compagnons décimés sans avoir même tenté de lutter. 
		Les fourmis naines ont-elles développé une arme secrète et redoutable ? Aux côtés de la femelle 56e et du soldat 103 683e, 
		l''enquête commence. Et ne va pas s''arrêter aux portes de la fourmilière. 
		Pendant ce temps chez les hommes, Jonathan Wells a hérité de l''appartement de son oncle, avec interdiction de descendre à la cave. Un concours de circonstances l''y amènera, ainsi que son fils et sa femme, suivis par des membres des forces de l''ordre. Quel est le secret de cette cave ?', 4, 3);
INSERT INTO public.book VALUES (5, 3, 'Le jour des Fourmis', 3, '2253137243', 'Sommes-nous des dieux ? Sommes-nous des monstres ?
Pour le savoir, une fourmi va partir à la découverte de notre monde et connaître mille aventures dans notre civilisation de géants. Parallèlement, un groupe de scientifiques humains va, au fil d''un thriller hallucinant, comprendre la richesse et la magie de la civilisation des fourmis, si proche et pourtant si peu connue.', 5, 3);
INSERT INTO public.book VALUES (6, 3, 'La révolution des Fourmis', 3, '2253144452', 'Que peuvent nous envier les fourmis ? L''humour, l''amour, l''art. Que peuvent leur envier les hommes ? L''harmonie avec la nature, l''absence de peur, la communication absolue. Après des millénaires d&rsquo;ignorance, les deux civilisations les plus évoluées de la planète vont-elles enfin pouvoir se rencontrer et se comprendre ?<br />Sans se connaître, Julie Pinson, une étudiante rebelle, et 103e, une fourmi exploratrice, vont essayer de faire la révolution dans leur monde respectif pour le faire évoluer.', 6, 3);
INSERT INTO public.book VALUES (7, 2, 'Anita Blake - Plaisirs coupables', 4, '2811200924', 'Mon nom est Blake, Anita Blake. Les vampires, eux, m''appellent « l''Exécutrice » et par égard pour les oreilles les plus chastes, je ne vous dirai pas comment, moi, je les appelle. Ma spécialité, au départ, c''était plutôt les zombies. Je relève les morts à la nuit tombée pour une petite PME. Ce n''est pas toujours très exaltant et mon patron m''exploite honteusement, mais quand on a un vrai don, ce serait idiot de ne pas s''en servir. Tuer des vampires, c''est autre chose, une vieille passion liée à des souvenirs d''enfance. Depuis qu''ils sont officiellement reconnus et ont pignon sur rue, ils se croient tout permis. Certes, il y en a de charmants, voire très sexy, mais il y en a aussi qui abusent. Ceux-là je les élimine. Rien de tel pour garder la forme : ça vous fouette le sang !', 7, 4);
INSERT INTO public.book VALUES (10, 4, 'Le Fou et L''Assassin', 2, '2756411183', 'Fitz, l''assassin royal, est à la retraite et coule des jours paisibles, entouré de sa femme Molly et de ses enfants. Un soir, trois inconnus se présentent en se disant ménestrels puis s''enfuient dans une tempête de neige, tandis qu''une messagère disparaît soudainement sans avoir remis son message à Fitz. Quinze ans plus tard, Fitz se désole de n''avoir aucune nouvelle du Fou...', 10, 5);
INSERT INTO public.book VALUES (11, 4, 'La Fille de L''Assassin', 2, '2290119121', 'La fille de l''assassin Abeille n''a jamais été aussi seule que depuis la mort de sa mère. Entre un père incompétent et un personnel de maison qui le plus souvent la méprise, la jeune fille mène une existence solitaire et sauvage sur le domaine de Flétribois, dont elle découvre peu à peu tous les secrets. Un jour, elle entraîne son père dans les jardins de la propriété, où il découvre une femme blessée qui se révèle être la dernière messagère du fou, et qui lui apporte un bien curieux message...', 11, 5);
INSERT INTO public.book VALUES (12, 4, 'En quête de vengeance', 2, '9782756416960', 'FitzChevalerie et le Fou ont changé le cours de l’histoire. Puis leurs chemins se sont séparés. Le bâtard de sang royal s’est détourné de ses activités pour mener une existence paisible à Flétribois, quant à son fidèle compagnon, il n’en a plus entendu parler. Jusqu’à ce qu’il le retrouve, mutilé, au hasard d’une balade avec Abeille. Les graves problèmes de santé de son vieil ami et les intrigues à la cour font baisser la garde de Fitz alors que survient le pire : sa fille est enlevée. Le Fou, au crépuscule de sa vie, a laissé échapper des secrets qui pourraient bien conduire de pâles inconnus à user d’Abeille comme de leur prochaine arme. Mais une magie ancienne coule encore dans les veines de FitzChevalerie Loinvoyant et, bien que ses talents d’Assassin se soient amoindris avec le temps, ennemis comme amis vont apprendre qu’il reste toujours la vengeance à celui qui a tout perdu.', 12, 5);
INSERT INTO public.book VALUES (13, 4, 'Le retour de l''Assassin', 2, '2756418013', 'Fitz, l''assassin royal, est appelé à reprendre du service pour retrouver ceux qui ont enlevé sa fille Abeille et son amie Evite.', 13, 5);
INSERT INTO public.book VALUES (14, 4, 'Sur les rives de l''Art', 2, '2756422398', 'Abeille, la fille de Fitz, a été enlevée par les Servants qui l''emmènent partout avec eux à travers la moitié du monde car elle doit jouer un rôle crucial dans leurs plans. La croyant morte, Fitz et le Fou décident de se venger et se dirigent vers l''île lointaine où résident les Servants, dans le dessein de tous les tuer.', 14, 5);
INSERT INTO public.book VALUES (15, 4, 'Le destin de l''Assassin', 2, '2756422770', 'La fin de la saga', 15, 5);
INSERT INTO public.book VALUES (16, 2, 'The Witcher - Le Dernier Voeu', 5, '2811205063', 'Geralt de Riv est un homme inquiétant, un mutant devenu le parfait assassin grâce à la magie et à un long entraînement. En ces temps obscurs, ogres, goules et vampires pullulent, et les magiciens sont des manipulateurs experts. Contre ces menaces, il faut un tueur à gages à la hauteur, et Geralt est plus qu''un guerrier ou un mage. C''est un sorceleur. Au cours de ses aventures, il rencontrera une magicienne capricieuse aux charmes vénéneux, un troubadour paillard au grand coeur... et, au terme de sa quête, peut-être réalisera-t-il son dernier voeu: retrouver son humanité perdue.', 16, 6);
INSERT INTO public.book VALUES (17, 2, 'The Witcher - L''Epée de la providence', 5, '2811205063', 'Geralt de Riv n''en a pas fini avec sa vie errante de tueur de monstres. Fidèle aux règles de la corporation maudite des sorceleurs, Geralt assume sa mission sans faillir dans un monde hostile et corrompu qui ne laisse aucune place à l''espoir. Mais la rencontre avec la petite Ciri, l''Enfant élue, va donner un sens nouveau à l''existence de ce héros solitaire. Geralt cessera-t-il enfin de fuir devant la mort pour affronter la providence et percer à jour son véritable destin ?', 17, 6);
INSERT INTO public.book VALUES (18, 2, 'The Witcher - Le Sang des elfes', 5, '2811205705', 'Le royaume de Cintra a été entièrement détruit. Seule la petite princesse Ciri a survécu. Alors qu''elle tente de fuir la capitale, elle croise le chemin de Geralt de Riv. Pressentant chez l''enfant des dons exceptionnels, il la conduit à Kaer Morhen, l''antre des sorceleurs. Initiée aux arts magiques, Ciri y révèle bien vite sa véritable nature et l''ampleur de ses pouvoirs. Mais la princesse est en danger.
Un mystérieux sorcier est à sa recherche. Il est prêt à tout pour s''emparer d''elle et n''hésitera pas à menacer les amis du sorceleur pour arriver à ses fins...', 18, 6);
INSERT INTO public.book VALUES (8, 2, 'Anita Blake - Le cadavre rieur', 4, '2811200932', 'Savez-vous ce que c''est qu''une « chèvre blanche » ? Eh bien, en jargon vaudou, c''est un doux euphémisme pour désigner la victime d''un sacrifice humain. Et quand ces types sont venus me demander de relever un mort de deux cents ans et des poussières, j''ai tout de suite compris ce que ça impliquait. Je veux bien égorger des poulets, un mouton, voire un buffle dans les cas désespérés... mais ça, non ! Pas question... Mais je les ai envoyés promener, eux et leur chèque d''un million de dollars. L''ennui, c''est que tout le monde n''a pas mon sens moral. Que ces salauds vont bien dégoter quelqu''un pour faire le boulot. Qu''on va se retrouver avec un mort-vivant raide dingue, tout sauf végétarien, et semant la panique. Et que c''est encore la petite Anita qui va devoir se le coltiner ! Comme si je n''avais pas déjà assez de problèmes avec les vampires...', 8, 4);
INSERT INTO public.book VALUES (9, 2, 'Anita Blake - Le cirque des damnés', 4, '2811200940', 'Je vous le dis franchement : je stresse ! Nous vivons vraiment dans un univers IM-PI-TOYABLE ! Prenez par exemple Jean-Claude, propriétaire, entre autres, du Cirque des Damnés, une boîte branchée des plus rentables. Eh bien, il n''est entouré que de gens qui veulent soit lui faire la peau, soit prendre sa place, voire les deux. Tous des vampires, bien sûr, avec des dents qui rayent le parquet. Vous me direz que, même s''il a le sens de l''humour, J.-C., lui aussi est un vampire et que sa principale ambition semble être de faire de moi son esclave. Peut-être finalement devrais-je laisser les loups-garous et autres se dévorer entre eux. Et plutôt me consacrer à empêcher mes chers zombies de nuire...', 9, 4);


--
-- Data for Name: categories_of_books; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.categories_of_books VALUES (1, 10);
INSERT INTO public.categories_of_books VALUES (1, 11);
INSERT INTO public.categories_of_books VALUES (1, 12);
INSERT INTO public.categories_of_books VALUES (1, 13);
INSERT INTO public.categories_of_books VALUES (1, 14);
INSERT INTO public.categories_of_books VALUES (1, 15);
INSERT INTO public.categories_of_books VALUES (1, 16);
INSERT INTO public.categories_of_books VALUES (1, 17);
INSERT INTO public.categories_of_books VALUES (1, 18);
INSERT INTO public.categories_of_books VALUES (2, 7);
INSERT INTO public.categories_of_books VALUES (2, 8);
INSERT INTO public.categories_of_books VALUES (2, 9);
INSERT INTO public.categories_of_books VALUES (3, 1);
INSERT INTO public.categories_of_books VALUES (3, 2);
INSERT INTO public.categories_of_books VALUES (3, 3);
INSERT INTO public.categories_of_books VALUES (4, 4);
INSERT INTO public.categories_of_books VALUES (4, 5);
INSERT INTO public.categories_of_books VALUES (4, 6);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.category VALUES (1, 'Fantasy');
INSERT INTO public.category VALUES (2, 'Bit-Lit');
INSERT INTO public.category VALUES (3, 'Science Fiction');
INSERT INTO public.category VALUES (4, 'Fantastic');


--
-- Data for Name: copy; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.copy VALUES (1, 1, true);
INSERT INTO public.copy VALUES (4, 2, true);
INSERT INTO public.copy VALUES (5, 2, true);
INSERT INTO public.copy VALUES (6, 2, true);
INSERT INTO public.copy VALUES (7, 3, true);
INSERT INTO public.copy VALUES (8, 3, true);
INSERT INTO public.copy VALUES (9, 3, true);
INSERT INTO public.copy VALUES (10, 4, true);
INSERT INTO public.copy VALUES (11, 4, true);
INSERT INTO public.copy VALUES (12, 4, true);
INSERT INTO public.copy VALUES (13, 5, true);
INSERT INTO public.copy VALUES (14, 5, true);
INSERT INTO public.copy VALUES (15, 5, true);
INSERT INTO public.copy VALUES (16, 6, true);
INSERT INTO public.copy VALUES (17, 6, true);
INSERT INTO public.copy VALUES (18, 6, true);
INSERT INTO public.copy VALUES (19, 7, true);
INSERT INTO public.copy VALUES (20, 7, true);
INSERT INTO public.copy VALUES (22, 7, true);
INSERT INTO public.copy VALUES (23, 8, true);
INSERT INTO public.copy VALUES (24, 8, true);
INSERT INTO public.copy VALUES (25, 8, true);
INSERT INTO public.copy VALUES (26, 8, true);
INSERT INTO public.copy VALUES (27, 9, true);
INSERT INTO public.copy VALUES (28, 9, true);
INSERT INTO public.copy VALUES (29, 9, true);
INSERT INTO public.copy VALUES (30, 9, true);
INSERT INTO public.copy VALUES (31, 10, true);
INSERT INTO public.copy VALUES (33, 10, true);
INSERT INTO public.copy VALUES (34, 10, true);
INSERT INTO public.copy VALUES (35, 10, true);
INSERT INTO public.copy VALUES (36, 11, true);
INSERT INTO public.copy VALUES (37, 11, true);
INSERT INTO public.copy VALUES (38, 11, true);
INSERT INTO public.copy VALUES (39, 11, true);
INSERT INTO public.copy VALUES (40, 11, true);
INSERT INTO public.copy VALUES (41, 12, true);
INSERT INTO public.copy VALUES (42, 12, true);
INSERT INTO public.copy VALUES (43, 12, true);
INSERT INTO public.copy VALUES (44, 12, true);
INSERT INTO public.copy VALUES (45, 12, true);
INSERT INTO public.copy VALUES (46, 13, true);
INSERT INTO public.copy VALUES (47, 13, true);
INSERT INTO public.copy VALUES (48, 13, true);
INSERT INTO public.copy VALUES (49, 13, true);
INSERT INTO public.copy VALUES (50, 13, true);
INSERT INTO public.copy VALUES (51, 14, true);
INSERT INTO public.copy VALUES (52, 14, true);
INSERT INTO public.copy VALUES (53, 14, true);
INSERT INTO public.copy VALUES (54, 14, true);
INSERT INTO public.copy VALUES (55, 14, true);
INSERT INTO public.copy VALUES (56, 15, true);
INSERT INTO public.copy VALUES (57, 15, true);
INSERT INTO public.copy VALUES (58, 15, true);
INSERT INTO public.copy VALUES (59, 15, true);
INSERT INTO public.copy VALUES (60, 15, true);
INSERT INTO public.copy VALUES (61, 16, true);
INSERT INTO public.copy VALUES (63, 16, true);
INSERT INTO public.copy VALUES (64, 16, true);
INSERT INTO public.copy VALUES (65, 16, true);
INSERT INTO public.copy VALUES (66, 16, true);
INSERT INTO public.copy VALUES (67, 17, true);
INSERT INTO public.copy VALUES (68, 17, true);
INSERT INTO public.copy VALUES (69, 17, true);
INSERT INTO public.copy VALUES (70, 17, true);
INSERT INTO public.copy VALUES (71, 17, true);
INSERT INTO public.copy VALUES (72, 17, true);
INSERT INTO public.copy VALUES (73, 18, true);
INSERT INTO public.copy VALUES (74, 18, true);
INSERT INTO public.copy VALUES (75, 18, true);
INSERT INTO public.copy VALUES (76, 18, true);
INSERT INTO public.copy VALUES (77, 18, true);
INSERT INTO public.copy VALUES (78, 18, true);
INSERT INTO public.copy VALUES (2, 1, false);
INSERT INTO public.copy VALUES (21, 7, false);
INSERT INTO public.copy VALUES (32, 10, false);
INSERT INTO public.copy VALUES (3, 1, true);
INSERT INTO public.copy VALUES (62, 16, false);


--
-- Data for Name: cover; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.cover VALUES (13, '04-Le-retour-de-l-assassin.jpg', '/library/image/covers/04-Le-retour-de-l-assassin.jpg');
INSERT INTO public.cover VALUES (16, 'Sorceleur-T1-Le-Dernier-Voeu', '/library/image/covers/Sorceleur-T1-Le-Dernier-Voeu.jpg');
INSERT INTO public.cover VALUES (15, '06-Le-destin-de-l-assassin.jpg', '/library/image/covers/06-Le-destin-de-l-assassin.jpg');
INSERT INTO public.cover VALUES (4, '01-fourmis_fourmis.jpg', '/library/image/covers/01-fourmis_fourmis.jpg');
INSERT INTO public.cover VALUES (12, '03-Le-Fou-et-l-Assassin-Tome-3-En-quete-de-vengeance.jpg', '/library/image/covers/03-Le-Fou-et-l-Assassin-Tome-3-En-quete-de-vengeance.jpg');
INSERT INTO public.cover VALUES (9, '03-Le-cirque-des-damnes.jpg', '/library/image/covers/03-Le-cirque-des-damnes.jpg');
INSERT INTO public.cover VALUES (6, '03-fourmis_revolution.jpg', '/library/image/covers/03-fourmis_revolution.jpg');
INSERT INTO public.cover VALUES (10, '01-Le-Fou-et-l-Assassin-Tome-1.jpg', '/library/image/covers/01-Le-Fou-et-l-Assassin-Tome-1.jpg');
INSERT INTO public.cover VALUES (3, '03-furies-dechainees.jpg', '/library/image/covers/03-furies-dechainees.jpg');
INSERT INTO public.cover VALUES (18, 'Sorceleur-T3-Le-Sang-des-elfes.jpg', '/library/image/covers/Sorceleur-T3-Le-Sang-des-elfes.jpg');
INSERT INTO public.cover VALUES (1, '01-carbone-modifie.jpg', '/library/image/covers/01-carbone-modifie.jpg');
INSERT INTO public.cover VALUES (7, '01-Plaisirs-coupables.jpg', '/library/image/covers/01-Plaisirs-coupables.jpg');
INSERT INTO public.cover VALUES (14, '05-Le-Fou-et-l-Assassin-Tome-5-Sur-les-rives-de-l-Art.jpg', '/library/image/covers/05-Le-Fou-et-l-Assassin-Tome-5-Sur-les-rives-de-l-Art.jpg');
INSERT INTO public.cover VALUES (5, '02-fourmis_jour.jpg', '/library/image/covers/02-fourmis_jour.jpg');
INSERT INTO public.cover VALUES (2, '02-anges-dechus.jpg', '/library/image/covers/02-anges-dechus.jpg');
INSERT INTO public.cover VALUES (8, '02-Le-cadavre-rieur.jpg', '/library/image/covers/02-Le-cadavre-rieur.jpg');
INSERT INTO public.cover VALUES (17, 'Sorceleur-T2-L-Epee-de-la-providence.jpg', '/library/image/covers/Sorceleur-T2-L-Epee-de-la-providence.jpg');
INSERT INTO public.cover VALUES (11, '02-La-fille-de-l-Assassin-Tome-2.jpg', '/library/image/covers/02-La-fille-de-l-Assassin-Tome-2.jpg');


--
-- Data for Name: edition; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.edition VALUES (1, 'Bragelonne');
INSERT INTO public.edition VALUES (2, 'Milady');
INSERT INTO public.edition VALUES (3, 'Lgf');
INSERT INTO public.edition VALUES (4, 'Pygmalion');


--
-- Data for Name: loan; Type: TABLE DATA; Schema: public; Owner: admin_library
--

INSERT INTO public.loan VALUES (3, 62, 2, 'Prolongé', true, '2020-03-01 10:20:55', '2020-03-29 10:20:55', '2020-04-26 10:20:55', NULL);
INSERT INTO public.loan VALUES (4, 32, 2, 'En retard', true, '2020-02-01 10:20:55', '2020-02-29 10:20:55', '2020-03-28 10:20:55', NULL);
INSERT INTO public.loan VALUES (5, 10, 2, 'Rendu', false, '2020-03-05 14:42:52', '2020-04-02 14:42:52', '2020-04-30 14:42:52', '2020-03-12 14:45:33');
INSERT INTO public.loan VALUES (1, 2, 2, 'En cours', false, '2020-04-04 21:58:23.566', '2020-05-02 21:58:23.566', '2020-05-30 21:58:23.566', NULL);
INSERT INTO public.loan VALUES (2, 21, 2, 'En retard', false, '2020-03-13 10:20:55', '2020-04-10 10:20:55', '2020-05-08 10:20:55', NULL);


--
-- Name: account_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.account_account_id_seq', 5, true);


--
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.address_address_id_seq', 4, true);


--
-- Name: author_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.author_author_id_seq', 5, true);


--
-- Name: book_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.book_book_id_seq', 18, true);


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.category_category_id_seq', 4, true);


--
-- Name: copy_copy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.copy_copy_id_seq', 78, true);


--
-- Name: cover_cover_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.cover_cover_id_seq', 18, true);


--
-- Name: edition_edition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.edition_edition_id_seq', 4, true);


--
-- Name: loan_loan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_library
--

SELECT pg_catalog.setval('public.loan_loan_id_seq', 4, true);


--
-- Name: account account_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pk PRIMARY KEY (account_id);


--
-- Name: address address_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pk PRIMARY KEY (address_id);


--
-- Name: author author_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pk PRIMARY KEY (author_id);


--
-- Name: book book_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pk PRIMARY KEY (book_id);


--
-- Name: categories_of_books categories_of_books_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.categories_of_books
    ADD CONSTRAINT categories_of_books_pk PRIMARY KEY (category_id, book_id);


--
-- Name: category category_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pk PRIMARY KEY (category_id);


--
-- Name: copy copy_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.copy
    ADD CONSTRAINT copy_pk PRIMARY KEY (copy_id);


--
-- Name: cover cover_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.cover
    ADD CONSTRAINT cover_pk PRIMARY KEY (cover_id);


--
-- Name: edition edition_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.edition
    ADD CONSTRAINT edition_pk PRIMARY KEY (edition_id);


--
-- Name: loan loan_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan
    ADD CONSTRAINT loan_pk PRIMARY KEY (loan_id);


--
-- Name: loan account_loan_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan
    ADD CONSTRAINT account_loan_fk FOREIGN KEY (account_id) REFERENCES public.account(account_id) ON DELETE CASCADE;


--
-- Name: account address_account_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT address_account_fk FOREIGN KEY (address_id) REFERENCES public.address(address_id);


--
-- Name: book author_book_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT author_book_fk FOREIGN KEY (author_id) REFERENCES public.author(author_id);


--
-- Name: copy book_book_copy_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.copy
    ADD CONSTRAINT book_book_copy_fk FOREIGN KEY (book_id) REFERENCES public.book(book_id);


--
-- Name: categories_of_books book_categories_of_books_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.categories_of_books
    ADD CONSTRAINT book_categories_of_books_fk FOREIGN KEY (book_id) REFERENCES public.book(book_id);


--
-- Name: loan book_copy_loan_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan
    ADD CONSTRAINT book_copy_loan_fk FOREIGN KEY (copy_id) REFERENCES public.copy(copy_id);


--
-- Name: categories_of_books category_categories_of_books_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.categories_of_books
    ADD CONSTRAINT category_categories_of_books_fk FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: book edition_book_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT edition_book_fk FOREIGN KEY (edition_id) REFERENCES public.edition(edition_id);


--
-- Name: book image_book_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT image_book_fk FOREIGN KEY (cover_id) REFERENCES public.cover(cover_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

