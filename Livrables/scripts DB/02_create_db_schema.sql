--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-17 13:10:47

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

DROP DATABASE db_oc_library;
--
-- TOC entry 2908 (class 1262 OID 66130)
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

--
-- TOC entry 212 (class 1259 OID 66206)
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
-- TOC entry 211 (class 1259 OID 66204)
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
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 211
-- Name: account_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account.account_id;


--
-- TOC entry 201 (class 1259 OID 66149)
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
-- TOC entry 200 (class 1259 OID 66147)
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
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 200
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;


--
-- TOC entry 203 (class 1259 OID 66160)
-- Name: author; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.author (
    author_id integer NOT NULL,
    last_name character varying NOT NULL,
    first_name character varying NOT NULL
);


ALTER TABLE public.author OWNER TO admin_library;

--
-- TOC entry 202 (class 1259 OID 66158)
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
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 202
-- Name: author_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.author_author_id_seq OWNED BY public.author.author_id;


--
-- TOC entry 207 (class 1259 OID 66182)
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
-- TOC entry 206 (class 1259 OID 66180)
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
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 206
-- Name: book_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.book_book_id_seq OWNED BY public.book.book_id;


--
-- TOC entry 210 (class 1259 OID 66199)
-- Name: categories_of_books; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.categories_of_books (
    category_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.categories_of_books OWNER TO admin_library;

--
-- TOC entry 199 (class 1259 OID 66141)
-- Name: category; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    label character varying(20) NOT NULL
);


ALTER TABLE public.category OWNER TO admin_library;

--
-- TOC entry 198 (class 1259 OID 66139)
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
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 198
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- TOC entry 209 (class 1259 OID 66193)
-- Name: copy; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.copy (
    copy_id integer NOT NULL,
    book_id integer NOT NULL,
    available boolean NOT NULL
);


ALTER TABLE public.copy OWNER TO admin_library;

--
-- TOC entry 208 (class 1259 OID 66191)
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
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 208
-- Name: copy_copy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.copy_copy_id_seq OWNED BY public.copy.copy_id;


--
-- TOC entry 205 (class 1259 OID 66171)
-- Name: cover; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.cover (
    cover_id integer NOT NULL,
    name character varying NOT NULL,
    url character varying NOT NULL
);


ALTER TABLE public.cover OWNER TO admin_library;

--
-- TOC entry 204 (class 1259 OID 66169)
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
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 204
-- Name: cover_cover_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.cover_cover_id_seq OWNED BY public.cover.cover_id;


--
-- TOC entry 197 (class 1259 OID 66133)
-- Name: edition; Type: TABLE; Schema: public; Owner: admin_library
--

CREATE TABLE public.edition (
    edition_id integer NOT NULL,
    label character varying(20) NOT NULL
);


ALTER TABLE public.edition OWNER TO admin_library;

--
-- TOC entry 196 (class 1259 OID 66131)
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
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 196
-- Name: edition_edition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.edition_edition_id_seq OWNED BY public.edition.edition_id;


--
-- TOC entry 214 (class 1259 OID 66217)
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
-- TOC entry 213 (class 1259 OID 66215)
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
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 213
-- Name: loan_loan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_library
--

ALTER SEQUENCE public.loan_loan_id_seq OWNED BY public.loan.loan_id;


--
-- TOC entry 2750 (class 2604 OID 66209)
-- Name: account account_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.account ALTER COLUMN account_id SET DEFAULT nextval('public.account_account_id_seq'::regclass);


--
-- TOC entry 2745 (class 2604 OID 66152)
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- TOC entry 2746 (class 2604 OID 66163)
-- Name: author author_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.author ALTER COLUMN author_id SET DEFAULT nextval('public.author_author_id_seq'::regclass);


--
-- TOC entry 2748 (class 2604 OID 66185)
-- Name: book book_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book ALTER COLUMN book_id SET DEFAULT nextval('public.book_book_id_seq'::regclass);


--
-- TOC entry 2744 (class 2604 OID 66144)
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- TOC entry 2749 (class 2604 OID 66196)
-- Name: copy copy_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.copy ALTER COLUMN copy_id SET DEFAULT nextval('public.copy_copy_id_seq'::regclass);


--
-- TOC entry 2747 (class 2604 OID 66174)
-- Name: cover cover_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.cover ALTER COLUMN cover_id SET DEFAULT nextval('public.cover_cover_id_seq'::regclass);


--
-- TOC entry 2743 (class 2604 OID 66136)
-- Name: edition edition_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.edition ALTER COLUMN edition_id SET DEFAULT nextval('public.edition_edition_id_seq'::regclass);


--
-- TOC entry 2751 (class 2604 OID 66220)
-- Name: loan loan_id; Type: DEFAULT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan ALTER COLUMN loan_id SET DEFAULT nextval('public.loan_loan_id_seq'::regclass);


--
-- TOC entry 2770 (class 2606 OID 66214)
-- Name: account account_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pk PRIMARY KEY (account_id);


--
-- TOC entry 2758 (class 2606 OID 66157)
-- Name: address address_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pk PRIMARY KEY (address_id);


--
-- TOC entry 2760 (class 2606 OID 66168)
-- Name: author author_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pk PRIMARY KEY (author_id);


--
-- TOC entry 2764 (class 2606 OID 66190)
-- Name: book book_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pk PRIMARY KEY (book_id);


--
-- TOC entry 2768 (class 2606 OID 66203)
-- Name: categories_of_books categories_of_books_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.categories_of_books
    ADD CONSTRAINT categories_of_books_pk PRIMARY KEY (category_id, book_id);


--
-- TOC entry 2756 (class 2606 OID 66146)
-- Name: category category_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pk PRIMARY KEY (category_id);


--
-- TOC entry 2766 (class 2606 OID 66198)
-- Name: copy copy_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.copy
    ADD CONSTRAINT copy_pk PRIMARY KEY (copy_id);


--
-- TOC entry 2762 (class 2606 OID 66179)
-- Name: cover cover_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.cover
    ADD CONSTRAINT cover_pk PRIMARY KEY (cover_id);


--
-- TOC entry 2754 (class 2606 OID 66138)
-- Name: edition edition_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.edition
    ADD CONSTRAINT edition_pk PRIMARY KEY (edition_id);


--
-- TOC entry 2772 (class 2606 OID 66225)
-- Name: loan loan_pk; Type: CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan
    ADD CONSTRAINT loan_pk PRIMARY KEY (loan_id);


--
-- TOC entry 2781 (class 2606 OID 66266)
-- Name: loan account_loan_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan
    ADD CONSTRAINT account_loan_fk FOREIGN KEY (account_id) REFERENCES public.account(account_id) ON DELETE CASCADE;


--
-- TOC entry 2779 (class 2606 OID 66236)
-- Name: account address_account_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT address_account_fk FOREIGN KEY (address_id) REFERENCES public.address(address_id);


--
-- TOC entry 2774 (class 2606 OID 66241)
-- Name: book author_book_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT author_book_fk FOREIGN KEY (author_id) REFERENCES public.author(author_id);


--
-- TOC entry 2776 (class 2606 OID 66256)
-- Name: copy book_book_copy_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.copy
    ADD CONSTRAINT book_book_copy_fk FOREIGN KEY (book_id) REFERENCES public.book(book_id);


--
-- TOC entry 2778 (class 2606 OID 66251)
-- Name: categories_of_books book_categories_of_books_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.categories_of_books
    ADD CONSTRAINT book_categories_of_books_fk FOREIGN KEY (book_id) REFERENCES public.book(book_id);


--
-- TOC entry 2780 (class 2606 OID 66261)
-- Name: loan book_copy_loan_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.loan
    ADD CONSTRAINT book_copy_loan_fk FOREIGN KEY (copy_id) REFERENCES public.copy(copy_id);


--
-- TOC entry 2777 (class 2606 OID 66231)
-- Name: categories_of_books category_categories_of_books_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.categories_of_books
    ADD CONSTRAINT category_categories_of_books_fk FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- TOC entry 2773 (class 2606 OID 66226)
-- Name: book edition_book_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT edition_book_fk FOREIGN KEY (edition_id) REFERENCES public.edition(edition_id);


--
-- TOC entry 2775 (class 2606 OID 66246)
-- Name: book image_book_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin_library
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT image_book_fk FOREIGN KEY (cover_id) REFERENCES public.cover(cover_id) ON DELETE CASCADE;


-- Completed on 2020-04-17 13:10:47

--
-- PostgreSQL database dump complete
--

