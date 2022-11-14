--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

CREATE DATABASE threec;
\c threec;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO cschool;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO cschool;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO cschool;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO cschool;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO cschool;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO cschool;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO cschool;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO cschool;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO cschool;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO cschool;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO cschool;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO cschool;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: cms_blogcategory; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_blogcategory (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(80) NOT NULL
);


ALTER TABLE public.cms_blogcategory OWNER TO cschool;

--
-- Name: cms_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.cms_blogcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_blogcategory_id_seq OWNER TO cschool;

--
-- Name: cms_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.cms_blogcategory_id_seq OWNED BY public.cms_blogcategory.id;


--
-- Name: cms_blogindexpage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_blogindexpage (
    page_ptr_id integer NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.cms_blogindexpage OWNER TO cschool;

--
-- Name: cms_blogindexpagetag; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_blogindexpagetag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.cms_blogindexpagetag OWNER TO cschool;

--
-- Name: cms_blogindexpagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.cms_blogindexpagetag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_blogindexpagetag_id_seq OWNER TO cschool;

--
-- Name: cms_blogindexpagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.cms_blogindexpagetag_id_seq OWNED BY public.cms_blogindexpagetag.id;


--
-- Name: cms_coursepage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_coursepage (
    page_ptr_id integer NOT NULL,
    body text NOT NULL,
    description character varying(255) NOT NULL,
    header_image_id integer
);


ALTER TABLE public.cms_coursepage OWNER TO cschool;

--
-- Name: cms_coursepage_categories; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_coursepage_categories (
    id integer NOT NULL,
    coursepage_id integer NOT NULL,
    coursescategory_id integer NOT NULL
);


ALTER TABLE public.cms_coursepage_categories OWNER TO cschool;

--
-- Name: cms_coursepage_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.cms_coursepage_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_coursepage_categories_id_seq OWNER TO cschool;

--
-- Name: cms_coursepage_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.cms_coursepage_categories_id_seq OWNED BY public.cms_coursepage_categories.id;


--
-- Name: cms_coursescategory; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_coursescategory (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(80) NOT NULL
);


ALTER TABLE public.cms_coursescategory OWNER TO cschool;

--
-- Name: cms_coursescategory_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.cms_coursescategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_coursescategory_id_seq OWNER TO cschool;

--
-- Name: cms_coursescategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.cms_coursescategory_id_seq OWNED BY public.cms_coursescategory.id;


--
-- Name: cms_coursesindexpage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_coursesindexpage (
    page_ptr_id integer NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.cms_coursesindexpage OWNER TO cschool;

--
-- Name: cms_coursesindexpagetag; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_coursesindexpagetag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.cms_coursesindexpagetag OWNER TO cschool;

--
-- Name: cms_coursesindexpagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.cms_coursesindexpagetag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_coursesindexpagetag_id_seq OWNER TO cschool;

--
-- Name: cms_coursesindexpagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.cms_coursesindexpagetag_id_seq OWNED BY public.cms_coursesindexpagetag.id;


--
-- Name: cms_formfield; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_formfield (
    id integer NOT NULL,
    sort_order integer,
    clean_name character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    field_type character varying(16) NOT NULL,
    required boolean NOT NULL,
    choices text NOT NULL,
    default_value character varying(255) NOT NULL,
    help_text character varying(255) NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.cms_formfield OWNER TO cschool;

--
-- Name: cms_formfield_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.cms_formfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_formfield_id_seq OWNER TO cschool;

--
-- Name: cms_formfield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.cms_formfield_id_seq OWNED BY public.cms_formfield.id;


--
-- Name: cms_formpage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_formpage (
    page_ptr_id integer NOT NULL,
    to_address character varying(255) NOT NULL,
    from_address character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    intro text NOT NULL,
    thank_you_text text NOT NULL,
    thank_you_page_id integer
);


ALTER TABLE public.cms_formpage OWNER TO cschool;

--
-- Name: cms_membershippage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_membershippage (
    page_ptr_id integer NOT NULL,
    description character varying(255) NOT NULL,
    price double precision NOT NULL,
    discount double precision NOT NULL,
    hours double precision NOT NULL,
    header_image_id integer
);


ALTER TABLE public.cms_membershippage OWNER TO cschool;

--
-- Name: cms_membershipsindexpage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_membershipsindexpage (
    page_ptr_id integer NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.cms_membershipsindexpage OWNER TO cschool;

--
-- Name: cms_postpage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_postpage (
    page_ptr_id integer NOT NULL,
    body text NOT NULL,
    description character varying(255) NOT NULL,
    date timestamp with time zone NOT NULL,
    header_image_id integer
);


ALTER TABLE public.cms_postpage OWNER TO cschool;

--
-- Name: cms_postpage_categories; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.cms_postpage_categories (
    id integer NOT NULL,
    postpage_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE public.cms_postpage_categories OWNER TO cschool;

--
-- Name: cms_postpage_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.cms_postpage_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_postpage_categories_id_seq OWNER TO cschool;

--
-- Name: cms_postpage_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.cms_postpage_categories_id_seq OWNED BY public.cms_postpage_categories.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO cschool;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO cschool;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO cschool;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO cschool;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO cschool;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO cschool;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO cschool;

--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.home_homepage (
    page_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE public.home_homepage OWNER TO cschool;

--
-- Name: offers_kid; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.offers_kid (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    name character varying(512) NOT NULL,
    email character varying(254) NOT NULL,
    phone_number character varying(16) NOT NULL,
    school character varying(256) NOT NULL,
    age character varying(100) NOT NULL,
    payment character varying(256) NOT NULL
);


ALTER TABLE public.offers_kid OWNER TO cschool;

--
-- Name: offers_kid_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.offers_kid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offers_kid_id_seq OWNER TO cschool;

--
-- Name: offers_kid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.offers_kid_id_seq OWNED BY public.offers_kid.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO cschool;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO cschool;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO cschool;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO cschool;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtailadmin_admin; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailadmin_admin (
    id integer NOT NULL
);


ALTER TABLE public.wagtailadmin_admin OWNER TO cschool;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailadmin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailadmin_admin_id_seq OWNER TO cschool;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailadmin_admin_id_seq OWNED BY public.wagtailadmin_admin.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_collection OWNER TO cschool;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction OWNER TO cschool;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups OWNER TO cschool;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupapprovaltask; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_groupapprovaltask (
    task_ptr_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupapprovaltask OWNER TO cschool;

--
-- Name: wagtailcore_groupapprovaltask_groups; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_groupapprovaltask_groups (
    id integer NOT NULL,
    groupapprovaltask_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupapprovaltask_groups OWNER TO cschool;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupapprovaltask_groups_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq OWNED BY public.wagtailcore_groupapprovaltask_groups.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO cschool;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO cschool;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_locale; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_locale (
    id integer NOT NULL,
    language_code character varying(100) NOT NULL
);


ALTER TABLE public.wagtailcore_locale OWNER TO cschool;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_locale_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_locale_id_seq OWNED BY public.wagtailcore_locale.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    locked_at timestamp with time zone,
    locked_by_id integer,
    translation_key uuid NOT NULL,
    locale_id integer NOT NULL,
    alias_of_id integer,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_page OWNER TO cschool;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagelogentry; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_pagelogentry (
    id integer NOT NULL,
    label text NOT NULL,
    action character varying(255) NOT NULL,
    data_json text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content_changed boolean NOT NULL,
    deleted boolean NOT NULL,
    content_type_id integer,
    page_id integer NOT NULL,
    revision_id integer,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagelogentry OWNER TO cschool;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_pagelogentry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagelogentry_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_pagelogentry_id_seq OWNED BY public.wagtailcore_pagelogentry.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagerevision OWNER TO cschool;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagerevision_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO cschool;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction_groups OWNER TO cschool;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_groups_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255) NOT NULL
);


ALTER TABLE public.wagtailcore_site OWNER TO cschool;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtailcore_task; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_task (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL,
    content_type_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_task OWNER TO cschool;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_task_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_task_id_seq OWNED BY public.wagtailcore_task.id;


--
-- Name: wagtailcore_taskstate; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_taskstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    started_at timestamp with time zone NOT NULL,
    finished_at timestamp with time zone,
    content_type_id integer NOT NULL,
    page_revision_id integer NOT NULL,
    task_id integer NOT NULL,
    workflow_state_id integer NOT NULL,
    finished_by_id integer,
    comment text NOT NULL
);


ALTER TABLE public.wagtailcore_taskstate OWNER TO cschool;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_taskstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_taskstate_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_taskstate_id_seq OWNED BY public.wagtailcore_taskstate.id;


--
-- Name: wagtailcore_workflow; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_workflow (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.wagtailcore_workflow OWNER TO cschool;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflow_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_workflow_id_seq OWNED BY public.wagtailcore_workflow.id;


--
-- Name: wagtailcore_workflowpage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_workflowpage (
    page_id integer NOT NULL,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowpage OWNER TO cschool;

--
-- Name: wagtailcore_workflowstate; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_workflowstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    current_task_state_id integer,
    page_id integer NOT NULL,
    requested_by_id integer,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowstate OWNER TO cschool;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_workflowstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowstate_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_workflowstate_id_seq OWNED BY public.wagtailcore_workflowstate.id;


--
-- Name: wagtailcore_workflowtask; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailcore_workflowtask (
    id integer NOT NULL,
    sort_order integer,
    task_id integer NOT NULL,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowtask OWNER TO cschool;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailcore_workflowtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowtask_id_seq OWNER TO cschool;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailcore_workflowtask_id_seq OWNED BY public.wagtailcore_workflowtask.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);


ALTER TABLE public.wagtaildocs_document OWNER TO cschool;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO cschool;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtaildocs_uploadeddocument; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtaildocs_uploadeddocument (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);


ALTER TABLE public.wagtaildocs_uploadeddocument OWNER TO cschool;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtaildocs_uploadeddocument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_uploadeddocument_id_seq OWNER TO cschool;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtaildocs_uploadeddocument_id_seq OWNED BY public.wagtaildocs_uploadeddocument.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url text NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url text NOT NULL,
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL,
    hash character varying(32) NOT NULL
);


ALTER TABLE public.wagtailembeds_embed OWNER TO cschool;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO cschool;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO cschool;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO cschool;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE public.wagtailimages_image OWNER TO cschool;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO cschool;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.wagtailimages_rendition OWNER TO cschool;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO cschool;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailimages_uploadedimage; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailimages_uploadedimage (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);


ALTER TABLE public.wagtailimages_uploadedimage OWNER TO cschool;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailimages_uploadedimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_uploadedimage_id_seq OWNER TO cschool;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailimages_uploadedimage_id_seq OWNED BY public.wagtailimages_uploadedimage.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO cschool;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO cschool;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_editorspick OWNER TO cschool;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_editorspick_id_seq OWNER TO cschool;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE public.wagtailsearch_query OWNER TO cschool;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO cschool;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO cschool;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO cschool;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: cschool
--

CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO cschool;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: cschool
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO cschool;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cschool
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: cms_blogcategory id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogcategory ALTER COLUMN id SET DEFAULT nextval('public.cms_blogcategory_id_seq'::regclass);


--
-- Name: cms_blogindexpagetag id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogindexpagetag ALTER COLUMN id SET DEFAULT nextval('public.cms_blogindexpagetag_id_seq'::regclass);


--
-- Name: cms_coursepage_categories id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage_categories ALTER COLUMN id SET DEFAULT nextval('public.cms_coursepage_categories_id_seq'::regclass);


--
-- Name: cms_coursescategory id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursescategory ALTER COLUMN id SET DEFAULT nextval('public.cms_coursescategory_id_seq'::regclass);


--
-- Name: cms_coursesindexpagetag id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursesindexpagetag ALTER COLUMN id SET DEFAULT nextval('public.cms_coursesindexpagetag_id_seq'::regclass);


--
-- Name: cms_formfield id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_formfield ALTER COLUMN id SET DEFAULT nextval('public.cms_formfield_id_seq'::regclass);


--
-- Name: cms_postpage_categories id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage_categories ALTER COLUMN id SET DEFAULT nextval('public.cms_postpage_categories_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: offers_kid id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.offers_kid ALTER COLUMN id SET DEFAULT nextval('public.offers_kid_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailadmin_admin id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailadmin_admin ALTER COLUMN id SET DEFAULT nextval('public.wagtailadmin_admin_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupapprovaltask_groups id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupapprovaltask_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_locale id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_locale ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_locale_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagelogentry id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagelogentry_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtailcore_task id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_task ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_task_id_seq'::regclass);


--
-- Name: wagtailcore_taskstate id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_taskstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_taskstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflow id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflow ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflow_id_seq'::regclass);


--
-- Name: wagtailcore_workflowstate id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflowtask id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowtask ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowtask_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtaildocs_uploadeddocument id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_uploadeddocument_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailimages_uploadedimage id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_uploadedimage_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	1	5
8	2	5
9	1	8
10	1	6
11	1	7
12	2	8
13	2	6
14	2	7
15	1	9
16	2	9
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add image	4	add_image
2	Can change image	4	change_image
3	Can delete image	4	delete_image
4	Can choose image	4	choose_image
5	Can access Wagtail admin	5	access_admin
6	Can add document	6	add_document
7	Can change document	6	change_document
8	Can delete document	6	delete_document
9	Can choose document	6	choose_document
10	Can add home page	3	add_homepage
11	Can change home page	3	change_homepage
12	Can delete home page	3	delete_homepage
13	Can view home page	3	view_homepage
14	Can add Blog Category	7	add_blogcategory
15	Can change Blog Category	7	change_blogcategory
16	Can delete Blog Category	7	delete_blogcategory
17	Can view Blog Category	7	view_blogcategory
18	Can add blog index page	8	add_blogindexpage
19	Can change blog index page	8	change_blogindexpage
20	Can delete blog index page	8	delete_blogindexpage
21	Can view blog index page	8	view_blogindexpage
22	Can add blog index page tag	9	add_blogindexpagetag
23	Can change blog index page tag	9	change_blogindexpagetag
24	Can delete blog index page tag	9	delete_blogindexpagetag
25	Can view blog index page tag	9	view_blogindexpagetag
26	Can add post page	10	add_postpage
27	Can change post page	10	change_postpage
28	Can delete post page	10	delete_postpage
29	Can view post page	10	view_postpage
30	Can add Courses Category	11	add_coursescategory
31	Can change Courses Category	11	change_coursescategory
32	Can delete Courses Category	11	delete_coursescategory
33	Can view Courses Category	11	view_coursescategory
34	Can add courses index page	12	add_coursesindexpage
35	Can change courses index page	12	change_coursesindexpage
36	Can delete courses index page	12	delete_coursesindexpage
37	Can view courses index page	12	view_coursesindexpage
38	Can add course page	13	add_coursepage
39	Can change course page	13	change_coursepage
40	Can delete course page	13	delete_coursepage
41	Can view course page	13	view_coursepage
42	Can add courses index page tag	14	add_coursesindexpagetag
43	Can change courses index page tag	14	change_coursesindexpagetag
44	Can delete courses index page tag	14	delete_coursesindexpagetag
45	Can view courses index page tag	14	view_coursesindexpagetag
46	Can add memberships index page	15	add_membershipsindexpage
47	Can change memberships index page	15	change_membershipsindexpage
48	Can delete memberships index page	15	delete_membershipsindexpage
49	Can view memberships index page	15	view_membershipsindexpage
50	Can add membership page	16	add_membershippage
51	Can change membership page	16	change_membershippage
52	Can delete membership page	16	delete_membershippage
53	Can view membership page	16	view_membershippage
54	Can add form page	17	add_formpage
55	Can change form page	17	change_formpage
56	Can delete form page	17	delete_formpage
57	Can view form page	17	view_formpage
58	Can add form field	18	add_formfield
59	Can change form field	18	change_formfield
60	Can delete form field	18	delete_formfield
61	Can view form field	18	view_formfield
62	Can add form submission	19	add_formsubmission
63	Can change form submission	19	change_formsubmission
64	Can delete form submission	19	delete_formsubmission
65	Can view form submission	19	view_formsubmission
66	Can add redirect	20	add_redirect
67	Can change redirect	20	change_redirect
68	Can delete redirect	20	delete_redirect
69	Can view redirect	20	view_redirect
70	Can add embed	21	add_embed
71	Can change embed	21	change_embed
72	Can delete embed	21	delete_embed
73	Can view embed	21	view_embed
74	Can add user profile	22	add_userprofile
75	Can change user profile	22	change_userprofile
76	Can delete user profile	22	delete_userprofile
77	Can view user profile	22	view_userprofile
78	Can view document	6	view_document
79	Can add uploaded document	23	add_uploadeddocument
80	Can change uploaded document	23	change_uploadeddocument
81	Can delete uploaded document	23	delete_uploadeddocument
82	Can view uploaded document	23	view_uploadeddocument
83	Can view image	4	view_image
84	Can add rendition	24	add_rendition
85	Can change rendition	24	change_rendition
86	Can delete rendition	24	delete_rendition
87	Can view rendition	24	view_rendition
88	Can add uploaded image	25	add_uploadedimage
89	Can change uploaded image	25	change_uploadedimage
90	Can delete uploaded image	25	delete_uploadedimage
91	Can view uploaded image	25	view_uploadedimage
92	Can add query	26	add_query
93	Can change query	26	change_query
94	Can delete query	26	delete_query
95	Can view query	26	view_query
96	Can add Query Daily Hits	27	add_querydailyhits
97	Can change Query Daily Hits	27	change_querydailyhits
196	Can add session	50	add_session
98	Can delete Query Daily Hits	27	delete_querydailyhits
99	Can view Query Daily Hits	27	view_querydailyhits
100	Can add page	1	add_page
101	Can change page	1	change_page
102	Can delete page	1	delete_page
103	Can view page	1	view_page
104	Can add group page permission	28	add_grouppagepermission
105	Can change group page permission	28	change_grouppagepermission
106	Can delete group page permission	28	delete_grouppagepermission
107	Can view group page permission	28	view_grouppagepermission
108	Can add page revision	29	add_pagerevision
109	Can change page revision	29	change_pagerevision
110	Can delete page revision	29	delete_pagerevision
111	Can view page revision	29	view_pagerevision
112	Can add page view restriction	30	add_pageviewrestriction
113	Can change page view restriction	30	change_pageviewrestriction
114	Can delete page view restriction	30	delete_pageviewrestriction
115	Can view page view restriction	30	view_pageviewrestriction
116	Can add site	31	add_site
117	Can change site	31	change_site
118	Can delete site	31	delete_site
119	Can view site	31	view_site
120	Can add collection	32	add_collection
121	Can change collection	32	change_collection
122	Can delete collection	32	delete_collection
123	Can view collection	32	view_collection
124	Can add group collection permission	33	add_groupcollectionpermission
125	Can change group collection permission	33	change_groupcollectionpermission
126	Can delete group collection permission	33	delete_groupcollectionpermission
127	Can view group collection permission	33	view_groupcollectionpermission
128	Can add collection view restriction	34	add_collectionviewrestriction
129	Can change collection view restriction	34	change_collectionviewrestriction
130	Can delete collection view restriction	34	delete_collectionviewrestriction
131	Can view collection view restriction	34	view_collectionviewrestriction
132	Can add task	35	add_task
133	Can change task	35	change_task
134	Can delete task	35	delete_task
135	Can view task	35	view_task
136	Can add Task state	36	add_taskstate
137	Can change Task state	36	change_taskstate
138	Can delete Task state	36	delete_taskstate
139	Can view Task state	36	view_taskstate
140	Can add workflow	37	add_workflow
141	Can change workflow	37	change_workflow
142	Can delete workflow	37	delete_workflow
143	Can view workflow	37	view_workflow
144	Can add Group approval task	2	add_groupapprovaltask
145	Can change Group approval task	2	change_groupapprovaltask
146	Can delete Group approval task	2	delete_groupapprovaltask
147	Can view Group approval task	2	view_groupapprovaltask
148	Can add Workflow state	38	add_workflowstate
149	Can change Workflow state	38	change_workflowstate
150	Can delete Workflow state	38	delete_workflowstate
151	Can view Workflow state	38	view_workflowstate
152	Can add workflow page	39	add_workflowpage
153	Can change workflow page	39	change_workflowpage
154	Can delete workflow page	39	delete_workflowpage
155	Can view workflow page	39	view_workflowpage
156	Can add workflow task order	40	add_workflowtask
157	Can change workflow task order	40	change_workflowtask
158	Can delete workflow task order	40	delete_workflowtask
159	Can view workflow task order	40	view_workflowtask
160	Can add page log entry	41	add_pagelogentry
161	Can change page log entry	41	change_pagelogentry
162	Can delete page log entry	41	delete_pagelogentry
163	Can view page log entry	41	view_pagelogentry
164	Can add locale	42	add_locale
165	Can change locale	42	change_locale
166	Can delete locale	42	delete_locale
167	Can view locale	42	view_locale
168	Can add tag	43	add_tag
169	Can change tag	43	change_tag
170	Can delete tag	43	delete_tag
171	Can view tag	43	view_tag
172	Can add tagged item	44	add_taggeditem
173	Can change tagged item	44	change_taggeditem
174	Can delete tagged item	44	delete_taggeditem
175	Can view tagged item	44	view_taggeditem
176	Can add log entry	45	add_logentry
177	Can change log entry	45	change_logentry
178	Can delete log entry	45	delete_logentry
179	Can view log entry	45	view_logentry
180	Can add permission	46	add_permission
181	Can change permission	46	change_permission
182	Can delete permission	46	delete_permission
183	Can view permission	46	view_permission
184	Can add group	47	add_group
185	Can change group	47	change_group
186	Can delete group	47	delete_group
187	Can view group	47	view_group
188	Can add user	48	add_user
189	Can change user	48	change_user
190	Can delete user	48	delete_user
191	Can view user	48	view_user
192	Can add content type	49	add_contenttype
193	Can change content type	49	change_contenttype
194	Can delete content type	49	delete_contenttype
195	Can view content type	49	view_contenttype
197	Can change session	50	change_session
198	Can delete session	50	delete_session
199	Can view session	50	view_session
200	Can add kid	51	add_kid
201	Can change kid	51	change_kid
202	Can delete kid	51	delete_kid
203	Can view kid	51	view_kid
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$alfRvDCM2swz$dPZtaVKGkSKbJs2lEMcp4lODlA1hSxNhM5oh6o6YFCw=	2022-10-10 07:36:55.718611+00	t	admin			hosamhosnyprof@gmail.com	t	t	2021-05-04 02:52:00.581477+00
2	pbkdf2_sha256$216000$9fzw7jmaAjqB$5MpEZX65FMV4Pw0gRBlCO0ikCw4zrPljJmkMa2B9C9g=	2022-10-11 13:14:51.292225+00	t	saad			saad@logictree.com	t	t	2021-09-03 14:54:49.650663+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cms_blogcategory; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_blogcategory (id, name, slug) FROM stdin;
1	web	web
\.


--
-- Data for Name: cms_blogindexpage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_blogindexpage (page_ptr_id, description) FROM stdin;
\.


--
-- Data for Name: cms_blogindexpagetag; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_blogindexpagetag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Data for Name: cms_coursepage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_coursepage (page_ptr_id, body, description, header_image_id) FROM stdin;
\.


--
-- Data for Name: cms_coursepage_categories; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_coursepage_categories (id, coursepage_id, coursescategory_id) FROM stdin;
\.


--
-- Data for Name: cms_coursescategory; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_coursescategory (id, name, slug) FROM stdin;
1	Content for (6-8 years students)	6-8_courses
2	Content for (9-15 years students)	9-15_courses
\.


--
-- Data for Name: cms_coursesindexpage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_coursesindexpage (page_ptr_id, description) FROM stdin;
\.


--
-- Data for Name: cms_coursesindexpagetag; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_coursesindexpagetag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Data for Name: cms_formfield; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_formfield (id, sort_order, clean_name, label, field_type, required, choices, default_value, help_text, page_id) FROM stdin;
13	0	childs_name	child's name?	singleline	t				30
14	1	age	age	number	t				30
15	2	school	school?!	singleline	t				30
16	3	mobile_number	mobile number ?	number	t				30
17	4	whats_app_number	whats app number ?	number	f				30
18	5	e_mail	e-mail ?	email	f				30
20	6	home_address	home address ?!	singleline	f				30
21	7	any_suggestions	any suggestions ?!	multiline	f				30
\.


--
-- Data for Name: cms_formpage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_formpage (page_ptr_id, to_address, from_address, subject, intro, thank_you_text, thank_you_page_id) FROM stdin;
30						\N
\.


--
-- Data for Name: cms_membershippage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_membershippage (page_ptr_id, description, price, discount, hours, header_image_id) FROM stdin;
\.


--
-- Data for Name: cms_membershipsindexpage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_membershipsindexpage (page_ptr_id, description) FROM stdin;
\.


--
-- Data for Name: cms_postpage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_postpage (page_ptr_id, body, description, date, header_image_id) FROM stdin;
\.


--
-- Data for Name: cms_postpage_categories; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.cms_postpage_categories (id, postpage_id, blogcategory_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-11-29 08:32:28.210818+00	1	admin	2	[{"changed": {"fields": ["password"]}}]	48	2
2	2021-12-12 23:49:08.011949+00	1	saad	3		51	2
3	2021-12-12 23:49:08.014627+00	2	saad	3		51	2
4	2021-12-12 23:49:08.016246+00	3	saad	3		51	2
5	2021-12-12 23:49:08.017913+00	4	saad	3		51	2
6	2021-12-18 09:42:47.631073+00	5	saad	3		51	2
7	2021-12-18 09:42:47.634682+00	6	saad	3		51	2
8	2021-12-18 09:42:47.636344+00	7	saad	3		51	2
9	2021-12-18 09:42:47.637913+00	8	saad	3		51	2
10	2021-12-18 09:42:47.639462+00	9	saad	3		51	2
11	2021-12-18 09:42:47.640976+00	10	saad	3		51	2
12	2021-12-18 09:42:47.642518+00	11	saad	3		51	2
13	2021-12-18 09:42:47.644395+00	12	saad	3		51	2
14	2021-12-18 09:54:36.316232+00	13	saad	3		51	2
15	2021-12-18 09:54:36.31888+00	14	saad	3		51	2
16	2021-12-18 09:54:36.320759+00	15	saad	3		51	2
17	2021-12-18 09:54:36.32246+00	16	saad	3		51	2
18	2021-12-18 09:54:36.324008+00	17	saad	3		51	2
19	2021-12-18 09:54:36.325875+00	18	saad	3		51	2
20	2021-12-18 10:42:59.130651+00	19	saad	3		51	2
21	2021-12-18 10:42:59.133668+00	20	test#1	3		51	2
22	2021-12-18 10:49:23.919304+00	21	saad	3		51	2
23	2021-12-18 11:22:40.405017+00	22	saad	3		51	2
24	2021-12-18 12:13:03.467832+00	1	admin	2	[{"changed": {"fields": ["password"]}}]	48	2
25	2021-12-18 12:14:06.592723+00	2	saad	2	[{"changed": {"fields": ["password"]}}]	48	2
26	2021-12-18 22:55:01.23703+00	23	fatma	3		51	2
27	2021-12-18 22:55:01.23972+00	24	saad	3		51	2
28	2021-12-18 23:45:19.534443+00	25	saad	3		51	2
29	2021-12-18 23:45:19.536903+00	26	saad	3		51	2
30	2021-12-18 23:45:19.538428+00	27	saad	3		51	2
31	2021-12-18 23:45:19.539917+00	28	saad	3		51	2
32	2021-12-18 23:45:19.541365+00	29	test	3		51	2
33	2021-12-23 15:53:37.148469+00	30	Hala hoa	3		51	1
34	2021-12-23 15:53:37.150829+00	31	Aml	3		51	1
35	2021-12-24 16:48:28.826085+00	3	System Done	1	[{"added": {}}]	47	1
36	2021-12-24 16:49:17.276597+00	3	System Done	3		47	1
37	2022-01-15 23:29:12.275159+00	190	Yahia yasser Abdelwahed	3		51	1
38	2022-01-15 23:29:12.277857+00	191	Yahia yasser Abdelwahed	3		51	1
39	2022-01-15 23:29:12.279452+00	192	Yahia yasser Abdelwahed	3		51	1
40	2022-01-15 23:29:29.314996+00	209	rimoo nouh	3		51	1
41	2022-04-21 13:27:41.953844+00	503	jhghjg	3		51	1
42	2022-08-04 12:00:15.718796+00	1343	امين العوام	3		51	1
43	2022-08-04 12:00:15.724784+00	1352	على	3		51	1
44	2022-08-04 23:19:10.704313+00	1356	saad	3		51	1
45	2022-08-04 23:19:10.707259+00	1357	saad	3		51	1
46	2022-08-04 23:19:10.70906+00	1358	saad	3		51	1
47	2022-08-06 17:57:36.073629+00	1371	Ghio	3		51	1
48	2022-08-14 07:39:36.090815+00	1425	ندى	3		51	1
49	2022-08-14 07:39:36.093649+00	1426	ندى	3		51	1
50	2022-09-09 12:02:04.195787+00	1554	David	3		51	1
51	2022-09-09 12:02:17.475821+00	1556	يسري عبدالقادر عبد	3		51	1
52	2022-09-09 12:03:32.836923+00	1557	يسري عبدالقادر عبد	3		51	1
53	2022-09-11 17:46:56.751318+00	1571	hosam	3		51	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailcore	groupapprovaltask
3	home	homepage
4	wagtailimages	image
5	wagtailadmin	admin
6	wagtaildocs	document
7	cms	blogcategory
8	cms	blogindexpage
9	cms	blogindexpagetag
10	cms	postpage
11	cms	coursescategory
12	cms	coursesindexpage
13	cms	coursepage
14	cms	coursesindexpagetag
15	cms	membershipsindexpage
16	cms	membershippage
17	cms	formpage
18	cms	formfield
19	wagtailforms	formsubmission
20	wagtailredirects	redirect
21	wagtailembeds	embed
22	wagtailusers	userprofile
23	wagtaildocs	uploadeddocument
24	wagtailimages	rendition
25	wagtailimages	uploadedimage
26	wagtailsearch	query
27	wagtailsearch	querydailyhits
28	wagtailcore	grouppagepermission
29	wagtailcore	pagerevision
30	wagtailcore	pageviewrestriction
31	wagtailcore	site
32	wagtailcore	collection
33	wagtailcore	groupcollectionpermission
34	wagtailcore	collectionviewrestriction
35	wagtailcore	task
36	wagtailcore	taskstate
37	wagtailcore	workflow
38	wagtailcore	workflowstate
39	wagtailcore	workflowpage
40	wagtailcore	workflowtask
41	wagtailcore	pagelogentry
42	wagtailcore	locale
43	taggit	tag
44	taggit	taggeditem
45	admin	logentry
46	auth	permission
47	auth	group
48	auth	user
49	contenttypes	contenttype
50	sessions	session
51	offers	kid
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-04 02:49:30.977505+00
2	auth	0001_initial	2021-05-04 02:49:31.017746+00
3	admin	0001_initial	2021-05-04 02:49:31.077056+00
4	admin	0002_logentry_remove_auto_add	2021-05-04 02:49:31.093133+00
5	admin	0003_logentry_add_action_flag_choices	2021-05-04 02:49:31.103003+00
6	contenttypes	0002_remove_content_type_name	2021-05-04 02:49:31.120331+00
7	auth	0002_alter_permission_name_max_length	2021-05-04 02:49:31.129296+00
8	auth	0003_alter_user_email_max_length	2021-05-04 02:49:31.138214+00
9	auth	0004_alter_user_username_opts	2021-05-04 02:49:31.146825+00
10	auth	0005_alter_user_last_login_null	2021-05-04 02:49:31.155634+00
11	auth	0006_require_contenttypes_0002	2021-05-04 02:49:31.157818+00
12	auth	0007_alter_validators_add_error_messages	2021-05-04 02:49:31.168167+00
13	auth	0008_alter_user_username_max_length	2021-05-04 02:49:31.180542+00
14	auth	0009_alter_user_last_name_max_length	2021-05-04 02:49:31.189518+00
15	auth	0010_alter_group_name_max_length	2021-05-04 02:49:31.198895+00
16	auth	0011_update_proxy_permissions	2021-05-04 02:49:31.207517+00
17	auth	0012_alter_user_first_name_max_length	2021-05-04 02:49:31.216054+00
18	wagtailcore	0001_initial	2021-05-04 02:49:31.378535+00
19	wagtailcore	0002_initial_data	2021-05-04 02:49:31.379643+00
20	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2021-05-04 02:49:31.380679+00
21	wagtailcore	0004_page_locked	2021-05-04 02:49:31.381713+00
22	wagtailcore	0005_add_page_lock_permission_to_moderators	2021-05-04 02:49:31.382782+00
23	wagtailcore	0006_add_lock_page_permission	2021-05-04 02:49:31.38383+00
24	wagtailcore	0007_page_latest_revision_created_at	2021-05-04 02:49:31.384868+00
25	wagtailcore	0008_populate_latest_revision_created_at	2021-05-04 02:49:31.385901+00
26	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2021-05-04 02:49:31.386971+00
27	wagtailcore	0010_change_page_owner_to_null_on_delete	2021-05-04 02:49:31.388029+00
28	wagtailcore	0011_page_first_published_at	2021-05-04 02:49:31.389089+00
29	wagtailcore	0012_extend_page_slug_field	2021-05-04 02:49:31.390143+00
30	wagtailcore	0013_update_golive_expire_help_text	2021-05-04 02:49:31.391222+00
31	wagtailcore	0014_add_verbose_name	2021-05-04 02:49:31.392263+00
32	wagtailcore	0015_add_more_verbose_names	2021-05-04 02:49:31.3933+00
33	wagtailcore	0016_change_page_url_path_to_text_field	2021-05-04 02:49:31.394331+00
34	wagtailcore	0017_change_edit_page_permission_description	2021-05-04 02:49:31.456793+00
35	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2021-05-04 02:49:31.473104+00
36	wagtailcore	0019_verbose_names_cleanup	2021-05-04 02:49:31.520129+00
37	wagtailcore	0020_add_index_on_page_first_published_at	2021-05-04 02:49:31.536527+00
38	wagtailcore	0021_capitalizeverbose	2021-05-04 02:49:31.903948+00
39	wagtailcore	0022_add_site_name	2021-05-04 02:49:31.917205+00
40	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2021-05-04 02:49:31.933045+00
41	wagtailcore	0024_collection	2021-05-04 02:49:31.945869+00
42	wagtailcore	0025_collection_initial_data	2021-05-04 02:49:31.963064+00
43	wagtailcore	0026_group_collection_permission	2021-05-04 02:49:31.993149+00
44	wagtailcore	0027_fix_collection_path_collation	2021-05-04 02:49:32.023096+00
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2021-05-04 02:49:32.041515+00
46	wagtailcore	0028_merge	2021-05-04 02:49:32.043905+00
47	wagtailcore	0029_unicode_slugfield_dj19	2021-05-04 02:49:32.058015+00
48	wagtailcore	0030_index_on_pagerevision_created_at	2021-05-04 02:49:32.073073+00
49	wagtailcore	0031_add_page_view_restriction_types	2021-05-04 02:49:32.113405+00
50	wagtailcore	0032_add_bulk_delete_page_permission	2021-05-04 02:49:32.13878+00
51	wagtailcore	0033_remove_golive_expiry_help_text	2021-05-04 02:49:32.16323+00
52	wagtailcore	0034_page_live_revision	2021-05-04 02:49:32.179306+00
53	wagtailcore	0035_page_last_published_at	2021-05-04 02:49:32.197703+00
54	wagtailcore	0036_populate_page_last_published_at	2021-05-04 02:49:32.212799+00
55	wagtailcore	0037_set_page_owner_editable	2021-05-04 02:49:32.231816+00
56	wagtailcore	0038_make_first_published_at_editable	2021-05-04 02:49:32.245884+00
57	wagtailcore	0039_collectionviewrestriction	2021-05-04 02:49:32.293758+00
58	wagtailcore	0040_page_draft_title	2021-05-04 02:49:32.336954+00
59	wagtailcore	0041_group_collection_permissions_verbose_name_plural	2021-05-04 02:49:32.349352+00
60	wagtailcore	0042_index_on_pagerevision_approved_go_live_at	2021-05-04 02:49:32.365653+00
61	wagtailcore	0043_lock_fields	2021-05-04 02:49:32.449178+00
62	wagtailcore	0044_add_unlock_grouppagepermission	2021-05-04 02:49:32.467055+00
63	wagtailcore	0045_assign_unlock_grouppagepermission	2021-05-04 02:49:32.486892+00
64	wagtailcore	0046_site_name_remove_null	2021-05-04 02:49:32.499789+00
65	wagtailcore	0047_add_workflow_models	2021-05-04 02:49:32.697225+00
66	wagtailcore	0048_add_default_workflows	2021-05-04 02:49:32.795956+00
67	wagtailcore	0049_taskstate_finished_by	2021-05-04 02:49:32.821535+00
68	wagtailcore	0050_workflow_rejected_to_needs_changes	2021-05-04 02:49:32.877243+00
69	wagtailcore	0051_taskstate_comment	2021-05-04 02:49:32.896771+00
70	wagtailcore	0052_pagelogentry	2021-05-04 02:49:32.929039+00
71	home	0001_initial	2021-05-04 02:49:32.976377+00
72	home	0002_create_homepage	2021-05-04 02:49:33.015141+00
73	wagtailcore	0053_locale_model	2021-05-04 02:49:33.026624+00
74	wagtailcore	0054_initial_locale	2021-05-04 02:49:33.053237+00
75	wagtailcore	0055_page_locale_fields	2021-05-04 02:49:33.115508+00
76	wagtailcore	0056_page_locale_fields_populate	2021-05-04 02:49:33.147034+00
77	wagtailcore	0057_page_locale_fields_notnull	2021-05-04 02:49:33.1955+00
78	wagtailcore	0058_page_alias_of	2021-05-04 02:49:33.288924+00
79	wagtailcore	0059_apply_collection_ordering	2021-05-04 02:49:33.317+00
80	wagtailcore	0060_fix_workflow_unique_constraint	2021-05-04 02:49:33.359026+00
81	taggit	0001_initial	2021-05-04 02:49:33.39868+00
82	wagtailimages	0001_initial	2021-05-04 02:49:33.550502+00
83	wagtailimages	0002_initial_data	2021-05-04 02:49:33.551731+00
84	wagtailimages	0003_fix_focal_point_fields	2021-05-04 02:49:33.552832+00
85	wagtailimages	0004_make_focal_point_key_not_nullable	2021-05-04 02:49:33.553928+00
86	wagtailimages	0005_make_filter_spec_unique	2021-05-04 02:49:33.55505+00
87	wagtailimages	0006_add_verbose_names	2021-05-04 02:49:33.556152+00
88	wagtailimages	0007_image_file_size	2021-05-04 02:49:33.557246+00
89	wagtailimages	0008_image_created_at_index	2021-05-04 02:49:33.558354+00
90	wagtailimages	0009_capitalizeverbose	2021-05-04 02:49:33.55959+00
91	wagtailimages	0010_change_on_delete_behaviour	2021-05-04 02:49:33.56076+00
92	wagtailimages	0011_image_collection	2021-05-04 02:49:33.561857+00
93	wagtailimages	0012_copy_image_permissions_to_collections	2021-05-04 02:49:33.562999+00
94	wagtailimages	0013_make_rendition_upload_callable	2021-05-04 02:49:33.564128+00
95	wagtailimages	0014_add_filter_spec_field	2021-05-04 02:49:33.565251+00
96	wagtailimages	0015_fill_filter_spec_field	2021-05-04 02:49:33.566371+00
97	wagtailimages	0016_deprecate_rendition_filter_relation	2021-05-04 02:49:33.567518+00
98	wagtailimages	0017_reduce_focal_point_key_max_length	2021-05-04 02:49:33.568768+00
99	wagtailimages	0018_remove_rendition_filter	2021-05-04 02:49:33.56986+00
100	wagtailimages	0019_delete_filter	2021-05-04 02:49:33.57099+00
101	wagtailimages	0020_add-verbose-name	2021-05-04 02:49:33.572103+00
102	wagtailimages	0021_image_file_hash	2021-05-04 02:49:33.573232+00
103	wagtailimages	0022_uploadedimage	2021-05-04 02:49:33.627342+00
104	wagtailimages	0023_add_choose_permissions	2021-05-04 02:49:33.709595+00
105	taggit	0002_auto_20150616_2121	2021-05-04 02:49:33.725803+00
106	taggit	0003_taggeditem_add_unique_index	2021-05-04 02:49:33.742711+00
107	cms	0001_initial	2021-05-04 02:49:33.887352+00
108	cms	0002_auto_20210429_1748	2021-05-04 02:49:34.148717+00
109	cms	0003_auto_20210429_1802	2021-05-04 02:49:34.241473+00
110	cms	0004_membershippage_membershipsindexpage	2021-05-04 02:49:34.324169+00
111	cms	0005_formfield_formpage	2021-05-04 02:49:34.416877+00
112	cms	0006_formpage_thank_you_page	2021-05-04 02:49:34.461611+00
113	home	0003_homepage_body	2021-05-04 02:49:34.491392+00
114	sessions	0001_initial	2021-05-04 02:49:34.501656+00
115	wagtailadmin	0001_create_admin_access_permissions	2021-05-04 02:49:34.551542+00
116	wagtailadmin	0002_admin	2021-05-04 02:49:34.555906+00
117	wagtailadmin	0003_admin_managed	2021-05-04 02:49:34.564914+00
118	wagtaildocs	0001_initial	2021-05-04 02:49:34.608571+00
119	wagtaildocs	0002_initial_data	2021-05-04 02:49:34.660104+00
120	wagtaildocs	0003_add_verbose_names	2021-05-04 02:49:34.827722+00
121	wagtaildocs	0004_capitalizeverbose	2021-05-04 02:49:34.990909+00
122	wagtaildocs	0005_document_collection	2021-05-04 02:49:35.035818+00
123	wagtaildocs	0006_copy_document_permissions_to_collections	2021-05-04 02:49:35.085013+00
124	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2021-05-04 02:49:35.129736+00
125	wagtaildocs	0007_merge	2021-05-04 02:49:35.132439+00
126	wagtaildocs	0008_document_file_size	2021-05-04 02:49:35.157479+00
127	wagtaildocs	0009_document_verbose_name_plural	2021-05-04 02:49:35.183209+00
128	wagtaildocs	0010_document_file_hash	2021-05-04 02:49:35.208604+00
129	wagtaildocs	0011_add_choose_permissions	2021-05-04 02:49:35.317818+00
130	wagtaildocs	0012_uploadeddocument	2021-05-04 02:49:35.362411+00
131	wagtailembeds	0001_initial	2021-05-04 02:49:35.385588+00
132	wagtailembeds	0002_add_verbose_names	2021-05-04 02:49:35.391083+00
133	wagtailembeds	0003_capitalizeverbose	2021-05-04 02:49:35.395827+00
134	wagtailembeds	0004_embed_verbose_name_plural	2021-05-04 02:49:35.400492+00
135	wagtailembeds	0005_specify_thumbnail_url_max_length	2021-05-04 02:49:35.405992+00
136	wagtailembeds	0006_add_embed_hash	2021-05-04 02:49:35.411478+00
137	wagtailembeds	0007_populate_hash	2021-05-04 02:49:35.532063+00
138	wagtailembeds	0008_allow_long_urls	2021-05-04 02:49:35.573045+00
139	wagtailforms	0001_initial	2021-05-04 02:49:35.620124+00
140	wagtailforms	0002_add_verbose_names	2021-05-04 02:49:35.666902+00
141	wagtailforms	0003_capitalizeverbose	2021-05-04 02:49:35.710183+00
142	wagtailforms	0004_add_verbose_name_plural	2021-05-04 02:49:35.7329+00
143	wagtailredirects	0001_initial	2021-05-04 02:49:35.782384+00
144	wagtailredirects	0002_add_verbose_names	2021-05-04 02:49:35.86185+00
145	wagtailredirects	0003_make_site_field_editable	2021-05-04 02:49:35.909204+00
146	wagtailredirects	0004_set_unique_on_path_and_site	2021-05-04 02:49:35.965015+00
147	wagtailredirects	0005_capitalizeverbose	2021-05-04 02:49:36.219359+00
148	wagtailredirects	0006_redirect_increase_max_length	2021-05-04 02:49:36.246896+00
149	wagtailsearch	0001_initial	2021-05-04 02:49:36.359049+00
150	wagtailsearch	0002_add_verbose_names	2021-05-04 02:49:36.47233+00
151	wagtailsearch	0003_remove_editors_pick	2021-05-04 02:49:36.518247+00
152	wagtailsearch	0004_querydailyhits_verbose_name_plural	2021-05-04 02:49:36.523965+00
153	wagtailusers	0001_initial	2021-05-04 02:49:36.572882+00
154	wagtailusers	0002_add_verbose_name_on_userprofile	2021-05-04 02:49:36.626286+00
155	wagtailusers	0003_add_verbose_names	2021-05-04 02:49:36.644878+00
156	wagtailusers	0004_capitalizeverbose	2021-05-04 02:49:36.711752+00
157	wagtailusers	0005_make_related_name_wagtail_specific	2021-05-04 02:49:36.760149+00
158	wagtailusers	0006_userprofile_prefered_language	2021-05-04 02:49:36.781889+00
159	wagtailusers	0007_userprofile_current_time_zone	2021-05-04 02:49:36.803464+00
160	wagtailusers	0008_userprofile_avatar	2021-05-04 02:49:36.823028+00
161	wagtailusers	0009_userprofile_verbose_name_plural	2021-05-04 02:49:36.913836+00
162	wagtailimages	0001_squashed_0021	2021-05-04 02:49:36.918824+00
163	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2021-05-04 02:49:36.920878+00
164	offers	0001_initial	2021-12-12 23:35:29.102986+00
165	offers	0002_kid_payment	2021-12-12 23:48:39.346121+00
166	offers	0003_auto_20211219_0107	2021-12-18 23:07:15.408797+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7fv85ohnox5ecx74jqqqiwh1whsgfx8z	.eJxVjDsOwjAQBe_iGln-20tJnzNYa3uDA8iR4qRC3J1ESgHtzLz3ZhG3tcat0xKnwq5MscsvS5if1A5RHtjuM89zW5cp8SPhp-18mAu9bmf7d1Cx131tkzWiFMgQtNYjeCWsMBLISe0DejkCklYOrExQVLA-O7cTQyr45AT7fAG0azac:1myYbG:kGNEjcGPRpOm6xbBaZTNR6fiIjvpicRIFh0TDf7fGB8	2022-01-01 12:14:06.600986+00
t8famx3ex4fab4c5bablb62tzvwhwnoc	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1mzEik:Icq1lwn6hA2ciPmOPDSVhEI7ksJtbnjtkzoNQs1Mb3c	2022-01-03 09:12:38.881113+00
hefzb9090e1uimirwrt69wnso0eaca2i	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n0NJP:e_1Yqx4-lQ7Xm0_5eUrH1WAuhwvcBoWetz3jFuDptxw	2022-01-06 12:35:11.358452+00
dkcowx59ii0p2u9wjcbk67ayzhssvbjd	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n0jZy:K0rXCeNIwSBktwdB-tAYThKlYm4KOySyy2O-E9Xnu6Q	2022-01-07 12:21:46.181692+00
0qe18x5u4o50jx21n9mt0w52ri68lio6	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n17DZ:03feejySTPiB0thiT_9JT9CjDBZTQyaTHErQnoloz3I	2022-01-08 13:36:13.419448+00
jsm30fbgp2sli1hagh3lrgjok478auk1	.eJxVjctOwkAYhd-lCzZAM_TKkHSBSsBII4qJGGOaufxtp51enE6haHx3i7KA3cm5fOfbiEir06htQEWCGzNjYowuPUpYDuUp4Bkpk8pkVamVoOapYp7TxgwrDvLm3L0CpKRJ-zXG1MXc54i4OLYcZqHYmVgOnWDsOwx7LnJj5NnEmxKLg0stTjzMkE_sqWfFdNpDDyTRRMhxrWAv4DA2Zu8Ga1RcCM4lHIgCXfX_gXjYhHTvH4--ZCsqwlXWbXUt2vVu9xp35QtZzOXz-qnIilX3taWPMsuXm9y6_5zfvS2KZTgoodPBQAstIQihoKCaVNTNgEPDlKi1qMrgNgWWD6tWDYuLRiPbJLgyoIr-Qb0kiqXRJWSQVJEUe4hI_wddLdSfNEYTz0K273q2byKEbYSnHz-_lA2T7w:1leviv:h9O_q081NoT4UDaIztdMiaEHlr8FeGa608JPC6tw3yU	2021-05-21 08:20:37.020791+00
lmi9sp2a7rj7uex6tkwug5vhqlg49ccl	.eJxVUMFO3DAQ_Zccclk2cpzEGyPlUOihZUsrlSKoEIrG9iR2SezUTnaXRf13EuCwvb2Z9-a9mXmJaphGXU8BfW1UdB6l0dlpT4B8QrsQ6g_Y1iXS2dEbkSyS5IMNybVT2F18aP8z0BD0PM25KLjaKAIFb2guKWnylOYi5XyTS84KUjSEZcBKoAoLQRUwLskGspLRRpSz6R7aEUy3HjzuDO7X0flDJINveqNUh3vwOLo5v7LPV09c6-n2dnN9-bMxn9k0_f7WXnz6tb0R37f3cGSitXD4S772cmeO7Irs7fbu2N3_uLt0X0xs8TBW8WjGDqts1c8H67DqsRfogzZDrDBIb4bROFvRfKXd5GONoJYX9tBiFQ_eSKwoL0hCYmWCdJMdq6VYxGGemmHoprbK1u_-6xP_gK5-T58heKnr08S4dXVndljDvCQeBuPfYHSWMkpYWuY8S1iW8iItH_-9ApBKo7Q:1lfwtx:2w82t1betqBGyExm_3sqfM4cNAqwETVH53rhQbHTVhM	2021-05-24 03:48:13.652969+00
73bgkt2axl2qk5qd8lnrp2w8p0txv80g	.eJxVkMtqwzAQRf_FC2-SGNnxSwUv-qBtKAkJFFooxYylsaTUtowk50Hpv9duu0h3d-bOnDvMp1fC4GQ5WDSl4t6VF3rzy14F7AO7yeB76IQOmO6cUVUwjQR_rg3WmmNz8zf7DyDBynGb0iqhPOMEElpHMYtIHYdRXIWUZjGjaUKSmqRLSHOIOCZVxCGljGSwzNOorvIRegThQDWL3uBB4XHhXb15zJq6VZw3eASDTo_5xe4hxph8dPsXsXpaOrZbZ-frp61cteJAV8ft8_3jaX-3Ei9brbbZSchNfRC3581r2IhH-1r5HZ5c4TvlGix0h7Mzgpm12FZorFS9z9Eyo3qndFf4EoFPv2tBYOH3RjEsKCEkID5Xlumhc8VUSD0YW9B0lLYZxAReTODFBdiiLn9jRwmGyfJflNBlow5YwngdnnplfqQ3D9MoDEkWJiSgSR4v4_z96xvN9qEq:1li01W:ytjgzgtVxj4mN_BadvHyRbICXcif7ddSbf_fD8w7Lfs	2021-05-29 19:32:30.978347+00
hti100hgn401bj683nvr1v8awj0evf53	.eJxVjMsOwiAQRf-FtSFAeY1L934DGRiQqoGktCvjv2uTLnR7zzn3xQJuaw3byEuYiZ2ZZKffLWJ65LYDumO7dZ56W5c58l3hBx382ik_L4f7d1Bx1G8NEA2QI4EGitJJiaKl0lECOJ3AGmGKsBNaj4qyiYrQQhIOJ29ViZ69P8kXN1A:1li0E9:M72uWIb7GQDst_gccTj90TlzjEAhmmuXMMR3R0wEO8c	2021-05-29 19:45:33.904384+00
5k77y6mmc7wc9ty7mwadqsz2018x51ds	.eJzVVtmO2zYU_RcD4xdGBrVZUgA9zNJm2iIJMGmABkVhcLmSOEOJKknZ4xT9915J9qwJJn0pGsAweBeS9xweXuqvxYYNvtkMDuxGycXrRbh49dDHmbiBbgzIa9bVZiVM563iqzFldYi61VsjQZ8dch8t0DDX4Oyi4GkhM0lZWlRRIiJaJWGU8LAoskQU65SmFV3HbJ2zSELKI8nWhaAZi_N1VPEcF92x2jOlg97CVsEuWLz-fSGcrVolpYYds-AN7l9Wby4_dlTFDYOhuz1NLE_r4mr706f215S275viWlzaj5en_H10Zq54ffubv7rO3v3wbpt_-jz8slt2cOvLpVdeQ_kz27IPwqrek3MzWAdLz2pXnkTRswj6TqLze_dSMA-1sQpcGS0bYHLkuGU1lPmSG7kPhBk6XyazQQOkEDzI8mgbizNKejT9vodyXEZ19dGnZElZtqYVVAGLeBYkWZUHuQQe5HlOi3idZ5WIj-lbpocvYZrC4ZMCwkMB4dGcCuiZZbVlfXP0Ygl5XlUZDeOgCuM8SHIspoiTOMhjQdMcS8hSfkyfSzjJzpAuro24cSNv8elJejY7b2B_8ERR__lPWc-84r_Hc7kLPQChHGHETWOkhhhLemuwxrYdTY2yHZB04hvmCdPa7BzZm4F4Q1Tba2ih80SYcXhLKmB-sOCI6cgOOOlxpiO4v1Su12w_ruhVC3pPxpswTh16iQeNMM6JQo9lwqstkJb1k491eObIKokuTqIf4wsysafEtCoBL1b3AJHgO4BD5_xeg7yLSuh9M4fp7FGdVh18GNOuECU8oDK9mFOwQOX3X4ti4ezgRe6zi_H3eOZb1j9JmA8yeiKW6CCW6Gg-V2s0SSVFtYLMghgoDZKEiyDPaBLQmHIpZcU5zY_pz9RqBk9qw7SbM-InNcSHGuKj-SXBxmMVabROYhomuHfKgoRKHPEqDngaRlBRmhScHtP_lWBr1q3jbxGsBc1GmaCO3KTCUY4amO1QMPJemF8RxwQUZKCV84Hy0P7XKsHAM_DcJEP_LeDxYZAEtmD3uwZhjHfNNzDet-8JruIuNy_CHZuGI50S41HvlG-IQaz2ri256bwF6wiHmRiFEiDNgB1ry_Dx8HtiKsL6Xit8UJTp3PdEUjaEcfIiSW_wJrhJA4wrjduOt0FY7MVArBLN3FgrJuB_C_7Ftinh8ESZrjzVGiFVxrbTiSLqsbU9IETj7RhTsOU9fs2caIzRS6eHurzG_HnN8UtifMcdmM383YJDZkWzebjrsjYbjUxvGH7ewG2v7DRcvArXUZas4zBer4qiwM-wP_7-B2IBJys:1m8fVR:uRrHvNQt_XNSBUpI_tGeRIJ5uab0RipkcULYipppSIg	2021-08-11 09:05:37.031617+00
a180lafr6nyy1nar72mx7fxyv9z50y8r	.eJxVjEEOwiAQRe_C2hDoMBBcuvcMZIBBqgaS0q6Md9cmXej2v_f-SwTa1hq2wUuYszgLLU6_W6T04LaDfKd26zL1ti5zlLsiDzrktWd-Xg7376DSqN86oZ0QAA1EFZmcLwjIxmqjCUxELCobRROTdyUBK2_JWU4WUilIRrw_ypM3yQ:1mBLmf:qsGxWK1ncy7eu5CUTYHY44C4ybbwVvhfJdcGBVshflY	2021-08-18 18:38:29.432394+00
gka6gv7bdbev8e7n2vj9li5nx2bkq2mr	.eJzVVctu2zgU_RcD8saNofejgBaW7UwfcVMkzgSdwcCgxCuJCSXKEmXXKfrvpShbj6ZdzGIWAwg0ec69555LSvS3yQ7VPN3VFZQ7gidvJ_rkzRALUfQMeUPgJ5QnbB6xnJcknDch8zNbzTcMAw3OsSOBFFWpyPYMU9chMmIXm6brWrGruyrGtmHGnopj2_Rs04gc08FqiFwzdGIHm5qpWkbs2U4UCtEjSjgi9Koo4UDgeDV5-_ckqso4IxhTOKISOBP1_WO1X9_dPBUfkPq4eaH55hSZ5eHdzWHrxHypedpf7x9ui_vPwcvWMsneXrr2o7e1bhn9uPZe_qinOXzl_pQTTsH_k2BgU4w4-OeRo6Typykg3GxZhhKBhQyfriJW59zX2oV6JTYEOGD_smalSPDVy5KfCvALVKKkREV6QUkff0C0Bl9xAkXXQ8qi50pMFGOhWEELPsPpjOi6brNQbVb6UoxcNNBRPSoqdmidV_xEAXcshoKnLa22CMkpyeG-CbsTRw-D-taqDYFc7NLpd6zYL3RGhWFn1TyCeGUegZdnvzY_-7V7xFlGov_CuzTH4rgCPhKkkCeXGloLdS2oTWP_tunIzcz9_-HExpkbVPQBuq4OFyO7602wXnVes5qjkFAh0AW832wetovgZt03NKouKmYh4O1Q9NB8jV18XdKOSTkvKjm9Fs_xeJyfWM3rEMSFlTUI4lGqGNcHxVh5d7D_cptGRS1eIRuFuyhFeQ5UUO_QC2Rreg8Yk_50ipI1lctPKOu9fGH1Vuh3Qc2Vx8YhUm22prOf9HhaZ2Eu7rLf2CfzEydZcrZ-IGIYeb5O9xhiVFM-fyqSXra5sfq3aOUprqusXCXw5Hwxa34WklioM8VZzhp2sXgdKXFvNoDsNtaRC1MSppw7fbbM6BaGHDvZNlmM15e0BhkkBLYctQGiDVW1QTmrdaPLMejFA-2VzTNhXFpt50P2rNdCI2td9y3h_STebMvFWiM77H4YZElkOdhs69WuyBNrPzj5TDFUUUkKTljuTytaJ758-acVsF371ySmqIzS3SgyYTtKDrBD4h8MvhaklNPJG802VNs1TM-b24ahqpb2z_cfrKcyLg:1mMBGl:Sxiy1Rxshsv8XywuGyucP0IYR1zGZO3BxVY6_YB3UAw	2021-09-17 15:38:19.650415+00
naa0vwxzvb7zns2wiafm6zmsynf1c19k	.eJxVUMtOwzAQ_JdI5AKN7NhNHKQceFYIijhUPIUix147hjQuttMHiH8npT2AtIfRzOzMar-iivehqXoPrjIyOo7S6OgvV3PxDt1WkG-80zYRtgvO1MnWkuxVn0ythPZ07_0X0HDfDNsFoWkKgigmKWVsrFjKkJQZoapAUmW0yCgROc0lqjmjda5ySTFFY6KKLBf1ELriOnDTjhYOlgZWo-j4JRLeqbmRsoUVdxDs0F-SVWs-ejs9w5reywt8-TQJd49qVqPb54dPLeDm6gxmLJ-a2T0Len4-cQXftDNhyDVTyy7uYB3KOJjQQhnAh1jyAGWKUjzCw6BDjA7ISVrs-Dhw7cu4AS63P5xzPXC1lZuRsH0XShRL8MKZRTC2K2Pf9nqX6sFWu5IBciea6p9R26o1S6j4cAusF8b9wugIZ4ThnI4ZS0iKGR2T1-8fvAqYMg:1mrc5M:Zvd9I34BRY3wO0fVZ50IMK6XUwicEZk67--JzFKxKLw	2021-12-13 08:32:28.224243+00
it50eqyslatuxc73wh16v7d5x3op6ei9	.eJxVjEEOwiAQRe_C2hDKQIe6dN8zkAEGqRqalHZlvLtt0oVu_3vvv4WnbS1-a7z4KYmr6MTldwsUn1wPkB5U77OMc12XKchDkSdtcpwTv26n-3dQqJW91tpGRHBMtndBdSk5x5mQIFEeSOUQbA-AoAzmgMhDdGjIgFbO7qH4fAHmyDeE:1ms2ym:ikQIjEKIpUZfRzIqfnNfjM1WnwthAjHdfl6Mguy_glA	2021-12-14 13:15:28.39211+00
eqr6z1m9kz9lkduojo2xibi7hbkekpeq	.eJxVjEEOwiAQRe_C2hDKQIe6dN8zkAEGqRqalHZlvLtt0oVu_3vvv4WnbS1-a7z4KYmr6MTldwsUn1wPkB5U77OMc12XKchDkSdtcpwTv26n-3dQqJW91tpGRHBMtndBdSk5x5mQIFEeSOUQbA-AoAzmgMhDdGjIgFbO7qH4fAHmyDeE:1ms33m:J6cX6PThaJCcMrQ3VaNqnx7nnXS5JfkFKnalv8WaKJc	2021-12-14 13:20:38.718415+00
ityqmfhkb4ulu2c9mpe8d04hvjz2jbai	.eJxVjVFPgzAUhf8LiTxtBCjQbgkvzi1qmDGRuExjSEsvUOkotmWbGv-7TPegbyf3fOe7n05BB9sUgwFdCO7MncCZ_L0xWrbQnQr-SrtaeaXqrBbMOyHeuTXeWnGQl2f2n6ChphnXYRiXGCMCNE4I8wPOCYGKYoo4rWbUrxiLE4Qw8iNcMYxhVhIc0QiFPonH4Sg90NpSIae9hr2Aw9SZPzul0dVOcC7hQDVYNf5P2yxZhhsM11n9Zq8Cpfa75ujn6wXbQnuHs1W0-FjZB5RseL_NZvlNFd8_tiSPn5CKlvzW7eBoU9cKKyHNG9q15iIMXKb4e9oNUrpGDnXaqB24BlTxy42R6rIpOJhSi94K1aVurQop9lDQUQfHXuif6EyCBBEUIkwCD0VR4uPk5esbTzOD3Q:1msEr7:qMQTZCdCbmYRPdNoRIWkcOL-CLw9JUjRTukaIQrIJVc	2021-12-15 01:56:21.364484+00
au2i64bii43321otmghpym5ogds8tjj8	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1mzEhS:9c2IOTGuxUXQs-8EoxZOs6xUL15xrmTv7vzEOtkFzPA	2022-01-03 09:11:18.183711+00
brr4f22iez1nj7gpci8qmf738neinoli	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1mznN3:tq7S9q1X9T7dXPIDXN4iZEwtQPXaOwOj8IZqaLe5I1g	2022-01-04 22:12:33.0065+00
amoqodn3c0vuxtfzgp2hf2oeghddxwam	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n0NT6:k0CvHDPXRb4Ec0zoFr8NJkIibuSGhWuHcXZUnTZANz8	2022-01-06 12:45:12.778819+00
9thpjat98ml70b5im5m7v0yzrd62422b	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n16nW:ZwroI8O9yVfJQml18MQHoRybeCZ2UBTtv23tK3JBm0I	2022-01-08 13:09:18.567395+00
vk80butg5imrkq8bnzhmgybgcnc4ovze	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n1TB0:law69_caMotJ6AP6OBDt_8YCz0Gcy2iDsk3b90F9PuU	2022-01-09 13:03:02.670746+00
de3dcbxoys7xohwo60xyxvgtey4rwgmb	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n1qdT:p2h61Wy0PW79pb3MZi7AhbP26n2f-2fTLc3pykJP1Lk	2022-01-10 14:05:59.466072+00
0q05tpjxnzowcko43gkj3hy1n3c1zlp3	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n2urB:ilnk70IcjQAfogSY5HvrUxUtpuDlYF-xpBa5Q3LUUgY	2022-01-13 12:48:33.145327+00
pk6no7s9yxvdjsq4j9ykl0oymzji76qs	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n4NJi:iqfH2lkK8hxi_4BbKH-gSZDQ9PuSe3bL6gY4v5vKs-M	2022-01-17 13:24:02.023003+00
7a3n8c7as135bza4dnic5ltbqcdoug4r	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n4Nu3:mf2S8jlPXY6ED19KzojceM7cWrR9D-ODFzffc5OArQ8	2022-01-17 14:01:35.67646+00
dha345zbxrepcl7lf8zh52m9zap6ffku	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n7W51:k6F6TwTtckWZevjzNYfWveDTFRdMFXNLnSuJGaVuEas	2022-01-26 05:21:51.56837+00
x16vgdt83y1kjczd299i300b95i7yk31	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n82Df:aLSyqHYaEAOt3P2rjaz1G5MAf9yNu6-C-b68TP3mELI	2022-01-27 15:40:55.676557+00
ihrbnhy27bwblwas2of26j0e24uijlk6	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n86Af:xq49xSwzPcHtIg5vt6PMVH5dkTRLXL7WlnTDCGYp-MU	2022-01-27 19:54:05.624607+00
emddbs22d6wd7nao5y7hfe5xqa5iaa36	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n8MpV:XfAQgwpLJL_wC-NZXNSArz8BKonm2bMWSN1DQrtQUBY	2022-01-28 13:41:21.827221+00
ox2gcq30dwefbdys8waihpq0ovhv0kvz	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n8Qv9:LMl2bwge5uoxWf8Fyl7MN7ZCi_f6Jn5u9w84_6CMGGc	2022-01-28 18:03:27.783914+00
kuhq2sa46kpinfuvn9v6q80hdjvuzeit	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n8SP4:-7C7LKhGMoCHusYkzihi3mHJwLGInFERUmrS59egMxg	2022-01-28 19:38:26.484321+00
g7a6wwkuycyj05eli983w50ohagdhbdw	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n8jyq:1YWTEAMw1ZgaY5ED2Np1aWe618EPWfCfgJsox5Plwbs	2022-01-29 14:24:32.827312+00
5tzxr56b68fre3ffzf7jezpvxrr820d7	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n8lvn:sO8DUOAkQTokZPZl82DUwTYNcLDnrTKcI7WpLPZHXNE	2022-01-29 16:29:31.08595+00
xyziuykrr0irzod11tqs60uomyknyp1i	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1n96OS:bnVnADEw5rGBPjIzRzjFTwUqH2KBLNk71cMXELc6c1o	2022-01-30 14:20:28.547663+00
8c63sj7h9gvt6l3ixkcgfqzazt3sn4ib	.eJyNlmuP2jgUhv8LEnxJBxHnBpXygSmwmu4w0wW6253VKnLiE-LBuTR2BrJV__s6l07BTWglhJz3Pcf242PH-TLwcCEir-CQe5QM3g70wZtzzcfBAZLKIM842afjIE1ETv1xFTJuXT5epwTYbRt70UGEeSSz_dkM6Q5gE-vIIFPwiRmGQRCGRJ-ZCBloBhaYJDRn4RSFYDgBGMgJYYZDWzfBkZ0e8V5gym6yHF4oHG8Gb_8ZBDwPY0oIgyPOQaRyfPfuafFXUm7vy5mxMn-PPs0_rH_b2dtDuTqx9_PVvXFaPolN9mxZT1szQOvyNBMf_-Q-fv_3C_kjCkYJnIQ7ElQwcLcC50JL0qNGE814p22DKE2Z9iFP9zmO-YjK1UjdoXM7RMhnaXDgsjE05kPrthEPULYKQpaj00P1hN7JfyGHebV4PU6ZFrkWRJQR7Vk2Eyg1v9RwjP-jyV6T646ZxoFzmibaEOnfuyozeO2qSLgoGZBXl0AmosaeNApNGE1gW4VtZFXhbNLWogmBRC5A2ecSLHCrSkpnUf0uM9c4UwJGYZrHXkiBEX6ze9zN773V42a9dacXzt3D3e6ux1vfPXgPH9etN7n05p_OPH0yubQnNwz7wNx6dYfI4VqCYxgaKyUqApZ5ot4Bl0YOnwuaA3HTRHHqhlfVwOWyTgyqxVVi5LahAXC1UwIhLpjwXjArQDUpcXVD0R43i-XG1RV1sbxf7paX-XoLjPeg6D2Iei-ifo6YFLEPueJ34unX8PQaz1S0Bg8pahceavF4fSBlHeV5UAJ6OFEvJ_qFUqJuVnSNFdWslqI1rIaidrEaLWuc-pSB1lRAU_eu0Qds9AIbPyms0Q1rXIM1alhb0RpYU1G7YM0W9hhhwTWcZX28Zh-v-RMqs5vKvEZl1lSOojVUlqJ2UVktFdzE8g77gcXqY7HOWaDKVexOFOsailWjTBWtQbEVtQvFblGiNAYNE5LLC0nrOIB2H5P9C8fM7gazr4HZFRiaKFoD5ihqF5jz7Y2ZlBov9vLiE_Ki7WRz-ticc7ZYTpT-gOZ0oznX0JwaTZ1DgzZV1G9oIsLJwZOfFM00k4KxMy2T94IcI09jr62hzEi_t3nhP0Mg6Tgr9m4Oe8qFPEccUq_5MpJNnAeRR4AHOc2qpXJH-9Rj9AU8LBPhlMl3TtUcvNFtE1m6ZZmT8VTXdct2_v36PwnMoAA:1n9pK8:K9sRhUYVNM4iAfvWnSJBE5UezePVBioHOgEOc4_-PZc	2022-02-01 14:19:00.861495+00
of5mnbcvuojduxaza0i2j0cgxubg0s4m	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nADE4:pZ6Un4v1XD6qSlXdYoaOJvEMsAvIFRlNx8DbtxsRgVg	2022-02-02 15:50:20.086656+00
2zfcfo4ilkegksxvta8i2zch8bt1as3x	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nAXtl:U3cuCrwQj7SjBFBHphv821i_HwkWVcIHv5_jzEmh100	2022-02-03 13:54:45.745455+00
rv0jj0vykd4s5stysnyytbuklfggc2em	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nWLrZ:kHUwNn1Ap16VI2PkRjOnJHP3cp9idkuheaAEaRCBcAM	2022-04-04 17:30:37.513609+00
gzn67j913vhe30h6bbq8azrnt04u41zq	.eJxVjDsOwjAQBe_iGln-20tJnzNYa3uDA8iR4qRC3J1ESgHtzLz3ZhG3tcat0xKnwq5MscsvS5if1A5RHtjuM89zW5cp8SPhp-18mAu9bmf7d1Cx131tkzWiFMgQtNYjeCWsMBLISe0DejkCklYOrExQVLA-O7cTQyr45AT7fAG0azac:1oJjbf:Hwuercp8x5W6Tn5OrhmDkqZpLt85jrL7Re6S-s6C_I8	2022-08-18 22:46:19.389375+00
3v29hklnlr53iaz6q4ygsrmznk6t6gm8	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nAa0N:wxFl2WTFPB8yAEG3U9P1KtarPiWz9IbqaUCms6IinhY	2022-02-03 16:09:43.40341+00
k518swx8f36vin43c63h4jhdktt2kijr	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nbVMo:YvonCpcUcZxTNDCohxbZeF5AtY1uKYdsLI0k5OYel44	2022-04-18 22:40:10.566141+00
8wexypsqyzknuy8hemvmcigv72vpz99x	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nxdc5:jXJtAKMDI0HB1mUUC9IJtxS55meHRexNB4dPJU9SZ2I	2022-06-18 23:55:25.780273+00
p4l8kzs17cq057rp0k0z0te7ichr6xoy	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oKFuv:HcOAlmu_6I7PH_OPsVRSkNJmZ44dkEd_-zLdGLpbMKU	2022-08-20 09:16:21.936804+00
4ua9o4kkeyep1of17b8m7pg1byesc82e	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oQxE7:nSAb_ujCMXiI-GmeSsveoHiQSSjv_h_u20QPrYe5L3E	2022-09-07 20:43:51.08692+00
gopwjou44o13456orb17rc5pi73j1pi1	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nc5iG:Rj2wRbPY5p_vT3_-BfK8KhYbiuO8NRghbHGV_ayBmbk	2022-04-20 13:28:44.690723+00
z603ko83fu72r520n8ma0lf1tfp5lfcn	.eJyN1v1v4jYYB_D_BYn-kmtFnDc4KT9QSrdupb3RdjtpmiITPyFuHTtnO6V02v8-h6Q9cBPuJITM93mc5BPnhX8HCa50nlQKZELJ4PPAHXzaz1Y4fQJeF8gj5mtxlgquJV2d1S1nbVWdLQQBdt72Hmwgxyo3s1eTCXIjwD52kUfGsCJ-lqVplhF34iPkoQkE4JPMn2RjlIEXpeChKIMJzkLXh8hsdIPXGlN2Wkp4prA5HXz-e5AqmRWUEAYbLEELs__4Jcu-_ek-_HZ9Hz7z2R-_v_46n2VSVPThcu59vb6azn7Jby_Y1y_Em21uJq_eY3CZny-W1389vupxsTzh8KLjE001g_hOY6kdLjYO5Y43c-7SXAjmfJFiLXGhTqg5GyIeRudDhFZMpE_KDIbedBicN-ETbNsEIYrJU1j_QjPzrc1u3kvTsmTbej_fy9sS3ssVV3rLgLxXCZQ6b8qjJqGcUQ53ddvSrBTsHUhw0bQAN6htX5VgjdvUHHl0UX8OZy5waTWcZEIWSUaBEXV6f3s_vU4ub5eLu3hyULm6ubq_eq-ND2qLq5vk5mHR1kaHtenXvZo7Gh2WR6cMr4DFaU6ZOTWRcjguYOhdWl05sDLRu1U9LEj4VlEJJBbcquwGSb0GsaJ8zaA-uVaPuRRoCsreKIEMV0wnz5hVYBcpiV3Pym6XF_Nl7Frpxfx6fj8_nO-2YLwGK-8hur1Ed5_Iq2IF0qp38txjPHfH862s4SEr7eKhlqd2N5lZxyFyrYYeJ-p1op9YStRtRcesaGcNrKyxelbaZfVaayFWlIHTrIBjX7teH9jrBXs_WFivG-sdw3o7bGhlDda30i6s32I3OdbKwWXZ5_X7vP4PVH63yj-m8neqyMoaVWClXaqgVcFpYd5LHyxBnyXYt0A91yp3UoJjlGBHGVtZQwmttIsStpRcFOBgQiQo5XTcgGGfKfyJ2yzshoXHYGENQyMra2CRlXbBorcnJt86qlqbF5-mgnfaoj5btG8rzIHSD7SomxYdo0U7mn0MDW1spV20cUs7l5inuVXqoYx7HxvjD0gFDFJtNb0xZ5hKYf4bTBm8YE4kxVbjEfi4hltJw55Y6Rtb55g_JVtRNSReMbaXleZ1aLYnRZG0l66ZIb6PVbV6NBIzYNU6lrCmSpvHhwKRNH_yzBDLNE8IqFTSsr5C4pO1SBh9hgSbifBSmnNWDwef3NBHkYuiCJ2N0GRkfvzz3_-LlOmD:1nAedI:_zGnGLa8ILzL7oUYeSj9vgvinA3i05YLzSzSQd21mes	2022-02-03 21:06:12.057468+00
hdkvcl4znub2b8t0u1x8c4zu1kkqtsdd	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1o1kf0:ZOw_DAfHfM1JUrUyXpd9GcSsyEJT3NUvlbQnCZ3uAA8	2022-06-30 08:15:26.480334+00
xhm0nbim2wpyqzjrrfb8oxlhuzwb3qdx	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oLfxK:nD_IHR1ld-6NSdVDreC2HuEb28fQgZWon09trHs1VsE	2022-08-24 07:16:42.926256+00
4ma2fu3kruuqa1dpumg6v8b9rvedp0ah	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oRuFl:uupuFeVfnelS5Q5u2I-B5usn47bKjxfxi3p30HylqTg	2022-09-10 11:45:29.600557+00
um1k1tso1r4k80zo96a6i58q6fnahykw	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nAuL0:6NJEN-ALnfkegwD0pKQAzkcKAv_R5X0g2wPm9pbuzCM	2022-02-04 13:52:22.194062+00
qwemx61mpuyuaxdbh478o5ybphcy6zsq	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1ngbax:_JXTIAd14CgX1q3MDKKnkDl3L_QyJ4M3c-K3qQPyjcY	2022-05-03 00:19:51.190416+00
q7a75exnejf3jq6p57zdyms4xruup736	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1o2a24:WRMUFPC-mVDl611GAjnPs1nG0mozYuuGKXcqOBHfs70	2022-07-02 15:06:40.671886+00
i01rt6vuscwqdlmlwxbrki6zk1kxi7qw	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oMUKq:negzb6KXDEE3HTSHGjqdJtl_n5uPlmiUVr_uLqMLI6s	2022-08-26 13:04:20.40836+00
52du4o9dthfkbxau44zq7jazmwisdexi	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oU7LD:Qy-nSrcK14_0ZvXXLtFafdjRvHZyL1Lc-OAZREcv6P4	2022-09-16 14:08:15.515348+00
bww9zuq58u6cftgkffal3qrcvf16nsbd	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nBItO:1_GBOuIVoHRKi1Nbl7igtSSze4ySmyUNGCvjxb68M5I	2022-02-05 16:05:30.739841+00
lwzcrqwtji7o5tpv47whcmv0tog3rcch	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nhWpq:Lc_DoIX3E2tqqj-c7gSUbhIksS8ILhJODTGDUW8sy3g	2022-05-05 13:27:02.521899+00
tfx16y7hca4j5vuse1ijw6uf9fniblkm	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1o2tHn:S2O4_Xp5MSIccsjcIjkJED7XT5lDYMDxNApw-brI6mY	2022-07-03 11:40:11.650299+00
lrpb5a4eizkxxwmtbcdsuq3al5xsnvt2	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oWDVb:i0dj2R5I0TCKgs9CkcPLmmZRAM6FoMUeFfFIng6v5pQ	2022-09-22 09:07:39.829932+00
t5mw129oy6uby2jk0pnd1waw4fj1ielm	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nBfi3:V7ZiQt9XK2m_Ul76kLI8ybJ454LjGIhNPxGORAwf-Fk	2022-02-06 16:27:19.156683+00
0anyadl0qfjdvjciwr6l42l7bcs4u58p	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nnNHw:z7BdEzYo0kcUs6rC2eQ6vcEVbj4wEWkoiqcItK2-kks	2022-05-21 16:28:12.478917+00
dup8q6vuyfubahezp0qaxdxttlpdaav7	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1o3HnY:mPgjeezNnaSuknlyLW4H37uWdGu5py3ih_soC7Tt28I	2022-07-04 13:50:36.59728+00
emzj5drv1xr45vmwl3i7chrbskp6fv5p	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oXHsA:6YfzVritBdCxPt0nveb55CSzkvKjsa7BEyBpLHqRReI	2022-09-25 07:59:22.909182+00
5pimpk6gvy7j83lde6ko9n04x3bazbub	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nCM1E:99eRUPurU03oJ6nBMVmFF3Qj1irdOZ4_ASa75lUwa8Q	2022-02-08 13:37:56.246252+00
i1jjodsc4v6146sxded3bhevdzoe26wj	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nnS5L:UqmfjJXs0EbmSwFijO-6_ReZS6xsGovozipcuvReOrM	2022-05-21 21:35:31.766177+00
xn3ai3t1rtvtq2upz1gtm31cd5iy6u1w	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1o5Njx:JSSyeHPbfUaPdlbfkOJo3D3fjdw9BCyKf2Ls_QAV7Ng	2022-07-10 08:35:33.721497+00
nw4dwq3fdnvgu4hcen072s46ifvcz253	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1obKWt:5pQq-XElSK8HdBiTc61h5sQDPJnLtXiUp4a7aLMQYe4	2022-10-06 11:38:07.654957+00
os45csi2j6qth9te8lwwjc6lyfhuqgh4	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nCMzw:ZqNmmKBhwcjTIX_t2rWkecx1OfiW9KaKDXOb_vEgwa8	2022-02-08 14:40:40.008377+00
wskvp5u77grh00ev1pm6tmryfmnfrlyu	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nsWoB:asiVSu9oQUlU8vnf5IMq1f8s6fTgmk85o81Qm5zH0AM	2022-06-04 21:38:47.201511+00
pbos4k7p092xia46i38a7o6n41iv3yeh	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oATjJ:iibZ9yu3QSNFt1Fn3vLcWXQJEn_m7m2j33I11N_niIw	2022-07-24 09:59:57.00099+00
qyyrbz8w3q3r9u0yobvuzkmrjb0rgnmd	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1ofl1W:MQx-8a6k20GE5VXPyLYWv7H_l97FR6eiZETxAUp_LcY	2022-10-18 16:44:02.705563+00
ek9mimjt5hxfifrd02lbufi7xtf4mf02	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nCOn7:9cskgFhHac6GfLoEGE08AnTuLbJwkCfnAUXDHQegLlc	2022-02-08 16:35:33.447901+00
gozqh7g406lfgfzwc50bms5m1swzv4wy	.eJyN1l1vmzAUBuD_Eqm5YYmCzUeYxEW3tVq7tunSpp02TcjBB3BrbIahWTftv88BqiUeZLuz3mMDj40NP0cRqassqhWUEaOj1yN79Go3W5P4EcS2QB-ISOU0lqIq2Xq67TLtqmp6KSnwN13fvQtkRGV69DoIkO0DcYiNMJ3DmjpJEsdJQu3AQQijAFxwaOIEyRwlgP0YMPITCEji2Q74-qIbklaE8UlRwhODzWT0-ssoVmWSM0o5bEgJldT3D1e1_R42x9dvL87T8-A-Tdn11eL9Mvn8gWJ7VmV35PFi-Wb-dHM_X60-Cub9-Lh6-PFw_u3zKb2_E6djAd-rcFyxikN4XBT82RJyYzFh4bfWQnAmwLouZVqSPGcitW7iTEo-ZnpeZChqzseJLPMoYcCpmtwubo8votPF8vImnO9Vzq7Obs8GapdnV9HV6rKrzfZrx592avZstl-eTThZAw_jjHF6hHxlCZLDET41emXAi6hqqPuFEr7VrAQaSmFUmkZUPRcQKi3nsJ0Lo4-eDBaDMi9KISE1r6Inwmswi4yGNjayxfLdyTK0jfTdycXJ7cn-eLsDkxSMfIBoDxLtXaKo8zWURr2XZx_i2Q3PMbKWh4y0j4c6nmpeM72OR8g2Ogw40aAT_cdSon4rOmRFjdU1staKjbTPijtrLteMg9WugGW-u3gIjAfB-B8Li_ux-BAWN1jPyFqsY6R9WKfDbjJSKYsUxZDXGfI6_1A5_SrnkMppVL6RtSrXSPtUbqeCSa4P678s7pDF3bXAdqxR7qW4hyhuQ5kbWUvxjLSP4nWUTOZgEUpLUMrq2YDekMn7j23m9cO8QzBvC0MzI2thvpH2wfyXE1M8W6pOU1AVk6LX5g_Z_F1brh-U_UXz-2n-IZrf0MxnaGlzI32hVRkRj9GzrNvHbD7Bf7JCfxf0PUqZR90a6hHyT1vV6weItU7xOg1LSJmq9D5SIKP2F0A3SRlnEQUVl6zYTlU4TmXE2RNERA-E74U-c7bN0Svbc-dOEDj-bIo9PHPx11-_AXyLUrk:1oEtTS:SyPlMMLbK2CQha3WkK-ryvhLd3dXlBroU9lwTM5v0fM	2022-08-05 14:17:50.413627+00
k09gu2mhyxo93obtyb8j14wtd2nwjtkx	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1og25t:qFA3ldEm7yvV4tksg92GXJ6bG6w_hVBWeEfo0dnaH5Y	2022-10-19 10:57:41.717161+00
67ckmpv9p9cil8jtz15ge2a1eksizdc5	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oFdbm:Sw6P3gRZk2Un4NNYi0oiu_wOyWxDnayNqNSWphmLpV4	2022-08-07 15:33:30.447709+00
wv7g7xoqatrt7jl90w6ted7kvc4d6x2v	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1ohnLL:KTbIPQKE6Q2i14pYSQwY5XJ77deapTGipo9PGzSebSI	2022-10-24 07:36:55.720973+00
3om9mu9k6yfxyzn5in48c0jdihsom7u7	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nD5gT:WBJLo78JXWGXNDSqSbOko_E0rkIsDfVyX079_qpu-4I	2022-02-10 14:23:33.988616+00
ixp7q9ocoidier1v9miqn69hyoj1y08r	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nEYae:yyiyr_vPMkdaKe9oRgEB4tblWZoE2bhmCdMSTYl0d_A	2022-02-14 15:27:36.869897+00
c8n052txnc05l3xl3f5qw5cg0uxau557	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nFkSP:H92MfPqBdxRNNNhWBZOp4A5FQnrtgMF71ucCz3f4qNc	2022-02-17 22:20:01.867019+00
dv1an3mlkuikn1z1hc4xggqq7raxwlno	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nJyx0:tbnD0n4PQhSYXv7oSzo4TfDfIaRpD6JQThY8fWu0RhE	2022-03-01 14:37:06.008301+00
a1qvur9h7dh5dldwzp7bk8u3qkwxe117	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nKpkC:n-roozaIpCJ6Xpedc_r9V0YjKRPDm0Ijx18uZz7RmNI	2022-03-03 22:59:24.687771+00
qgmqjltoqv18il7fdzv3mo78ozy6phzm	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1nVjGz:Itjo_i6twRlabgdICGtm-RAn2L13aO26pXFJWm2EVzY	2022-04-03 00:18:17.129234+00
m6gvd5gdte6gy63k4xvfpx1dl52f7eb7	.eJyNlm1v4jgQx78LErzxgojzvFJe0IXd466UFe3p9kGnyCSTxNSJUzspRav77mcSqoI3YfdVrP_M2P7NjGP_GISkrrKwliBCGg_eD4zBu3NtS6JHKI6GeEeKlE8iXlSCbidHl8nJKicrHgO7OfleTJARmanore9jwwViEQObsQfb2EqSKEqS2PAtjE3sgw1WnFh-4uEETDcCE7sJ-CRxDAtcNemepBWhbFwKeKawHw_efx9EUiQ5jWMGeyKg4mr94NNjvsrvmWssSvM2Xd9scT3jX-bJhhhPG_mH_Md-2v9pEDv563a3juZfl_ly9zL_-i3ZmEu73tmjAl6qYFTRikEwK0t2QAXfI1og8wNaF4wWgD4LngqS57RIkYwyztmIqrzwoKgZGyVc5GFCgcVy_LB-mN2GH9eb1X3gX1iWd8uHZY9ttbwL7_5enWzTS9vsy5nNmE4vzdMxI1tgQZRRFg-xK1FBchiaHzWvDFgZVg3qpUHAU00FxAEvNEszCKtDCYFU5AyOudB8VDJoBFKfNIaE1KwKnwmrQTfSODBMTVtv5otNYGjqfHG7eFhcxhsnYJKCpvcgGr2IxjliUedbEJq9E8-4hmc0eJamtXhYU7vw8AmvbTNVxyE2NIceTtzLiX-jlLibFV9jxQ2rrWktq6mpXazmiTXnW8oAtRVAeu-afcBmL7D5i8Ka3bDmNVizgXU0rYW1NLUL1jrB7jNSSUTKso_X6uO1fkFldVNZ16ishsrVtJbK1tQuKvtEBeNc_ax_YrH7WOxzFjjGauZOFPsait2geJrWojia2oXinFAyngMicSxAStRxAJ0-Juc3jpnTDeZcA3OOYHiqaS2Yq6ldYO7rMYNjy8iMluj-ICvI9Wq5Z2QlAyIBHf9C6nPgtUBv8VpU3zF0zxMSC17GfK97vKbDHOfqqZHJs1XQEHvYt6eLT5_RDagwQGOE8bQRZkkFYoh95fRhOJ0Pp7O1uqgPQARaXcyAfHVloos5nOnZHMrH1_Z0WYvjimoRR7953aYsWNPasnia2lUW7_UiKw5I1mkKsqK86Gw5r6_lvPMM52rP9KeO87o7zrvWcV6Dpu-hRfM19RWtykjxGKpGabfZvIzetFJd12oNwfPwdLRUBH8by3q7g0jRSVangYCUqgYVIwk8bF9makhElIUxyEjQ8piqYJTykNFnCIkKhJdS9eBxOHhnOJZp-J5h2RNPDUz873__A6wY2_A:1nCgtt:tuJZcuuK08kjpNCT2r6AY1EPh7s7y4F-A2uUG5SjQxA	2022-02-09 11:55:45.864268+00
zx2cislh3gsfw0nu41ah4sv9nl5szp49	.eJxVjDEOwjAMRe-SGUWKE0jNyM4ZIie2SQGlUtNOiLtDpQ6w_vfef5lE61LT2mVOI5uzcebwu2UqD2kb4Du122TL1JZ5zHZT7E67vU4sz8vu_h1U6vVbZ0RwUSiQA8-DZA6qpaiywwDgAeUogTWgDqDiYxEPUQVJTy5INO8PBhk43g:1oHOyw:JHmixxuKuSjxV0SAlZs1AuvKaqJrDDcwq16Ni5mtihY	2022-08-12 12:20:42.06861+00
dtk6elkr8lv1o5vg5mine1e7cb0pxa4n	.eJxVjDsOwjAQBe_iGln-20tJnzNYa3uDA8iR4qRC3J1ESgHtzLz3ZhG3tcat0xKnwq5MscsvS5if1A5RHtjuM89zW5cp8SPhp-18mAu9bmf7d1Cx131tkzWiFMgQtNYjeCWsMBLISe0DejkCklYOrExQVLA-O7cTQyr45AT7fAG0azac:1oiF5v:XIc_skz5eQYxquK7ckJ68e0MK14unGhprMtbb7yXzpI	2022-10-25 13:14:51.29457+00
\.


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.home_homepage (page_ptr_id, body) FROM stdin;
46	
\.


--
-- Data for Name: offers_kid; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.offers_kid (id, created, name, email, phone_number, school, age, payment) FROM stdin;
32	2021-12-22 10:28:17.227803+00	عبد الرحمن اسلام احمد الرفاعي	saraislam626@gmail.com	+201062476827	البيان	6-8	basic
33	2021-12-22 10:43:20.65837+00	Mostafa Elsebai	asebaie79@gmail.com	+201223443790	Eljomhoria language school	6-8	basic
34	2021-12-22 17:04:36.383126+00	Ahmed Sameh Moustafa	zeinab.tail@gmail.com	+201283473009	Bianki School	6-8	basic
35	2021-12-22 17:51:28.611855+00	نور الله محمد حسن	hebamohamedali@gmail.com	+201221300327	Mahmoud tymor	6-8	basic
36	2021-12-22 19:38:24.983316+00	ادم	n4041000@gmail.com	+201154837172	غطاطي	6-8	basic
37	2021-12-22 20:39:02.275802+00	mostafa ahmed meshref	berryelwakil.eng2015@gmail.com	+966542504799	creative international school	6-8	basic
38	2021-12-22 20:42:36.946071+00	Hedie Ahmed Mohamed	emy_koko@hotmail.com	+201156777119	Alfarouk language school	6-8	basic
39	2021-12-22 21:18:06.051506+00	Mohmed gharib	zahraamagholaa@gmail.com	+201003239389	المدرسه الرسميه للغات	6-8	basic
40	2021-12-22 21:22:50.675258+00	يحيي محمد عادل	mohamedadel.gs@gmail.com	+201009491740	المنار للغات	6-8	basic
41	2021-12-22 21:42:17.508097+00	fayrouz ahmad	fatehyahelmy1982@gmail.com	+201229876014	saint janne antid	6-8	basic
42	2021-12-22 21:59:44.653099+00	Omar Taher Ahmed	worktaher_4@hotmail.com	+21114499960	السيدة عائشة الابتدائية	6-8	basic
43	2021-12-22 22:08:13.106964+00	Omar Mohamed ZienEldien	sherihan.rashad@etisalat.com	+201119464433	Asmaa Fahmy	6-8	basic
44	2021-12-22 22:49:00.212858+00	Mona Kamal	monakamal328@gmail.com	+201152271247	Mona	6-8	basic
45	2021-12-22 22:54:36.030608+00	Jana	ahmed.bigo2010@gmail.com	+201014000050	Qaitbay	6-8	basic
46	2021-12-22 23:27:44.875066+00	Saif uldin Hani Imam	haniimam1980@gmail.com	+201271760777	مدرسة الكمال الأزهرية لغات	6-8	basic
47	2021-12-23 00:08:02.499134+00	Ali Maged	magedmuthanna21@gmail.com	+21112081666	Ellwa	6-8	basic
48	2021-12-23 00:32:57.376461+00	Malik Haitham Hussein Mahmoud Hassan Mabrouk	haitham.hussein.mabrouk@gmail.com	+201064532532	الرسمية المتميزة للغات	6-8	basic
49	2021-12-23 01:41:53.768234+00	عبدالرحمن	eng_saleh20100@yahoo.com	+201008824203	فنارة	6-8	basic
50	2021-12-23 03:20:44.521525+00	Mohamed moumen	moumensamer1184@gmail.com	+201064893102	Sida gaber language school	6-8	basic
51	2021-12-23 04:10:46.734758+00	Moaz Ahmed Mahmoud	gpc800@yahoo.com	+201224174988	Al gad	6-8	basic
52	2021-12-23 04:28:00.179047+00	Mohamed abdelaziz gafar	mohamedabdelazizgafar@gmail.com	+201008512819	Ashab elyamin	6-8	basic
53	2021-12-23 04:51:34.507312+00	Hamza Walid	walid.abdelbaset@gmail.com	+201066610229	Seven Pillars International School	6-8	basic
54	2021-12-23 04:53:42.803501+00	Moaz Walid	walid.abdelbaset@gmail.com	+201066610229	Seven Pillars International School	6-8	basic
55	2021-12-23 04:55:01.550989+00	AMAR MOHAMED ZAKARIA	zakriamx@gmail.com	+201220011588	BSE.	6-8	basic
56	2021-12-23 05:39:53.556681+00	Abdallah mohammed abdallah	emanhamdey391@gmail.com	+201007937994	Sanafine primary for boys	6-8	basic
57	2021-12-23 06:37:06.061373+00	Ashraf Mohamed Nouh	m.nouh444@gmail.com	+201005495106	Elnasr	6-8	basic
58	2021-12-23 06:40:32.427564+00	Mohamed magdy	magdyshabaan51@gmail.com	+201000053504	Alsyda khadiga	6-8	basic
59	2021-12-23 08:30:57.993815+00	Yasin Mohammed salah	basmasweed20@gmail.com	+201095750851	New Ramsis College	6-8	basic
60	2021-12-23 08:32:28.52784+00	Yosuf Mohammed salah	basmasweed20@gmail.com	+201095750851	New Ramsis College	6-8	basic
61	2021-12-23 09:40:23.252159+00	Morris peter morris	petermouris32@hotmail.com	+20120332388	Bilkas khames	6-8	basic
62	2021-12-23 10:29:36.016187+00	Khaled rashad	kr0783213@gmail.com	+201277300102	الزعيم السدادات إعدادي بنين	6-8	basic
63	2021-12-23 10:45:48.216847+00	Ibrahim ahmed shabaan	mariammohamedelshafie@gmail.com	+201001688740	Cambridge integrated national school	6-8	basic
64	2021-12-23 10:50:32.566496+00	Mohamed Moussa	mohamedmoussa375@gmail.com	+201066092072	Ahmed el manse	6-8	basic
65	2021-12-23 10:59:33.832709+00	Yassen ahmed	rehamsleem17@gamil.com	+201270557858	El jezera	6-8	basic
66	2021-12-23 11:13:22.446292+00	Al baraa Hossam  El din Albakly	elhossam51@yahoo.com	+201062777071	الشهيد على صالح	6-8	basic
67	2021-12-23 11:25:51.601204+00	Jana Tarek	tarekfathy81@yahoo.com	+201111031236	MILS	6-8	basic
314	2022-02-08 07:33:52.045464+00	Adam Mahmoud	dinaramadan213@gmail.com	+201014445453	Nile Egyptien school	6-8	basic
315	2022-02-09 21:50:59.379392+00	أشرف	mrashrafnabawy@gmail.com	+201060860878	p	6-8	basic
316	2022-02-09 21:51:02.754131+00	أشرف	mrashrafnabawy@gmail.com	+201060860878	p	6-8	basic
317	2022-02-09 21:51:02.761836+00	أشرف	mrashrafnabawy@gmail.com	+201060860878	p	6-8	basic
318	2022-02-10 04:39:08.865702+00	Amar Mohamed Afifi	mhamed.afifi.mn@yahoo.com	+201110002266	Eltabry	6-8	basic
319	2022-02-10 06:52:02.734216+00	احمدحسن حسن	ahmed.hlf@gmail.com	+201222434645	Delta	6-8	basic
320	2022-02-10 08:20:23.687302+00	Mina Khairy	Engfadiabadir@gmail.com	+201204447317	Sanwai	6-8	basic
321	2022-02-10 09:49:40.355397+00	Yousef Mohamed Gawad	mohamedgawad686@gmail.com	+201001125741	Future osman	6-8	basic
322	2022-02-10 18:23:52.827781+00	Adam amr	mzaki.salem@gmail.com	+201141711127	Elnasr	6-8	basic
323	2022-02-10 20:44:11.381443+00	Eyad	mrashrafnabawy@gmail.com	+201060860878	Elharam	6-8	basic
324	2022-02-10 21:13:40.236311+00	Adel Medhat Adel	medhatadel11@gmail.com	+201014115790	Abo Bakr Alsidiyq	6-8	basic
325	2022-02-10 21:41:44.44047+00	Youssef tamer	basmaabdelghanyecc@gmail.com	+201145117725	Atef sedqy	6-8	basic
326	2022-02-10 22:31:29.120104+00	أمين العطار	amen01122002423@gmail.com	+201004830737	ام القرى	6-8	basic
327	2022-02-10 22:33:26.701799+00	أمين العطار	amen01122002423@gmail.com	+201004830737	ام القرى	6-8	basic
328	2022-02-10 22:38:05.013353+00	Kareem emam	emamrania079@gmail.com	+201032641700	Brilliance	6-8	basic
329	2022-02-11 14:40:38.230368+00	Mostafa Sameh	daliamhassan@gmail.com	+201066611091	La rose	6-8	basic
330	2022-02-11 16:52:38.856586+00	Waad Ayman	enas-emam@yahoo.com	+201090880321	Vision schoo	6-8	basic
393	2022-02-20 06:08:52.424476+00	Youssef Alaa	nosamohamed80@gmail.com	+201065782693	School	6-8	basic
394	2022-02-20 08:26:49.241159+00	آسر تامر	tamerabokamal2@gmail.com	+201005352303	Altalaa Islamic school	6-8	basic
395	2022-02-20 10:01:18.41188+00	Asser mohamed Hasab Elnaby	hasaboh2@gmail.com	+201126010727	Gamal abdelnaser	6-8	basic
396	2022-02-20 10:48:23.24892+00	Hamza Sameer	ssssshn7@gmail.com	+201254693692	Tarek ibn zyade language school	6-8	basic
397	2022-02-20 10:53:26.274662+00	Noor Sameer	ssssshn7@gmail.com	+201154693692	Tarek ibn Zayed language School	6-8	basic
1144	2022-07-05 07:52:15.875346+00	Ali maged	drmaged73@gmail.com	+21112081666	Allwa	6-8	basic
1208	2022-07-14 11:24:35.825266+00	Omar mahmoud	mahmoudnbl@gmail.com	+201115554473	Alwaha International school	6-8	basic
1209	2022-07-14 12:37:51.988842+00	Ali abdelhameed	shkelany711@yahoo.com	+201016096128	Degla smart	6-8	basic
68	2021-12-23 11:53:33.549092+00	احمد حسن احمد	shimaanasserbesher@gmail.com	+201121689044	مصر الجديده الرسميه المتميزة	6-8	basic
69	2021-12-23 12:18:14.627221+00	حمزة أحمد يسري	engahmedyousri97@gmail.com	+201033014636	IPS Alexandria	6-8	basic
70	2021-12-23 13:01:04.191806+00	Ahmed Hany atia	hanyatia180@gmail.com	+201221434210	almostaqbal	6-8	basic
71	2021-12-23 13:09:15.496847+00	Sofya saeed	sofyasaeeed66@gmail.com	+201019353566	Sorour language school	6-8	basic
72	2021-12-23 13:56:38.077974+00	Youssef essam	aziza.refaee@hotmail.com	+201100680456	Nile Egyptians school	6-8	basic
73	2021-12-23 15:00:00.709924+00	Youssef Mamdouh Ahmed	mamdouh.fathi@hotmail.com	+201273352427	el-hanovil 2 eldawy	6-8	basic
74	2021-12-23 15:04:03.422228+00	Oday Haytham Ali	haythamali378@gmail.com	+0201123666684	Liberty Language School	6-8	basic
75	2021-12-23 16:43:28.186195+00	Amal Hassanin	mhmdsmyrbdalzymalshrqawy@gmail.com	+201154440890	الرواد	6-8	basic
76	2021-12-23 17:52:59.2532+00	محمد أسامة بحيرى اسماعيل	hebahosam28@gmail.com	+201126223327	4gret	6-8	basic
77	2021-12-23 18:00:25.177498+00	محمد أسامة بحيرى اسماعيل	hebahosam28@gmail.com	+201126223327	4gret	6-8	basic
78	2021-12-23 18:01:20.158103+00	مالك محمد رمضان	popmanman0123456789@gmail.com	+201091811380	النور الخاصه	6-8	basic
79	2021-12-23 18:22:09.182073+00	Adam abdo	shima@uts-eg.com	+201060303484	Ips	6-8	basic
80	2021-12-23 18:44:19.822484+00	Eyad hossam	shaimaa.elmorshedy@gmail.com	+201224958493	EBS	6-8	basic
81	2021-12-23 19:38:17.99595+00	Habiba mohamed	shaimaaabbas.20@gmail.com	+201151517108	LLA ليسية الحرية	6-8	basic
82	2021-12-23 19:59:24.313292+00	ابتسام رمضان عبد الغفار علي	Eptsamramdan@gimail.com	+201063752903	جامعة دمنهور	6-8	basic
83	2021-12-23 20:11:49.540732+00	Eyad hossam	hossamabomarim@gmail.com	+201201298072	Abo Saleh lung school	6-8	basic
84	2021-12-23 20:20:09.523549+00	Yassin	elkholy.eman@gmail.com	+201091376085	**	6-8	basic
85	2021-12-23 21:53:37.530914+00	مي شاهين	maioia.lool@gamil.com	+201145531341	privileges  school	6-8	basic
86	2021-12-23 22:45:20.109788+00	matthew hany	hanyxerox@yahoo.com	+201289004617	Fatima Al-Zahra Official Languages	6-8	basic
87	2021-12-23 23:04:46.832724+00	مصطفى احمد التمامي	tmami2017@gmail.com	+201021414711	ابيس 13-3	6-8	basic
88	2021-12-23 23:35:37.896174+00	سيف وسيد عاصم	mayadasaeed42@gmail.com	+201091665515	ليدرز	6-8	basic
89	2021-12-24 00:48:24.856363+00	العظيم احمد عبد	ahmedabdelazzem@hotmail.com	+201149512454	amon	6-8	basic
90	2021-12-24 03:25:25.306707+00	Asser Kareem Mohamed	mr.kareem1@gmail.com	+201000011178	Harvest	6-8	basic
91	2021-12-24 05:13:07.979712+00	شيماء ابراهيم	shimaayousfe75y@gmail.com	+201100893499	هضبة الاهرام الرسمية	6-8	basic
92	2021-12-24 05:16:43.497665+00	Anas mohamed Yehia Ismail	eng.abohatab@gmail.com	+201000375768	Alsalam	6-8	basic
93	2021-12-24 05:38:26.646398+00	Hussain Mohamed Ahmed Hussain	kady2005.yo@gmail.com	+201091312563	Bent Al Sedik Shikh Zayed	6-8	basic
94	2021-12-24 06:01:22.26675+00	Khaled Waleed	eng.rania80@yahoo.com	+201004269798	Future Language School	6-8	basic
95	2021-12-24 06:06:10.750289+00	Mohamed ahmed	emy_saad13@yahoo.com	+21004412172	Modern narmar language school	6-8	basic
96	2021-12-24 06:42:57.502949+00	عمر محمد عمر علي	nohasoliman36@gmail.com	+201003079220	رويال هاوس	6-8	basic
97	2021-12-24 06:50:23.817354+00	يوسف مصطفى عبد القادر تمام	felzhraa988@gmail.com	+2001118910369	جمال عبد الناصر الرسميه لغات	6-8	basic
98	2021-12-24 07:06:51.705383+00	زياد	moh.gomgom@gmail.com	+201145872777	المستقبل ١	6-8	basic
99	2021-12-24 08:05:15.05005+00	Yussuf	yusuf.am596@gmail.com	+201111555973	25 journey school language	6-8	basic
100	2021-12-24 08:59:21.342398+00	Ammar Ahmed Mostafa	askgroup_machines@yahoo.com	+201096954288	Nozha Language School, Ismailia Road	6-8	basic
101	2021-12-24 09:06:42.316405+00	احمد الشريف	emanoptical@yahoo.com	+201204514392	طيبه الدوليه	6-8	basic
102	2021-12-24 09:11:12.128094+00	Zeyad	mmalyy83@gmail.com	+201001499224	زهرة المدائن	6-8	basic
103	2021-12-24 10:20:44.023051+00	Ammar yasser	utopian_81@yahoo.com	+201068501085	Alsun modern school	6-8	basic
104	2021-12-24 10:36:38.591439+00	محمود هيثم	ablahod@gmail.com	+210	السادس	6-8	basic
105	2021-12-24 11:17:07.820101+00	Salman Ahmed Ossama	a.ossama@almoasher.net	+201029322492	Al Marwa	6-8	basic
106	2021-12-24 11:53:25.832783+00	مريم	ehaphassan75@gmail.com	+201050009003	سانت كاترين	6-8	basic
107	2021-12-24 11:56:28.435708+00	Abed	sherouk.nabil333@gmail.com	+2010124087249	Leaders	6-8	basic
108	2021-12-24 12:07:54.093875+00	Mariam	ehaphassan75@gmail.com	+201050009003	Nour Al-Khatib	6-8	basic
109	2021-12-24 12:26:01.48952+00	مدثر محمد حلمي	ahmdasramdthr@gmail.com	+201142948444	مطر اسكول	6-8	basic
110	2021-12-24 12:29:03.58053+00	مدثر محمد حلمي	ahmdasramdthr@gmail.com	+201142948444	مطر اسكول	6-8	basic
111	2021-12-24 13:14:01.63079+00	Omar Mohamed Suliman	hesafety10@gmail.com	+201069090953	Fagre El -Eslam	6-8	basic
112	2021-12-24 13:27:28.981257+00	Nore ahmed anwer	anweer878@gmail.com	+201220483001	Als school	6-8	basic
113	2021-12-24 14:03:30.511383+00	Adam hussein sary	hussein_sary@hotmail.com	+201004949155	new horizon school	6-8	basic
114	2021-12-24 14:44:26.601386+00	سناء عبد الحليم خميس عطيه	sanaajci2018@gmail.com	+201155952891	مدرسة الجزيرة الرسمية للغاتبالزمالك	6-8	basic
115	2021-12-24 14:50:59.470899+00	Abdelfattah Elemam	be.stetter@gmail.com	+201003025488	Abo bakr	6-8	basic
116	2021-12-24 14:54:43.945687+00	Omar tamer kamal	omarmarem78@gmail.com	+201113262688	الاندلس الخاصه	6-8	basic
117	2021-12-24 15:23:33.137795+00	عبدالله ناصر فؤاد محمد احمد	Monaade@email.com	+201220338228	طارق بن زياد	6-8	basic
118	2021-12-24 15:23:33.280502+00	عبدالله ناصر فؤاد محمد احمد	Monaade@email.com	+201220338228	طارق بن زياد	6-8	basic
119	2021-12-24 16:37:36.263579+00	Malak mohammed	en_m.bsher@yahoo.com	+201033533394	Pioneers	6-8	basic
120	2021-12-24 17:09:25.362242+00	Ahmed Medhat Hossny	mona_badwy1234@yahoo.com	+201009679960	مدرسة شبين القناطر الرسمية للغات	6-8	basic
121	2021-12-24 23:40:38.332652+00	Hhuamza hussien	hussien-elsayed@hotmail.com	+201065525146	Family school	6-8	basic
122	2021-12-24 23:40:38.357136+00	Hhuamza hussien	hussien-elsayed@hotmail.com	+201065525146	Family school	6-8	basic
123	2021-12-24 23:40:38.371983+00	Hhuamza hussien	hussien-elsayed@hotmail.com	+201065525146	Family school	6-8	basic
124	2021-12-24 23:40:38.386447+00	Hhuamza hussien	hussien-elsayed@hotmail.com	+201065525146	Family school	6-8	basic
125	2021-12-25 07:52:23.749676+00	Abobakr osman	maramkamal18@gmail.com	+2001121788884	Salahaldin International School	6-8	basic
126	2021-12-25 12:20:55.760889+00	Zeinab Zeinab	zeinabkhafaga@gmail.com	+201003901840	Capital schools	6-8	basic
127	2021-12-27 19:11:19.933705+00	امير رامي جمال عبد الرحمن	hala.ghazzal.gh@gmail.com	+21003247743	Orman Elite	6-8	basic
128	2021-12-28 03:23:18.8942+00	Adam	eng_hesam8@yahoo.com	+201091303979	Alfaranaa	6-8	basic
129	2021-12-28 04:37:23.417117+00	Moustafa Amin	mostafaamin7550@gmail.com	+20101205080	رستم الابتدائية	6-8	basic
130	2021-12-28 06:55:58.973318+00	Adel islam	manoo.nona46@gmail.com	+201287868762	Al waha	6-8	basic
131	2021-12-28 07:03:02.812177+00	كنده	ner.creative@gmail.com	+201000916383	E.L.S	6-8	basic
132	2021-12-28 08:10:44.279426+00	Youmna amr alsayed	nevienbadr@yahoo.com	+201140000148	الاكاديمية البحرية	6-8	basic
133	2021-12-28 09:43:50.551115+00	Adham wael	wfareed.admin@gmail.com	+201220551300	MSE 2000	6-8	basic
134	2021-12-28 09:45:13.411283+00	عبد الرحمن محمد حسن محمد بكر	shaimaaabdelrahman456@gmail.com	+201093840729	المدرسة المصرية	6-8	basic
135	2021-12-28 13:14:59.697211+00	Adham waleed	shy_hamdy0079@yahoo.com	+201119197796	Madison school	6-8	basic
136	2021-12-28 13:31:16.531114+00	Sohib	adel_mohamed@live.com	+201229964472	Read school	6-8	basic
137	2021-12-28 15:02:43.191824+00	Lara emad	maikhater6666@gmail.com	+201060341026	Notre Dam	6-8	basic
138	2021-12-28 18:51:00.85992+00	Ahmed	islama@logicsware.com	+201273135010	El ferdaws	6-8	basic
139	2021-12-28 19:31:38.034182+00	zakaria mohamed	elzakariatools@gmail.com	+201000006557	Dlh	6-8	basic
140	2021-12-28 19:43:19.539509+00	سيف الدين هانى	Haniimam1980@gmail.com	+201271760777	الكمال المزهرية لغات	6-8	basic
141	2021-12-28 20:00:45.926716+00	Omar	omarabdelaziz07072@gmail.com	+201200885637	عبدالله النديم	6-8	basic
142	2021-12-28 20:00:55.237781+00	Nesma Mostafa Sallam	mostafa.kamel@itisalinternational.comom	+201116008400	Narmer American College	6-8	basic
143	2021-12-28 21:24:58.617786+00	Salma walid	walid.wahdan@gmail.com	513201001025132	Slos	6-8	basic
144	2021-12-28 22:02:58.654575+00	Badr ali	bedobadr469@gmail.com	+201063317109	معهد نظم المعلومات الاداريه	6-8	basic
145	2021-12-28 23:10:10.563747+00	mohamed hatem	hatempopo306@gmail.com	+201101796879	المعادي الثانويه العسكريه	6-8	basic
146	2021-12-29 00:57:27.478657+00	Abd Allah	elgohary1111977@gmail.com	+201200006724	The Egyptian international schoolin -elmarag	6-8	basic
147	2021-12-29 00:59:45.730305+00	Omar	elgohary1111977@gmail.com	+201200006724	The Egyptian international school-elmarag	6-8	basic
148	2021-12-29 01:46:41.402547+00	Ali Muhammad Ali	abourofida254@gmail.com	+201116133320	Alsafwa	6-8	basic
149	2021-12-29 02:05:04.824643+00	Mohamed tarek	menna.khattab20@gmail.com	765601007707656	Smart generation school	6-8	basic
150	2021-12-29 06:25:17.953744+00	Doaa	Eng_doaakhiry@hotmail.com	+21090725007	Al yasser	6-8	basic
151	2021-12-29 07:33:36.4034+00	Reetaj Mohamed	nonasemoreety@gmail.com	+201021119423	English school	6-8	basic
152	2021-12-29 09:25:04.216749+00	Anas Ahmed waheed	aw705370@gmail.com	+201061367721	October school	6-8	basic
153	2021-12-29 12:14:39.618222+00	Hussian Mohamed Ahmed	kady2005.yo@gmail.com	+201091312563	Bint EL Sedik El Shikh Zayed	6-8	basic
154	2021-12-29 12:16:02.161587+00	Yousef Mohamed Ahmed	kady2005.yo@gmail.com	+201091312563	Tarek Bin Zyad - El Shikh Zayed	6-8	basic
155	2021-12-29 13:29:38.781722+00	محمد محمود مختار	almokamoka97@gmail.com	+2001141267370	عمر بن الخطاب الثانويه	6-8	basic
156	2021-12-29 20:42:21.183842+00	Beshoy	mora_jd@yahoo.com	+201222913356	SLS schoole	6-8	basic
157	2021-12-29 21:55:57.9516+00	Ahmed Ibrahim	ibrahimali1982@yahoo.com	+21005820317	Islam mashhor school	6-8	basic
158	2021-12-31 03:23:31.157429+00	محمد احمد	norgad083@gemail.com	+201225686114	نعيم ابو طالب الابتدائية	6-8	basic
159	2022-01-01 17:57:30.612275+00	عبد الرحمن انور مجدي؟	anwarco78@gmail.com	+201015068211	delta school	6-8	basic
160	2022-01-02 18:29:27.940651+00	Mohamed Mossad	esahadil0@gmail.com	+201025032145	Pearls modern school	6-8	basic
161	2022-01-05 15:53:53.399899+00	Hamza Farag	hamzafarag830@gmail.com	+201272730304	Almostakbal modern language school	6-8	basic
162	2022-01-07 11:41:22.863127+00	Anas	dalia.abdelraheem1@gmail.com	+201091986201	NIS	6-8	basic
163	2022-01-11 22:42:15.53938+00	خالد سيد احمد	raniafathii55@gmail.com	+201141474254	كولاج دي لاسال	6-8	basic
164	2022-01-12 03:57:54.401053+00	Aly mohamed	elmohandes36@yahoo.com	+201068300030	Lycee	6-8	basic
165	2022-01-12 05:06:02.704801+00	Yahya Ahmed	tsallam20@gmail.com	971506743436	Al raha	6-8	basic
166	2022-01-12 05:17:32.810342+00	Yassin	eg_hind@yahoo.com	+201002689576	New capital	6-8	basic
167	2022-01-12 05:46:52.028011+00	Mohamed mahmoud	engmhamed688fls@gmail.com	+201228879512	Papy home	6-8	basic
168	2022-01-12 06:04:28.491144+00	Mohamed Ahmed	shoshogogo79@yahoo.com	+201000366091	Elalsson international school	6-8	basic
169	2022-01-12 14:31:11.993949+00	Farida	mahmoud.baioumy@outlook.com	+201122111143	Global Paradigm International School	6-8	basic
170	2022-01-12 18:27:01.757087+00	حني تامر احمد	tammor2012@yahoo.com	+21125761990	هضبة الاهرام الرسميه تجريبي	6-8	basic
171	2022-01-12 23:18:08.964935+00	Ahmed Shehabel Din Ahmed	salma.ah.malah@gmail.com	+201009344339	Queen international school	6-8	basic
172	2022-01-13 00:23:18.430546+00	Ahmed mhamed Ashraf	heba82farouk@gmail.com	+201025479125	El manar	6-8	basic
173	2022-01-13 05:07:41.762138+00	Eyad soltan	merasoltan50@gmail.com	+201158449683	Continental PALace international school	6-8	basic
174	2022-01-13 05:30:55.154462+00	Alaa soltan	merasoltan50@gmail.com	+201158449683	Continental PALace international school	6-8	basic
175	2022-01-13 06:43:55.950769+00	Basel mohamed	Mrgreatstar@gmail.com	+201090904106	Orman trust school	6-8	basic
176	2022-01-13 06:47:50.281114+00	Basel mohamed	Mrgreatstar@gmail.com	+201090904106	Orman trust school	6-8	basic
177	2022-01-13 09:09:17.954018+00	Youssef Mohamed Ezzat	rodinamedhat2@gmail.com	+201276643966	Notion international school	6-8	basic
178	2022-01-13 09:18:00.156177+00	Mohamed	basantmahmoud1988@gmail.com	+201027838800	6 october language	6-8	basic
179	2022-01-13 10:33:22.585498+00	محمد اسلام عبد الهادى	nihadtawfek@gmail.com	+201028833769	مدرسة كليوباترا	6-8	basic
180	2022-01-13 14:16:47.529907+00	احمد سيد عبد السلام محمد احمد سيد عبد السلام	abozeed8000@gmail.com	+201229855513	مدرسه منشاه جريس الاعداديه	6-8	basic
181	2022-01-13 15:53:06.407964+00	Dima Alaa	qwe1921921991@gmail.com	+21201053924	Ramatan language school	6-8	basic
182	2022-01-13 23:16:47.673588+00	Yosef ramy	rimo235@gmail.com	+201005899949	Futher 16	6-8	basic
183	2022-01-13 23:25:40.282565+00	جودي تامر احمد	tammor2012@yahoo.com	+201125761990	٦ اكتوبر المتميزه	6-8	basic
184	2022-01-13 23:37:03.681962+00	Yassen omar samir	eng.omarsamir@gmail.com	+201002088559	Further language school	6-8	basic
185	2022-01-14 05:41:45.021434+00	Sameh Mohamed	sameh.eng@yahoo.com	+201016090503	Al-Hassan  Private Institute	6-8	basic
186	2022-01-14 08:42:25.010259+00	حمزة وليد إبراهيم يسن سرور	waleedibrahim335@gmail.com	+201159072580	القومية	6-8	basic
187	2022-01-14 09:31:08.021544+00	Khaled	reresaso50@gmail.com	+201010780341	البيان الخاصة	6-8	basic
188	2022-01-14 11:15:54.824633+00	Mohammed Ahmed	asmaa.alattar@gmail.com	+201009758048	Tahrir experimental school	6-8	basic
189	2022-01-14 12:22:46.193011+00	Yahia yasser Abdelwahed	yyasser0114329343@gmail.com	382601026463826	مدرسة الحي السابع للتعليم الاساسي	6-8	basic
193	2022-01-14 13:24:15.148563+00	Abdelrahman Ahmad Ezz	abdo.ezz666@yahoo.com	+201146220779	Computer science	6-8	basic
194	2022-01-14 17:05:15.933242+00	Marwan Mohamed Kamal	mohamed.k.saadoun@gmail.com	+201001673193	NIS school	6-8	basic
195	2022-01-14 19:03:33.23847+00	Mohamed RASHAD ABDEL MONEAM	Rashad.nasr@protection-psc.com	+201000133988	El nasr schools	6-8	basic
196	2022-01-14 19:38:57.779769+00	Mohamed Sameh Mohamed	sameh.eng@yahoo.com	+201016090503	Al-Hassan Al-Azhari Private Institute	6-8	basic
197	2022-01-14 20:26:26.160204+00	أسر تامر اسامة	tamerabokamal2@gmail.com	+201005352303	الطلائع الإسلامية للغات	6-8	basic
198	2022-01-15 05:21:44.222212+00	عز الدين	asmatwfyq6@gmail.com	٠٠٩٧0556209322	Al qssa	6-8	basic
199	2022-01-15 05:25:44.166479+00	عز الدين	asmatwfyq6@gmail.com	+9710556209322	Alaqssa	6-8	basic
200	2022-01-15 05:37:10.928772+00	Yousef Ahmed	yoyo89omar@gmail.com	+966568114446	Al janoub international school	6-8	basic
201	2022-01-15 07:13:04.05838+00	Abdulrahman	it_hisham@hotmail.com	+96566034836	Najat	6-8	basic
202	2022-01-15 07:36:32.987685+00	زياد احمد مختار	mokhinho@gmail.com	+201129795612	الانصاري	6-8	basic
203	2022-01-15 10:39:13.72131+00	Amr ahmed	a.ashoor88@gmail.com	+201063718984	Al zahraa islamic language school	6-8	basic
204	2022-01-15 10:51:07.265844+00	Ahmed Mohamed Ali Atta	drmosheraatef@gmail.com	+201017403073	Gloury	6-8	basic
205	2022-01-15 11:34:37.821141+00	Yosuf	yosufomar86@gmail.com	+21003898545	Eais	6-8	basic
206	2022-01-15 11:55:23.838937+00	Abd elrhman	ayman.3abdelra77man@gmail.com	+201118084659	Wady elnile school	6-8	basic
207	2022-01-15 14:01:48.17576+00	Abdelrahman Mahmoud	elshamy.radio@gmail.com	+201028284966	Elbukhary	6-8	basic
208	2022-01-15 14:41:13.828675+00	rimoo nouh	rimoonouh@gmail.com	+201000220024	القاده الاعداديه	6-8	basic
210	2022-01-15 18:51:32.311017+00	Adham moustafa	mostafa_awady@hotmail.com	+201551666669	Alfa	6-8	basic
211	2022-01-15 20:05:16.894736+00	Mahmoud	mehry_53@yahoo.com	+201551915555	Masters	6-8	basic
212	2022-01-15 20:55:49.533715+00	أحمد محمود	ahmedmesha92@gmail.com	971581964404	Al Ghaith	6-8	basic
213	2022-01-16 05:57:45.284056+00	Mohanad	hassandoaa800@gmail.com	+21001040853	Shereen Elseba3y	6-8	basic
214	2022-01-16 07:43:59.64178+00	Youssef Hossam	hossam@jrm.com.eg	+201200008588	Gawad hosney	6-8	basic
215	2022-01-16 08:11:46.169726+00	Hussien elkashef	f_elkashef_2009@yahoo.com	+201026562744	Abo Salim language s mashtol asok	6-8	basic
216	2022-01-16 10:49:36.581341+00	HAMZAH	mostafamagdi8623@gmail.com	08790542530879	مدارس العقيق الاهلية والدولية	6-8	basic
217	2022-01-16 10:52:31.238191+00	Maged	drrzoo@hotmail.com	+201006177535	New Castle International school	6-8	basic
218	2022-01-16 11:08:28.032828+00	Tameem Ayman	dinareyad83@gmail.com	+201280005262	Future Rise School	6-8	basic
219	2022-01-16 12:02:18.131215+00	Abdalrahman Al Khaldi	abdalrahman.alkhaldi@outlook.com	971552208765	Sama American School	6-8	basic
220	2022-01-16 12:46:46.050314+00	Omar	Hithamsharif@gmail.com	+201007768600	Alsalam	6-8	basic
221	2022-01-16 14:32:37.816528+00	Aseel mohamed	nadia19862@yahoo.com	+201110698624	Home schooling	6-8	basic
222	2022-01-16 15:52:42.004011+00	عبدالرحمن اسامه	enas34454@gamil.com	+201066636093	محرم الاسلاميه لغات	6-8	basic
223	2022-01-16 16:31:30.689284+00	Saeed Hamada Shalaby	saeedhamada2016@gmail.com	+201023222468	Kifr Yaqob	6-8	basic
224	2022-01-16 19:00:15.239893+00	Icel Arafa Hommos	engarafa3030@gmail.com	+201024702120	Almenhag	6-8	basic
225	2022-01-16 19:02:49.243143+00	Candy Arafa Hommos	engarafa3030@gmail.com	+201024702120	Almenhag	6-8	basic
226	2022-01-16 19:11:40.551215+00	تامر اسامة	tamerabokamal2@gmail.com	+201005352303	الطلائع الإسلامية لغات	6-8	basic
227	2022-01-16 21:34:02.416011+00	Menna Mohamed	gnnamohamed20@gmail.com	+20201115349183	Omar ibn El katab language	6-8	basic
228	2022-01-17 09:55:12.616587+00	Besan islam	shooter30783@gmail.com	+201007023805	Amro bn elasi	6-8	basic
229	2022-01-17 13:04:34.695176+00	جرجس خالد ذكي كيرلس	amlshhath048@gmail.com	+2001212621107	مفيده عبد الرحمن	6-8	basic
230	2022-01-17 13:59:59.619005+00	ادهم	ghonemahmed6@gmail.com	+201275145134	عمر بن الخطاب	6-8	basic
231	2022-01-17 16:19:59.523076+00	martin michael	acc_michael@outlook.com	759101211591102	st	6-8	basic
232	2022-01-17 17:17:58.758832+00	Omar Ahmed Hassan	msood6@yahoo.com	+201142941161	Yathreb	6-8	basic
233	2022-01-17 18:27:35.411648+00	يوسف احمد	el-zaem@hotmail.com	+201000979663	الوادى	6-8	basic
234	2022-01-17 18:51:06.256251+00	Walid wael	walidsaif0611@gmail.com	+21225222097	High land international school	6-8	basic
235	2022-01-17 20:13:12.697583+00	Selim hesham	dr_emanshaalan@hotmail.com	+201005789440	Choueifat	6-8	basic
236	2022-01-17 20:37:48.550801+00	Aser ismail	geelstation@gmail.com	+201019084771	No school	6-8	basic
237	2022-01-17 21:29:58.027953+00	Dareen and dana	fishe_issa@yahoo.com	+201123138700	Mse	6-8	basic
238	2022-01-18 05:02:57.348214+00	يوسف	ghadas87@gmail.com	+201282550035	الملكية الدولية رويال	6-8	basic
239	2022-01-18 09:06:31.341438+00	Adam ashraf	fm579426@gmail.com	+201068887485	Al Hassan institute	6-8	basic
240	2022-01-18 09:09:00.539722+00	Hamza ashraf	fm579426@gmail.com	+201068887485	Al Hassan institute	6-8	basic
241	2022-01-18 09:57:23.862453+00	steven emad	emadpower2000@gmail.com	+2001016333999	san george	6-8	basic
242	2022-01-18 12:05:36.116265+00	ايهاب حنفي حنفي	ehabhanafy30121976@gmail.com	+201001122718	فيرجينيا	6-8	basic
243	2022-01-18 13:12:39.258299+00	Ahmed islam	eman.abdelsalam3939@gmail.com	+201201267777	Lavnda	6-8	basic
244	2022-01-18 15:57:45.90259+00	Ahmed elyousfe	elyousfeahmed@gmail.com	+201146580304	عمرو ابن العاص	6-8	basic
245	2022-01-18 17:21:01.628692+00	Adham wael	wfareed.admin@gmail.com	+201220551300	Mse	6-8	basic
246	2022-01-19 01:01:17.691343+00	Yousef	elyousfeahmed@gmail.com	+201146580301	Amr abn elaas	6-8	basic
247	2022-01-19 05:17:51.829388+00	اسماء	the-moon-55555@yahoo.com	+201006423116	الحي الثالث	6-8	basic
248	2022-01-19 05:49:43.204305+00	Ali Ebrahim	heemkeemasd@gmail.com	+201000905707	معهد الجمعيه الشرعيه النموذجيه	6-8	basic
249	2022-01-19 06:10:45.740062+00	Waad	Enas-emam@yahoo.com	+20201090880321	الرؤيه	6-8	basic
250	2022-01-19 08:09:47.678078+00	Rodina	mahmoudyounis2712@gmail.com	+201201505947	Alwaha	6-8	basic
251	2022-01-19 08:09:47.733478+00	Rodina	mahmoudyounis2712@gmail.com	+201201505947	Alwaha	6-8	basic
252	2022-01-19 09:40:10.178799+00	هشام محمد محمد	heshamharbharb@gmail.com	+201110179777	٨٠٠ فدان اكتوبر	6-8	basic
253	2022-01-19 16:46:44.243754+00	Mazen shady	Hero198722@gmail.com	+201002997712	Geel 2000	6-8	basic
254	2022-01-19 16:55:37.266727+00	Waad Ayman Srhan	Enas-emam@yahoo.com	+201090880321	Vision school	6-8	basic
255	2022-01-19 17:31:07.350572+00	Mohamed RASHAD ABDEL MONEAM	rashad22pro@gmail.com	+201000133988	El nasr schools	6-8	basic
256	2022-01-19 18:44:59.148279+00	Anas	anaswaelshaalan@gmail.com	+201007934207	Princetoninternationalshoool	6-8	basic
257	2022-01-19 18:47:03.570466+00	آسر تامر	tamerabokamal2@gmail.com	+201005352303	الطلائع الإسلامية لغات	6-8	basic
258	2022-01-19 19:25:36.238045+00	Shams Ahmed	rokaya22390@gmail.com	+201001046264	Egyptian Japanese school	6-8	basic
259	2022-01-19 19:48:02.112757+00	Yassin Ali Hamza	manal.hamza2017@hotmail.com	+201066027046	Future school	6-8	basic
260	2022-01-20 07:21:31.559254+00	Ez El Din Mahmoud Taha	rasha.talaat@gmail.com	+201001079715	Pearls of Modern School	6-8	basic
261	2022-01-20 10:51:03.562379+00	Yassin omar samir	eng.omarsamir@gmail.com	+201002088559	Further	6-8	basic
262	2022-01-20 18:10:01.666271+00	Fatma Ashraf said	neveen.saeed26@gmail.com	+201012922207	مدرسة المستقبل التجريبية للغات	6-8	basic
263	2022-01-21 07:34:10.69426+00	aisha	hazemlov8@gmail.com	+201111388997	princesses	6-8	basic
264	2022-01-21 13:14:46.812361+00	Youssef amr	engfatheyaadel@hotmail.com	+201143333451	Victory college	6-8	basic
265	2022-01-22 07:29:24.93367+00	Eyad khaled moustafa	engrehamsamir82@yahoo.com	+2012016666895	Harvard international school	6-8	basic
266	2022-01-22 07:31:14.044681+00	Eyad Khaled moustafa hamdy	engrehamsamir82@yahoo.com	+201201666895	Harvard international school	6-8	basic
267	2022-01-22 18:11:37.507814+00	Samir eslam	samir.eslam2232@gmail.com	+201229302562	Alex dream language school	6-8	basic
268	2022-01-22 18:14:28.472695+00	Waad	enas-emam@yahoo.com	+201090880321	Roaya	6-8	basic
269	2022-01-22 19:10:44.790173+00	Aser mohamed wagdy	R.azzam3@yahoo.com	+201280322361	El shohadaa	6-8	basic
270	2022-01-23 15:52:57.049731+00	Lucinda Mahmoud Reda	reemyusuf@me.com	+971568335090	The international school of choueifat	6-8	basic
271	2022-01-23 20:40:57.988075+00	Gana gamal	aliahmed808810@gmail.com	+201157172375	Hossam	6-8	basic
272	2022-01-24 06:23:03.284159+00	Mazen Magdy Yousef	engineering@chema.com.eg	+201008846033	el nubaria language school	6-8	basic
273	2022-01-24 17:35:40.11798+00	Abdalla Ahmed  mohamadi mohamed metwalli	engdeib@yahoo.com	+966552797447	Talent	6-8	basic
274	2022-01-24 18:15:28.276982+00	Omar Mohamed Ezzat	mohamed_ezzat575@yahoo.com	+966596658143	Mariya international school	6-8	basic
275	2022-01-24 18:27:37.98092+00	Omar Mohamed Ezzat	mohamed_ezzat575@yahoo.com	+966596658143	Mariya international school	6-8	basic
276	2022-01-24 18:27:56.259519+00	Omar	eng.mai35@gmail.com	+96597251660	Oxford academy	6-8	basic
277	2022-01-24 18:28:56.053496+00	Marwan Mohamed Ezzat	mohamed_ezzat575@yahoo.com	+966596658143	Mariya international school	6-8	basic
278	2022-01-24 18:39:33.037715+00	Saif hossam	almoazenmeme@gmail.com	+201122330012	Omar and elkhatab	6-8	basic
279	2022-01-24 20:53:04.909141+00	Mohammed Ewis	mohismael2002@gmail.com	+971559140093	-	6-8	basic
280	2022-01-24 22:00:06.156376+00	Omer	mahmoud.abubkr10@gmail.com	+966533561555	Elmaly international	6-8	basic
281	2022-01-26 07:26:12.866506+00	Adham hani	amirads2000@yahoo.com	+201141705888	الحياة للغات	6-8	basic
282	2022-01-26 19:03:29.944403+00	كريم تامر	sw.eng.tamer@gmail.com	+201066489148	Queen International school	6-8	basic
283	2022-01-26 21:45:21.399455+00	selim Haytham	azza.omara255@gmail.com	+201212996802	Alomran language school	6-8	basic
284	2022-01-26 23:32:44.50066+00	Hayat Ahmed Mahmoud	eng.ahmed18@gmail.com	201066266998	NA	6-8	basic
285	2022-01-27 13:40:26.740987+00	Yassin ahmed	sarasalem2410@gmail.com	+201061391747	EBIS	6-8	basic
286	2022-01-27 15:18:43.782309+00	Yassin	manal.orabi@gmail.com	0201100092817	Ibn abaaallah	6-8	basic
287	2022-01-27 19:18:12.807862+00	Yassin Mohamed	mofathi897@gmail.com	+201155659188	Samir Gohar	6-8	basic
288	2022-01-28 07:17:06.559244+00	Malek Mohamed	sarah.mandour262@gmail.com	+201000371350	Al farouk	6-8	basic
289	2022-01-29 23:27:36.30776+00	Fahd	afiali012@gmail.com	+201061115397	Bloom	6-8	basic
290	2022-01-29 23:50:55.714588+00	Hossam Hassan	nesma.mohamed1191@gmail.com	+201223663104	Modern school	6-8	basic
291	2022-01-30 08:27:27.749288+00	عبدالله طارق بركات	alsharjabiafaf@gmail.com	+21229161133	جلوريز للغات	6-8	basic
292	2022-01-30 08:51:19.197208+00	Joudy emad samy	ghada_wassif@yahoo.com	+201223263285	Lycee la liberite	6-8	basic
293	2022-01-30 12:28:15.282442+00	salma mohamed ali	alisbox83@gmail.com	+21277697249	alrowad collage	6-8	basic
294	2022-01-30 15:34:02.176568+00	Laith	munakalaji4@gmail.com	+201117609327	Thebes language school	6-8	basic
295	2022-01-30 16:38:31.20437+00	Yassein Hany	shaimaa@confreight-eg.com	+201207771454	St. Paul	6-8	basic
296	2022-01-30 17:36:52.182857+00	Youssef El Swesy	nfathy@tmg.com.eg	+201117888308	الفرير	6-8	basic
297	2022-01-30 18:25:36.170201+00	Sara Sameh	em.mohamed612@gmail.com	+201002739323	FLS	6-8	basic
298	2022-01-30 19:19:06.111073+00	Karma Ali	engmaa2006@gmail.com	+201285056627	Manar House school	6-8	basic
299	2022-01-30 19:20:18.698043+00	Ziad Ahmed Mohamed	eng.marwa.abdou@gmail.com	+201143946633	Rowad el.amostakbal language school	6-8	basic
300	2022-01-30 19:30:01.736405+00	Hala mohamed metwaly	mohamed.metwaly@bbi.com.eg	+201099995239	Elsarh	6-8	basic
301	2022-01-30 20:38:47.161813+00	Mohamed Wael Ali Abu Zaid	fatmhalzhra746@gmail.com	+21094744650	ALfath Alazhry Alnamuzagy	6-8	basic
302	2022-01-30 21:11:29.917737+00	اسر محمود صايلى	drju.mahmoud@gmail.com	+201145811043	Nozha language school	6-8	basic
303	2022-01-30 23:20:03.199909+00	شحاته محمد	mohammed.shehata65@yahoo.com	+201090937910	كفر حجازي الاعداديه	6-8	basic
304	2022-01-31 02:13:27.185002+00	Adam	Adam.galal2030@gmail.com	+201090790825	manarat al farouk	6-8	basic
305	2022-01-31 04:30:01.573473+00	Yehia Ayman	dodynegm.dn@gmail.com	+201001213792	Alabtal school	6-8	basic
306	2022-01-31 09:22:54.980736+00	عمر عطيه	hossinomr012253@gmial.com	+201225353160	الاعداديه بنين	6-8	basic
307	2022-01-31 22:06:11.105782+00	روى وائل حساسين	waelbahgat804@gmail.com	+201061661019	الطليعه الابتدائيه	6-8	basic
308	2022-01-31 23:50:48.206418+00	Eyad Ahmed Hassan	ahmed271078@gmail.com	+201279168951	Leaders language school	6-8	basic
309	2022-02-01 11:55:08.019611+00	Fouad mohamed	fatma.abdelhakim87@gmail.com	+201066468553	NES	6-8	basic
310	2022-02-03 08:56:58.473513+00	Mohamed Bahy	Moodkiller68@gmail.com	+201157270171	الشهيد مهيد الهواري الرسمية لغات	6-8	basic
311	2022-02-06 09:03:16.728244+00	Fouad mohamed	fatma.abdelhakim87@gmail.com	+201066468553	NES	6-8	basic
312	2022-02-06 10:40:48.311021+00	Samir eslam	samir.eslam2232@gmail.com	+201229302562	Alex dream language school	6-8	basic
313	2022-02-07 13:09:34.65429+00	Mohamed mostafa	hodaelazazytota@gmail.com	+201273818702	Aspire	6-8	basic
331	2022-02-11 20:41:41.801389+00	Mohamed sameh Mohamed	d.hassanaly_mil@gemsedu.com	+0201063808888	Madinaty integrated language w	6-8	basic
332	2022-02-11 23:02:53.195145+00	Salma Mohammad Badawi	f_hereher@yahoo.com	+966542827056	evs	6-8	basic
333	2022-02-12 05:21:28.504599+00	Kareem emam	emamrania079@gmail.com	+201019107713	Brilliance	6-8	basic
334	2022-02-12 06:39:44.800912+00	Pierre Ehab	magy.zarif@gmail.com	+201206621149	Blue Nile Language School	6-8	basic
335	2022-02-12 13:18:31.822103+00	محمد سامح محمد عبدالستار	sameh.eng@yahoo.com	+201016090503	معهد الحسن الازهري النموذجي الخاص	6-8	basic
336	2022-02-12 15:32:20.435212+00	Youssef	h.sherbeeny@gmail.com	+201222179997	Green city	6-8	basic
337	2022-02-12 15:48:35.303192+00	Rita George	madlensamir82@gmail.com	+201273410007	British Ramses school	6-8	basic
338	2022-02-12 16:58:24.730096+00	Adham elnahrawy	eng.moia@gmail.com	+201004862794	Green Heights	6-8	basic
339	2022-02-13 06:40:48.483639+00	Aya mohammed kamal	shimaamolham@gmail.com	+201282227110	el golf langue	6-8	basic
340	2022-02-13 09:58:37.994541+00	Justin	adel12adel379@gmail.com	+201282772233	Eldon rahibat	6-8	basic
341	2022-02-13 18:53:19.096479+00	Omar khaled	khaledsaleh09@gmail.com	+201066190099	Akhnaton Egyptian Language Schools	6-8	basic
342	2022-02-13 19:38:14.33252+00	جودي علي	alisomo2003@gmail.com	624101222906241	وادي الملوك الخاصة ٥ابتدائي	6-8	basic
343	2022-02-13 19:57:38.026723+00	Ziad Ahmed Mahrous	thefirstone93@gmail.com	+201147533391	El said Isha	6-8	basic
344	2022-02-14 00:42:43.639299+00	عبدالرحمن تامر	tamer.tork@gmail.com	+201223077087	مصر الجديدة الرسمية للغات	6-8	basic
345	2022-02-14 21:35:08.233773+00	Ahmed Walaa NASSAR	w.nassar@elsewedy.com	+201011006858	Sama	6-8	basic
346	2022-02-16 18:24:34.286106+00	Hazem Waleed	walid.h14.emam@gmail.com	0201005629995	Manhattan language school	6-8	basic
347	2022-02-16 22:01:35.809972+00	Zayne	Nassa7alsherbiny@gmail.com	+201277100754	HOIS HURGADA	6-8	basic
348	2022-02-16 22:02:16.951124+00	Malek mohamed	dodowaleed_08@hotmail.com	+201115523107	Egeption Jabanis school	6-8	basic
349	2022-02-16 22:36:26.320296+00	Gamal	nehaed.mohamed30@gmail.com	+201285908886	Nehaed.mohamed30@gmail.com	6-8	basic
350	2022-02-16 23:43:07.880441+00	Salem	historyteacher85@gmail.com	+96555604414	Saad Ben waqas	6-8	basic
351	2022-02-17 02:12:32.941129+00	Anas	Doha_almowafy@yahoo.com	+201006384897	Royal House language school	6-8	basic
352	2022-02-17 05:32:44.268352+00	Amr	shoshobadr80@gmail.com	+201019723402	Pps	6-8	basic
353	2022-02-17 07:14:56.167054+00	عبد الرحمن عبد القادر الرخاوي	rkhawy@gmail.com	+201009802925	ahmad zowail	6-8	basic
354	2022-02-17 08:15:17.493931+00	Adham	mohamed.attya@gmail.com	+201006034657	Modern Infinity	6-8	basic
355	2022-02-17 09:42:15.615529+00	Judy Ahmed	may_sayed_mohamed@yahoo.com	+201028848455	Mustafa Kamel experimental school	6-8	basic
356	2022-02-17 11:43:50.017507+00	ايهاب حنفي حنفي	ehabhanafy30121976@gmail.com	+201001122718	فرچينيا	6-8	basic
357	2022-02-17 16:29:33.852567+00	Mohamed amr arafa	amr2arfa@yahoo.com	+966590021680	AL Mokatshif	6-8	basic
358	2022-02-17 17:33:38.654873+00	Zain	dalia.elrefaii@gmail.com	+201011359090	Ro'yaty	6-8	basic
359	2022-02-17 17:37:18.361729+00	Zain mostafa	dalia.elrefaii@gmail.com	+201011359090	Ro'yaty	6-8	basic
360	2022-02-17 19:01:49.293264+00	Emad Eissa	emad.essa000@gmail.com	+201151805088	Nes	6-8	basic
361	2022-02-17 19:34:37.494573+00	Youssof Ahmed Moustafa	yossofahmed141@gmail.com	+201091791448	Rowad almostaqbal 15 May	6-8	basic
362	2022-02-18 00:21:40.177117+00	Hazem Ahmed Soliman	ahmeds.mohamady@gmail.com	+201066657376	Nefertari language school	6-8	basic
363	2022-02-18 00:29:52.170977+00	Ali ahmed	soha.bahgat@eurobeton-eg.com	+201018098446	Leaders college	6-8	basic
364	2022-02-18 02:31:51.032083+00	Amir ibrahim	maream.zekry55@gamil.com	+0201224348363	San john batmos	6-8	basic
365	2022-02-18 06:59:49.153113+00	Mohamed Osama	livelaugh478@gmail.com	+201111418446	El Maadi Language school	6-8	basic
366	2022-02-18 07:29:38.313892+00	Mohamed	osamaqura@gmail.com	+201008888464	Eis	6-8	basic
367	2022-02-18 08:54:08.662279+00	Abd elrhman	ayman.3abdelra77man@gmail.com	+201118084659	Wady elnile school	6-8	basic
368	2022-02-18 09:15:38.970504+00	محمد عصام	mohamedessamtarif@gmail.com	+2001159382847	نجوع العرب	6-8	basic
369	2022-02-18 09:49:56.174931+00	Mariam Mohamed Adel	mohamedadelh1186@gmail.com	+201112711179	Farabi language School	6-8	basic
370	2022-02-18 12:04:35.840403+00	Opay	elgenral_hmm@yahoo.com	+201097789828	احمد زويل التجمع الخامس	6-8	basic
371	2022-02-18 16:25:31.104695+00	Mourad Moustafa	moustafaomier@gmail.com	+201009003302	New Capital English School	6-8	basic
372	2022-02-18 16:58:30.942469+00	Mohanad mohamed nabil	nashwa.m1604@gmail.com	+201009700595	ANGLO	6-8	basic
373	2022-02-18 21:08:52.972946+00	Ashraf Mosbah	theashraf77@gmail.com	+201003328724	Mansoura	6-8	basic
374	2022-02-18 23:36:32.257803+00	مايا عمرو احمد	amrvlaw@gmail.com	+201110748687	اسلام مشهور النموذجية فيوتشر	6-8	basic
375	2022-02-19 00:16:39.601386+00	Ahmed	newjob161@yahoo.com	+201023797122	Bent al  sedeek	6-8	basic
376	2022-02-19 00:22:19.986103+00	Yossef	emaarmisr2000@gmail.com	+21149424001	Om kalthome	6-8	basic
377	2022-02-19 01:35:19.172685+00	Youssef Ahmed	asmaaeid370@gmail.com	+201003731019	Elmostkbal 15	6-8	basic
378	2022-02-19 04:01:50.813217+00	Jasmin	islamazoz2001@yahoo.co	+201225177724	Elshrouk	6-8	basic
379	2022-02-19 04:10:05.885147+00	Youssef Hany	hanypq@gmail.com	+201020056404	Inas Ben malek	6-8	basic
380	2022-02-19 05:48:42.617065+00	Farida Ahmed	drdinafares760@yahoo.com	+201553562356	Falcon	6-8	basic
381	2022-02-19 08:04:35.469741+00	خالد حسام	hossam84@gmail.com	+201118570900	مدرسه محمد عشري	6-8	basic
382	2022-02-19 10:22:31.123643+00	Omar	mohamed.ghallab@interface-hcp.com	+201065207777	NIS New Capital	6-8	basic
383	2022-02-19 10:24:16.250188+00	Adam Ghallab	mohamed.ghallab@interface-hcp.com	+201065207777	NIS New Capital	6-8	basic
384	2022-02-19 10:28:43.161463+00	Kevin Bassem Samir	bassemjesuskoko@gmail.com	+201019169580	St  Joseph Maronite el daher	6-8	basic
385	2022-02-19 12:05:11.571649+00	Eyad Tamer	tameresam@gmail.com	+201200223701	Aruba language school	6-8	basic
386	2022-02-19 14:47:16.895396+00	Fayrouz	sozyfire@gmail.com	+201008492489	Mansoura language school	6-8	basic
387	2022-02-19 16:02:47.505091+00	Kevin Emad	gad.emad@yahoo.de	+201223269002	Rahn schule cairo	6-8	basic
388	2022-02-19 19:53:31.250473+00	Amr Khaled Abdel Hafez Hamed	Khaledhafez1981@yahoo.com	+201008421773	Elshrouk school	6-8	basic
389	2022-02-19 19:53:31.933353+00	Amr Khaled Abdel Hafez Hamed	Khaledhafez1981@yahoo.com	+201008421773	Elshrouk school	6-8	basic
390	2022-02-19 21:56:45.856905+00	Ahmed	newjob161@yahoo.com	+201023797122	Sheikh Zayed	6-8	basic
391	2022-02-19 21:58:28.523674+00	Ahmed Raafat	ahmed_saifelnasr@yahoo.com	+201026077555	El shorouk	6-8	basic
392	2022-02-19 23:38:17.964894+00	Aser Ibrahim Ali	ibrahimali.2040@gmail.com	+201002232641	El Nil language	6-8	basic
398	2022-02-20 12:06:57.518029+00	محمد معتز	asmaa.ragab2018@gmail.com	+201091355757	الهدى الإسلامية الخاصة	6-8	basic
399	2022-02-20 12:48:33.895854+00	Mariam mohamed Mahmoud	mohamed.mahmoud24@gmail.com	+201123377545	Azhar Al Delta language School	6-8	basic
400	2022-02-20 12:53:35.69828+00	Mariam Mohamed Mahmoud	mohamed.mahmoud24@gmail.com	+201024245505	Azhar Al Delta language School	6-8	basic
401	2022-02-20 15:40:46.212537+00	Hamza mohamed	daliasheh25@gmail.com	00201020473198	CBC	6-8	basic
402	2022-02-20 16:06:55.738098+00	Mohamed mostafa	mrmr3088@gmail.com	+201127621532	المدرسة المصرية الدولية	6-8	basic
403	2022-02-20 18:41:42.847611+00	آسر تامر	tamerabokamal2@gmail.com	+201005352303	الطلائع الإسلامية/  لغات	6-8	basic
404	2022-02-21 05:47:34.368464+00	Youssef	nosamohamed80@gmail.com	+201065782963	School	6-8	basic
405	2022-02-21 06:23:13.458919+00	Seif hassan yakout	adamseif12112@gmail.com	+201553881901	Taymour language school	6-8	basic
406	2022-02-21 12:02:35.297562+00	Daniel	rnapolioon@gmail.com	+201224358737	Royal	6-8	basic
407	2022-02-21 17:13:11.177004+00	Adam hassan yakout	adamseif12112@gmail.com	+201553881901	Taymour	6-8	basic
408	2022-02-21 17:19:22.485727+00	Hamza sameh	nourelhodamuhammed@gmail.com	+201067584616	El sharq school	6-8	basic
409	2022-02-21 19:37:09.66471+00	مصطفى على طه	mstafadapes@gmail.com	+201050300674	معهد التفوق الازهريkg2	6-8	basic
410	2022-02-21 21:00:02.896387+00	Omar tamer	tamer_ead1975@yahoo.com	+201005236983	مجمع الملك فهد	6-8	basic
411	2022-02-21 22:37:38.454201+00	Salah	diaarabiea@yahoo.com	+201005848032	Masr el gidida language school	6-8	basic
412	2022-02-22 05:20:31.763015+00	Mohamed	shoshogogo79@yahoo.com	+20100366091	El alson International school	6-8	basic
413	2022-02-22 05:58:37.637472+00	Aly Ahmed Aly	aaly28623@gmail.com	+201120214989	El-shahid alaa azat school	6-8	basic
414	2022-02-22 09:12:55.397174+00	Zain mostafa	dalia.elrefaii@gmail.com	+201011359090	Bozor academy school	6-8	basic
415	2022-02-22 14:48:02.359205+00	abdelrahman nassar	abdelrahmannassar.msg@gmail.com	+201024203171	maharat soper globall	6-8	basic
416	2022-02-22 15:58:00.452201+00	Zeiadmostafasalama	sarahsalouma9@gmail.com	+201123254475	Abnaa alandalous	6-8	basic
417	2022-02-22 18:30:57.510283+00	Abdulrahman taha sayed	goodfamily1982@gmail.com	+201026008190	Mohamed farouk	6-8	basic
418	2022-02-22 19:37:41.143307+00	Ali	hebaeldery@gmail.com	+21223621080	Holy family	6-8	basic
419	2022-02-22 19:55:43.882201+00	Clara ramzy	mahasabrylawendy@gmail.com	+201220380969	San jozeph	6-8	basic
420	2022-02-22 21:01:54.342663+00	Youssef mohamed Mosaad	shimaa.dawoud@hotmail.com	+201007706262	Saint Fatima American school	6-8	basic
421	2022-02-22 21:31:33.053087+00	Ammar Hany	hany.nabil@diargroup.com	+201004451278	Farouk Islamic School	6-8	basic
422	2022-02-22 22:18:41.792804+00	Omar mohamed	goldenhorse_adv@gmail.com	+201022559766	Sweet home	6-8	basic
423	2022-02-23 09:26:16.678945+00	Ahmed Ramadan	ramadan812@gmail.com	+201111175047	Dr. Tharwat Okasha Experimental Language School	6-8	basic
424	2022-02-23 14:28:23.312854+00	Ahmed Abdel Naser	a.m01069474747@gmail.com	+201069474747	Azhar	6-8	basic
425	2022-02-24 16:09:41.886589+00	فارس	yousifsalm22@gmail.com	2001200043237	جمال عبد الناصر	6-8	basic
426	2022-03-06 18:50:41.281715+00	عمر احمد	hagersalem286@gmail.com	+201024481388	معالي سيوف	6-8	basic
427	2022-03-15 19:48:58.494166+00	ادهم فاروق احمد	fathysaed045@gmail.com	+22201120081284	مدرسة الشهيد عمر السيد شعبان	6-8	basic
428	2022-03-21 23:25:11.277305+00	Malek moataz	maha.tawfike@yahoo.com	+201000646353	Kenana international school	6-8	basic
429	2022-03-24 19:23:18.441965+00	Khaled Gamal	eng.khaledgamal.2010@gmail.com	+201003698980	Valley language school	6-8	basic
430	2022-03-25 22:47:22.89795+00	Helm	gamyfares@gmail.com	+201144418015	Green school	6-8	basic
431	2022-03-25 23:23:15.943367+00	Khaled Waleed Mohamed	eng.rania80@yahoo.com	+201004269798	Future Language School	6-8	basic
432	2022-03-26 02:38:15.768237+00	Yousef	Kareem.mohmed@koni-dev.com	+201026666605	El abtal	6-8	basic
433	2022-03-26 03:49:49.54797+00	marwan Haitham elsaied	haitham1521@gmail.com	+21063866381	orman language school	6-8	basic
434	2022-03-26 04:00:37.652988+00	Anas	yahi.nasser@ymail.com	+201068821882	Amgad international school	6-8	basic
435	2022-03-26 05:49:17.292713+00	Adam Islam	marwabakr1186@gmail.com	+201001441097	Eltawfki L.s	6-8	basic
436	2022-03-26 08:09:38.005715+00	Youssef Mohamed Awad	mohamedawad2477@gmail.com	+2012211000091	Omar Ibn alkhatab governmental	6-8	basic
437	2022-03-26 09:07:23.125644+00	Eyad Mohamed Kelany	marwaabdelazeem.84@gmail.com	+201156510082	Bedayia international school	6-8	basic
438	2022-03-26 10:30:52.143126+00	Emad Mohamed	emadfanto@gmail.com	+201001213973	Doke	6-8	basic
439	2022-03-26 12:15:25.959028+00	يوسف حسام حسن	hossam.acc86@gmail.com	+201124300399	نجيب محفوظ	6-8	basic
440	2022-03-26 13:46:07.056364+00	Ali Mahmoud	hebaeldery@gmail.com	+21223621080	Holy family school	6-8	basic
441	2022-03-26 16:04:49.268115+00	Ahmed Mohammed	midomeme573@gmail.com	+201211130175	Dar Al Haman	6-8	basic
442	2022-03-26 18:35:32.368547+00	سها زكريا	sohazakaria8@gmail.com	+201063360744	Modern narmer language school	6-8	basic
443	2022-03-26 19:07:10.739151+00	Omr mohamed	Walaahany1982@icloud.com	+201121277550	Hafr Elbaten	6-8	basic
444	2022-03-26 22:05:55.034816+00	Dalia Helmy	eng_dalia110@yahoo.com	+201094845430	Elmassa language school	6-8	basic
445	2022-03-27 00:00:25.749287+00	احمد مؤمن عويس	moamen.ewais@gmail.com	+201127230289	Altarbia alhaditha	6-8	basic
446	2022-03-27 07:11:20.071151+00	ASER AHMED	Ahmed.Usama@outlook.com	0021111966335	Ramsis international School	6-8	basic
447	2022-03-27 07:22:30.487118+00	Ali mahmoud	nevengd2011@gmail.com	+201018108920	مدرسة المنسي للغات	6-8	basic
448	2022-03-27 08:47:35.209457+00	Mohamed Ahmed	shoshogogo79@yahoo.com	+201000366091	Elaossn school	6-8	basic
449	2022-03-27 11:36:38.374778+00	Yassin Mourad	ola.dareloyoun@gmail.com	+21006341625	Narmer language school	6-8	basic
450	2022-03-27 14:55:38.940859+00	Yuasuf Essam Mohammed	essam.muhammed@outlook.com	+201201754655	Talaa Alwady private school	6-8	basic
451	2022-03-27 17:57:29.591305+00	Bassel Wael	monaalbassel@email.com	+201222708362	Nis Nermen Ismail	6-8	basic
452	2022-03-27 21:23:38.206845+00	Hamza	m.i19802011@gmail.com	+201003755166	Taha hoseen	6-8	basic
453	2022-03-27 23:52:15.376085+00	Seif mohamed	rahanane@hotmail.com	+201552529252	Nermein ismail	6-8	basic
454	2022-03-28 00:25:31.427402+00	Habiba ghareeb	sherif@ghareebgroup.com	1101069999995	BISM	6-8	basic
455	2022-03-28 03:53:44.707435+00	Mohammad Eissa	shrief.eissa@gmail.com	+201099290948	Bedaya	6-8	basic
456	2022-03-28 07:50:27.79928+00	Joudy Muhammed Zakaria	MZMUHAMED1980@GMAIL.COM	+201007991065	Saint Vincent De Paul-Helmia	6-8	basic
457	2022-03-28 07:54:48.799499+00	يوسف ابراهيم البدري	rashaelbadry128@gmail.com	+201018914454	الشهيد ايهاب مرسي التجريبيه	6-8	basic
705	2022-05-26 05:47:36.577964+00	Mostafa Gawad	gawad26@gmail.com	+201200088891	El Nile Egyptian School	6-8	basic
458	2022-03-28 15:40:16.591473+00	المهدي محمد حلمي عويس	mohamed.helmy@kvs.edu.eg	+201000322076	الحياة	6-8	basic
459	2022-03-29 05:15:15.419424+00	Hamza Mohamed	ami.fawzi@gmail.com	+201100212529	New Vision	6-8	basic
460	2022-03-29 05:38:57.361224+00	Omar Mohamed Tantawy	walaa_mossad@cic-cairo.com	+201027275146	NES	6-8	basic
461	2022-03-29 06:01:05.569733+00	Lima Metwaly	salmasaqer1987@gmail.com	+201555556804	Modern avenu	6-8	basic
462	2022-03-29 07:37:46.519431+00	Yasser Mahmoud Morsy	asmamorsym@gmail.com	+20111921777	Gamal_Abdel_Nasser	6-8	basic
463	2022-03-29 09:29:19.968678+00	زينب محمود	zanasondos8@gamil.com	+201016900624	Futcher	6-8	basic
464	2022-03-29 10:07:06.791869+00	Asser mahmoud	asser.sisi5@gmail.com	+201145811843	Nozha language school	6-8	basic
465	2022-03-29 12:37:14.179796+00	Ahmed Sherif	Sherifesa@hotmail.com	+201094259946	Bedayia international school	6-8	basic
466	2022-03-29 12:48:31.535011+00	Eyad ossama	basmazekry19290@gmail.com	+201100060095	Wl3agoza	6-8	basic
467	2022-03-29 17:51:04.744605+00	Nada Safwat	zaitoun_noha@hotmail.com	+201000089092	Egypt Dream Language School	6-8	basic
468	2022-03-29 18:27:37.886956+00	Yussef H	tamoh91@gmail.com	+21099669321	Na	6-8	basic
469	2022-03-29 18:57:15.182421+00	Asmaa Abou El Hassan	asmaahassan2000222@gmail.com	+201025812987	Al Nozha	6-8	basic
470	2022-03-29 18:58:47.146476+00	Mrwan	marwamahmoud456789@gmail.com	+201030136545	El nokrashy	6-8	basic
471	2022-03-29 19:58:36.693373+00	Ahmed sherif	Sherifesa@hotmail.com	+201094259946	Bedyia International school	6-8	basic
472	2022-03-30 00:58:25.417113+00	Shaheen Abdelatef	shaheenlatef2@yahoo.com	+201003310038	Future 9	6-8	basic
473	2022-03-30 07:09:10.489174+00	Ahmed Mohamed Hamed	mhamedelsayed99@gmail.com	+201112919336	معهد الشروق الأزهري النموذجي	6-8	basic
474	2022-03-30 23:08:01.790029+00	مالك	saraatta76@gmail.com	+21022445580	القاهرة التجريبية	6-8	basic
475	2022-03-31 00:20:10.904879+00	SHAHD	Shahdabbass2020@gmail.com	+201090202148	Futures language schools	6-8	basic
476	2022-03-31 06:02:32.361909+00	Noor El Dien amr	hebaallahassan@gmail.com	+201001197890	EIBS.CAMBRIDG	6-8	basic
477	2022-03-31 09:44:28.117251+00	عبد الرحمن عمرو عبد المنعم قنديل	Nanamido46@gmail.com	+201009947115	AREA Language School	6-8	basic
478	2022-03-31 11:52:37.756905+00	Retal waleed	hayamkamal629@gmail.com	+201010637787	Future	6-8	basic
479	2022-04-04 14:32:32.33879+00	Adam	marwabakr1186@gmail.com	+201001441097	Eltawfki language school	6-8	basic
480	2022-04-04 20:16:03.608705+00	محمد مصطفي	mudy_nuty@yahoo.com	+201000966771	الفاروق	6-8	basic
481	2022-04-04 20:33:41.472534+00	Mohamed Bakry	bakry_law@hotmail.com	+201122365011	Elite	6-8	basic
482	2022-04-05 00:01:39.278554+00	Youssif & Karim	amonuir8@gmail.com	+201027761116	Future school	6-8	basic
483	2022-04-05 00:17:28.286788+00	Patrick maichael	maikeking20@gmail.com	+201274035628	Joseph elmaronia	6-8	basic
484	2022-04-05 00:17:28.877311+00	Patrick maichael	maikeking20@gmail.com	+201274035628	Joseph elmaronia	6-8	basic
485	2022-04-05 00:17:28.8987+00	Patrick maichael	maikeking20@gmail.com	+201274035628	Joseph elmaronia	6-8	basic
486	2022-04-05 00:17:30.745354+00	Patrick maichael	maikeking20@gmail.com	+201274035628	Joseph elmaronia	6-8	basic
487	2022-04-05 02:15:50.330928+00	Anas Ahmed Samir	eman.kinderedu@gmail.com	+201145070069	Noor language school	6-8	basic
488	2022-04-05 09:56:45.855846+00	EYAD	ahmed.abdulazzim@gmail.com	+201001795335	Al Bashaer	6-8	basic
489	2022-04-05 10:32:19.908169+00	Tayem Hisham Mohaned	sham1946@gmail.com	+201101111355	Ivy school	6-8	basic
490	2022-04-05 11:03:26.377991+00	ياسمين	muhammad.lotfy@yahoo.com	+201002865179	معهد شبرا الازهري	6-8	basic
491	2022-04-05 11:48:29.508633+00	Khadega Shaheen Abdelatef	shaheenlatef2@yahoo.com	+201003310038	Future 9	6-8	basic
492	2022-04-05 12:37:40.352037+00	Ganat Ahmed Ahmed Alsanabary	alsanabary@gmail.com	+21224466787	Future language school	6-8	basic
493	2022-04-05 15:00:35.495328+00	Hassan	emamoon9@hotmail.com	+201006665694	Knowledge valley international school	6-8	basic
494	2022-04-05 17:30:19.848439+00	Adam mohamed	Bakry_law@hotmail.com	+201122365011	El Nile	6-8	basic
495	2022-04-05 21:07:00.649277+00	Amr zaki	amrzaki.omar@gamil.com	+201019711891	Ben sina	6-8	basic
496	2022-04-06 01:19:14.01373+00	Asser Ehab	marwasaleh1400@gmail.com	+201066764948	Smart vision International school	6-8	basic
497	2022-04-06 04:38:38.413751+00	مازن عمرو كمال	Amrkamal5050@gmail.com	+201007401155	الشروق التجريبية للغات	6-8	basic
498	2022-04-06 04:45:00.187098+00	nasser Abd el khalek Abd el	yaheiali12@gmail.com	+201022221374	Newcastle	6-8	basic
499	2022-04-06 09:40:18.557292+00	Abd el rahman	dr.wafaagamal2000@gmail.com	+201019517502	Ansary	6-8	basic
500	2022-04-06 09:58:32.977878+00	Radwa Ali	radwa.saad.ali@gmail.com	+201000016900	Degla valley	6-8	basic
501	2022-04-08 22:22:57.025202+00	Malik mahmoud	yomn_kamhawy89@outlook.com	+201061121662	Nis	6-8	basic
502	2022-04-12 09:03:14.292402+00	Hoor hosni Waheed	ghadashosni@gmail.com	+201093820207	Thaat el netaqeen school	6-8	basic
504	2022-04-17 13:12:27.231016+00	Mostafa Adel	wardasotohy@gmail.com	+201110221569	Al-golf school	6-8	basic
505	2022-04-18 21:16:55.008221+00	Hana Mosaad Khamis	mosad_khames@yahoo.com	+97466253027	Loyola	6-8	basic
506	2022-04-19 17:59:58.753254+00	Hassan	hnawasra@hotmail.com	+97466714900	DOHA BRITISH SCHOOL - QATAR	6-8	basic
507	2022-04-20 13:43:29.993066+00	Omar Ahmed	mai.dinana123@gmail.com	097466551897	Cardiff International school	6-8	basic
508	2022-04-21 06:32:44.018886+00	Abubakr Fathy	abubakrfathy@hotmail.com	+201061856222	City	6-8	basic
509	2022-04-21 08:11:03.740731+00	Aser	salmatolan7@gmail.com	+201099556464	MES	6-8	basic
510	2022-04-21 08:36:07.64744+00	Rokaya Kareem	yasmenatera@gmail.com	+201094451427	Inspire language school	6-8	basic
511	2022-04-21 11:04:48.240887+00	Kareem nader	nabilnader880@gmail.com	+201117317666	future school	6-8	basic
512	2022-04-21 11:42:29.061161+00	Ali hazem	dr.maielnashar@gmail.com	+201060188404	Y l s	6-8	basic
513	2022-04-21 12:32:24.886621+00	محمودمحمد محمودتاج الدين	mtag77@yahoo.com	+201004881020	الفتح الخاصه	6-8	basic
514	2022-04-21 14:13:59.45803+00	Adham Ibrahim	ambition.apc@gmail.com	+21066036306	Tarek bn ziad	6-8	basic
515	2022-04-21 15:12:57.373212+00	Abdelrahman moatasem	yomna.eid.87@gmail.com	+201128061779	Degla valley	6-8	basic
516	2022-04-21 23:55:00.851523+00	يوسف	amonuir8@gmail.com	+201027761116	The Future	6-8	basic
517	2022-04-22 00:51:40.929704+00	محمود محمد	m.mahmoud78@yahoo.com	+201018705212	Gamal abd alnasr	6-8	basic
518	2022-04-22 01:25:12.674781+00	Eyad Amr Talaat	amr.talaat10@gmail.com	+201005662595	Dr. Nirmeen Ismael	6-8	basic
519	2022-04-22 02:40:11.596961+00	علي	maher_304@hotmail.com	+201112885111	طه همام	6-8	basic
520	2022-04-22 02:43:11.193553+00	محمد فاروق	baskota_3@yahoo.com	+201000999114	Nis	6-8	basic
521	2022-04-22 09:11:17.955395+00	هبة حسين سعيد حسام الدين	hebahosam28@gmail.com	+201126223327	4gred	6-8	basic
522	2022-04-22 11:08:35.714241+00	Deemah Ahmed Ali	roaa.abdelrahman.85@gmail.com	+201033759659	Interational moder school sayed galal	6-8	basic
523	2022-04-22 14:35:59.683585+00	Ali Mohamed	nada.h.muhammed@gmail.com	+201152444533	Reinessance International School	6-8	basic
524	2022-04-22 17:15:15.23922+00	Malke	mamdouheryan@gmail.com	+201221299992	Orman	6-8	basic
525	2022-04-22 18:21:02.801961+00	Hamza ahmed	dina86mwafi@gmail.com	+201090986135	GHIs	6-8	basic
526	2022-04-22 18:36:09.477409+00	Hamza saied	dr.nonoshsaied2013@gmail.com	+201146753122	Saint Mary language school	6-8	basic
527	2022-04-22 20:39:45.251329+00	Yassin abdelghany	yassinabdelghany737@gmail.com	+201000001032	Elwy British school	6-8	basic
528	2022-04-22 22:44:28.711557+00	Mariam Sherif	enasatef2020@gmail.com	+201125073777	Roots school	6-8	basic
529	2022-04-22 23:15:25.737403+00	Hana mahmoud	Fayrouz_ahmed@hotmail.com	+201007771518	Al alsun	6-8	basic
530	2022-04-22 23:27:55.828498+00	Malek Essam	ommalak_555@yahoo.com	+201003650388	El Teraa languages  shcool	6-8	basic
531	2022-04-22 23:31:06.422719+00	Youssef Islam	islam.gamal@rgsholding.com	+201280033055	Skylight	6-8	basic
532	2022-04-23 01:05:02.472885+00	Farida mahmoud abbas	Srashad@ezzsteel.com	+201097488861	راهبات سيدة المعونة الدائمة	6-8	basic
533	2022-04-23 01:07:32.197403+00	Farida Mahmoud Abbas	Srashad@ezzsteel.com	+201097488861	راهبات سيدة المعونة الدائمة	6-8	basic
534	2022-04-23 01:09:19.610879+00	Farida Mahmoud Abbas	Srashad@ezzsteel.com	+201097488861	سيدة المعونة الدائمه	6-8	basic
535	2022-04-23 03:13:58.987293+00	Farouk	samirahussin1985@gmail.com	+201000260768	Modern future	6-8	basic
536	2022-04-23 05:46:26.131342+00	Saef Ahmed badawy	bsaif648@gmail.com	+201029090677	Future tk school	6-8	basic
537	2022-04-23 08:54:56.721928+00	Omar nasser	nadafraige@gmail.com	+201067833376	Capital	6-8	basic
538	2022-04-23 09:15:46.903371+00	اياد هاني	hanyrannan@gmail.com	+21066657719	النهر العظيم للغات	6-8	basic
539	2022-04-23 12:22:51.09524+00	Mohamed Hesham	meera.dorgham@googlemail.com	+21066656572	Retaj school	6-8	basic
540	2022-04-23 19:37:41.654988+00	Taym Hassan Ali	aya.adel.hamed@gmail.com	+201006934500	Six October Language School (Qawmeya)	6-8	basic
541	2022-04-23 22:40:09.453381+00	Ahmed	ranaelshinawy@gmail.com	+201119721510	Futurestech	6-8	basic
542	2022-04-24 00:15:19.888038+00	Omar sherif	drcrescentgharieb@gmail.com	+201007075273	Summits international school	6-8	basic
543	2022-04-24 01:38:37.549548+00	Mohammed	anwerhhh71@gmail.com	+2001116578749	Al-Jabal Al-Asfar prep station	6-8	basic
544	2022-04-24 04:05:58.327036+00	محمد رشاد	egec.edu@gmail.com	+21007615483	Bagour	6-8	basic
545	2022-04-24 09:20:03.99625+00	محمد عطيه	Hebamokhtar309@gmail.com	+201065555640	Marvel	6-8	basic
546	2022-04-24 09:25:37.498297+00	Aliah Elbadry	drdawdaw@hotmail.con	+20100623082	Leaders	6-8	basic
547	2022-04-24 12:32:30.426204+00	Asser ossama	safaa_talaat@hotmail.com	+201003915309	Minaret el farouk	6-8	basic
548	2022-04-24 21:53:57.523417+00	Iyad mohammed	abeer.shaaban1988@gmail.com	0971558025491	Elwaleed school	6-8	basic
549	2022-05-05 10:48:01.239894+00	logy mahmoud ali	hend.guide@gmail.com	+201201116800	princesses language school	6-8	basic
550	2022-05-08 23:30:11.586374+00	Taym Hassan	aya.adel.hamed@gmail.com	+201006934500	Six October Language Schools	6-8	basic
551	2022-05-08 23:43:33.247478+00	Fawzy	haidisoliman86@gmail.com	+201011537099	E.S.A	6-8	basic
552	2022-05-09 00:09:42.874293+00	Omar Mohamed	rania.elnahas1@gmail.com	+201275323048	Zoser	6-8	basic
553	2022-05-09 00:09:42.9959+00	Omar Mohamed	rania.elnahas1@gmail.com	+201275323048	Zoser	6-8	basic
554	2022-05-09 00:55:42.229922+00	Adam mostafa	maiii.ramadan@gmail.com	+201019127227	Alnasr school	6-8	basic
555	2022-05-09 03:58:32.901768+00	Mohamed Mostafa	oa840858@gmail.com	+201282434955	Alshrouk modern school	6-8	basic
556	2022-05-09 04:59:58.395434+00	محمد طارق	emanshokry50@gmail.com	+201092744833	الوادى	6-8	basic
557	2022-05-09 05:00:28.452357+00	Adam mohamed	nahlagamal1812@gmail.com	+201120959980	المستقبل للغات	6-8	basic
558	2022-05-09 05:07:26.219661+00	El kassem selim m abozeid	kokyrose@yahoo.com	+201010056457	Millenium school	6-8	basic
559	2022-05-09 06:26:45.938579+00	Omar	Pharma.west@yahoo.com	+201110112636	Elkball	6-8	basic
560	2022-05-09 07:08:53.266473+00	Zein Amr	amira_magdy123@hotmail.com	+201001812711	Capital international school	6-8	basic
561	2022-05-09 07:32:53.952011+00	Ahmed	mhanafy893@gmail.com	+201223010961	Fredoom	6-8	basic
562	2022-05-09 07:41:02.775715+00	Hamza	mmora1310@gmail.com	+21025379595	Orman	6-8	basic
563	2022-05-09 07:56:28.452416+00	Muhammed	muhammedmamdouh3@gmail.com	+201097050317	Egypt language	6-8	basic
564	2022-05-09 09:34:03.765914+00	Mohammed Ahmed Mohammed	hendradwan.smc@gmail.com	+201225714286	talaa el kamal	6-8	basic
565	2022-05-09 09:41:29.17761+00	رقية عبد العزيز محمود	ustazahuda7@yahoo.com	+201224969853	عبد المنعم واصل التجريبية	6-8	basic
566	2022-05-09 10:42:05.599062+00	Omar azzam hossam	tabarkmaka@gmail.com	+2001023284017	New generation	6-8	basic
567	2022-05-09 11:02:20.766517+00	Ibrahim Mohamed Ibrahim	mohamed_teka14@yahoo.com	+201113304040	Asmaa bent abo baker	6-8	basic
568	2022-05-09 13:22:28.29609+00	Sheref	daliaarch1983@gmail.com	+201014157056	Elazhar language institute	6-8	basic
569	2022-05-09 17:47:33.892956+00	Hana mohamed	moh_ibr98@yahoo.com	+201026887877	Ddd	6-8	basic
570	2022-05-09 22:44:44.847089+00	Karas peter	lucypeter20100@gmail.com	+201211710078	Elteraa language school	6-8	basic
571	2022-05-09 22:52:51.026871+00	Yassin moh hassan	lareine_08@yahoo.com	+201225405327	Royal house language school	6-8	basic
572	2022-05-10 07:46:26.275102+00	Omar Wagdy Mohamed	Habeba.nasser@pharma.asu.edu.eg	+201206833442	Amgad language school	6-8	basic
573	2022-05-10 09:29:24.908194+00	Yassin Amr	nermin.hafez485@gmail.com	+201111801610	Modern infinity language school	6-8	basic
574	2022-05-10 11:24:18.916612+00	Berry Ragy mohamed	Biry.abogalala@gmail.com	+201212345303	Sedy Gaber	6-8	basic
575	2022-05-10 12:27:07.322392+00	Asser ahmed	youssrahosny@gmail.com	+201206476334	Modern narmer	6-8	basic
576	2022-05-10 16:51:57.742653+00	Abdullah Mohamed Ismail	nashwah.1975@gmail.com	+2001033626714	rororio1234@gmail.com	6-8	basic
577	2022-05-10 17:26:17.932552+00	ياسر محمد	nabdelshafe@hotmail.com	+201110049210	Cairo International school	6-8	basic
578	2022-05-10 20:34:02.475809+00	Youseif ahmed	devahmed1982.ar@gmail.com	+21006920061	Gamal abd el nasr	6-8	basic
579	2022-05-10 21:06:11.183901+00	Karim Mohamef	basmalabota@gmail.com	+201098721161	Nahdet Misr	6-8	basic
580	2022-05-11 02:17:39.501966+00	Mohamed Fawzy	alaaatanahy@gmail.com	+971553724689	RAK school	6-8	basic
581	2022-05-11 07:03:42.435922+00	Adam Ahmed Ramadan	habdelfattah206@gmail.com	+97433161605	Abi  Ayoub Alansari  school	6-8	basic
582	2022-05-11 08:07:06.961264+00	Ahmed Ali Azouz	alyazouz4@gmail.com	+2201115741778	Altim	6-8	basic
583	2022-05-11 16:38:31.103573+00	Mohammed tamer	alsrogy@gmail.com	+97430272765	Newton international academy	6-8	basic
584	2022-05-11 16:56:14.170084+00	Abdullah Osama Ahmed	ekram7930@gmail.com	+21127774703	Al Bukhary Language Institute	6-8	basic
585	2022-05-11 17:00:25.91705+00	Ahmed Osama Ahmed	ekram7930@gmail.com	+21127774703	Al Bukhary Language Institute	6-8	basic
586	2022-05-11 18:49:37.424327+00	Pierre Ehab	magy.zarif@gmail.com	+201206621149	Blue Nile language school	6-8	basic
587	2022-05-11 19:17:09.114014+00	Malek mostafa elborady	Nessrinm@hotmail.com	+21068840489	Windrose Academy	6-8	basic
588	2022-05-14 10:17:27.733838+00	Omar mohamed magdy	shereenhelwa2@gmail.com	+201001007215	Alsayeda aiesha	6-8	basic
589	2022-05-14 13:45:37.207253+00	Moez Alaaeldin Adel	noura.saaid2@gmail.con	+20001115223911	Future language school	6-8	basic
590	2022-05-14 14:51:47.02985+00	Farida Yacoub	alaa.faisal@gmail.com	+201004269199	YSE	6-8	basic
591	2022-05-15 15:41:09.708138+00	Yassin Ahmed	oogyvip34@gmail.com	+201142102828	Heliopolis language school	6-8	basic
592	2022-05-15 15:52:07.342465+00	Yahia Ibrahim	khadija.80@yahoo.com	+201113305653	Albashaer	6-8	basic
593	2022-05-15 16:17:17.885054+00	Moustafa ahmed islam	marsmubarak@yahoo.com	+201006527835	BHS	6-8	basic
594	2022-05-15 16:53:47.386788+00	علي محمود	rashrosh2017@gmail.com	0096537771445	Evs	6-8	basic
595	2022-05-15 18:28:54.04917+00	Moaz abdelrahman	omymamohsen@yahoo.com	+201027267979	Elsafwa	6-8	basic
596	2022-05-15 18:29:07.154975+00	Khadija Mahmoud Hamdi Ragab	deejamhr@gmail.com	+201064923585	Agial Misr Private School	6-8	basic
597	2022-05-15 18:57:06.261503+00	Mohab Ahmed Abd El-Wahab	emana88@hotmail.com	+201146097108	Cairo Language School	6-8	basic
598	2022-05-15 20:42:40.403241+00	Celine wagdi	marinazakher88@gmail.com	+201288336064	Saint John American school	6-8	basic
599	2022-05-15 23:38:45.804332+00	Raheel Gamal	fatema_234@hotmail.com	+0201067770490	Salam school	6-8	basic
600	2022-05-16 05:30:22.832759+00	Anas Gamal	monasolimangad@gmail.com	+201151199986	Horas school	6-8	basic
601	2022-05-16 06:40:26.894026+00	Mohamed	dr.asmaawageeh@gmail.com	966563078110	Homeschooling	6-8	basic
602	2022-05-16 09:52:27.821811+00	عبدالرحمن محمد	manalesam232@gmail.com	+201148687008	الوفاء الازهرى	6-8	basic
603	2022-05-16 11:18:40.756622+00	Omar mohamed hassan nasr	basmamostafa85@gmail.com	+201098001579	Icb	6-8	basic
604	2022-05-16 13:35:36.732553+00	Hamza Mahmoud Hamdi	deejamhr@gmail.com	+201064923585	Al_Eman language school	6-8	basic
605	2022-05-16 14:35:50.646116+00	Ahmed Mostafa	mostafamasi@yahoo.com	+201060113497	Amgad language school	6-8	basic
606	2022-05-16 15:13:53.047719+00	مريم عمرو بهجت رجب	nesma3324684@gmail.com	+201019564630	مكة المكرمة الخاصة قسم العربي	6-8	basic
607	2022-05-16 18:24:37.532497+00	عبد الرحمن أحمد جلال	marwafaruok3611@gmail.com	+201004234435	مدرسة الشهيد احمد المنسى لغات	6-8	basic
608	2022-05-16 19:15:52.040709+00	سمر النعمان	samaralnoman15@gmail.com	+201229122262	Abobaker	6-8	basic
609	2022-05-16 19:40:23.906891+00	Seif amr kamal	dramrkemo@gmail.com	+201117778110	Majesty international school	6-8	basic
610	2022-05-17 00:43:16.777091+00	Saif Eldin Ayman	gehadabuelela@gmail.com	+201060703292	Akhenaton	6-8	basic
611	2022-05-17 04:37:59.965954+00	Judy Ahmed Meselhy	alostaz2@gmail.com	+21229092493	Sun of glory american school	6-8	basic
612	2022-05-17 05:15:11.855835+00	Zeina amro	uptown_girl_626@hotmail.com	+201017977791	Highlands school of Egypt	6-8	basic
613	2022-05-17 06:50:19.17714+00	Sara Tawdrose	sara.n.tawdrose@gmail.com	+201223858875	Nefertari schools	6-8	basic
614	2022-05-17 09:17:31.239267+00	Adam khaled saad nagy	Khalednagy402@gmail.com	+971551019470	National school	6-8	basic
615	2022-05-17 09:19:59.124551+00	Hana khaled saad nagy	Khalednagy402@gmail.com	+971554019470	National school	6-8	basic
616	2022-05-17 11:12:19.566828+00	Eyad Ahmed	my.love80@hotmail.commBrich	+201006020527	British school in Egypt	6-8	basic
617	2022-05-17 11:49:08.773698+00	احمد هيثم محمد	hmha908@yahoo.com	+201144424340	الحسن الازهري الخاص	6-8	basic
618	2022-05-17 13:25:16.810172+00	Asser mohamed atef	m.atef1@hotmail.com	+201113101101	NIS	6-8	basic
619	2022-05-17 14:33:56.722423+00	Mounira Trabelsi	mounira.trabelsi@gmail.com	+21622567584	École Internationale de Tunis	6-8	basic
620	2022-05-17 15:02:12.027163+00	Labiba mohammad Alsanea	labibaalsanra@gmail.com	+966501590141	Saida aeisha	6-8	basic
621	2022-05-17 15:27:56.971581+00	Mohamed Ameer	ameerdaha64@gmail.com	+201090338866	Nile Egyptian School	6-8	basic
622	2022-05-17 15:59:20.873007+00	Ali Ahmed	amiragamal38@gmail.coma	+201119648949	Rawan language school	6-8	basic
623	2022-05-17 16:47:52.125128+00	Youssef Ahmed Mohiy	moony_1142008@hotmail.com	216901115412169	Modern school Heliopolis	6-8	basic
624	2022-05-17 19:35:25.838902+00	Ahmad omar Elfallah	Eng.haneyahassan@gmail.com	97455266692	Gulf english schlool	6-8	basic
625	2022-05-17 19:51:58.087397+00	Omar	eng_islamsultan@yahoo.com	+971504126220	Mharat	6-8	basic
626	2022-05-17 21:53:28.616224+00	Mohamed Hossam Eldin Taha	hossamtaha1982@gmail.com	+201064942406	Nozha language school	6-8	basic
627	2022-05-18 06:37:45.725465+00	Malek mostafa	nora.salama.sayed@gmail.com	+201119955488	Manart El mostakbal	6-8	basic
628	2022-05-18 06:41:28.342702+00	Farida Islam Ahmed	hanahassanothman@gmail.com	+201015501200	MIS international school	6-8	basic
629	2022-05-18 14:47:52.756438+00	Farid Ramy badr	marwaibrahimelsayed83@gmail.com	+201000024647	Oasis international school	6-8	basic
630	2022-05-18 15:27:04.258721+00	يوسف محمود محمد	mm0337332@gmail.com	+201125488405	اليسر	6-8	basic
631	2022-05-18 15:39:15.779992+00	Adam Mohamed Bassem	m.bassem@gmail.com	+201011279828	Modern infinity language school	6-8	basic
632	2022-05-18 20:49:20.68678+00	Kareem Alaaeldin Saad	alaaeldinmohamed2002@gmail.com	+201000862836	NIS	6-8	basic
633	2022-05-18 23:09:48.741649+00	Nour Eldin Amr	shoshok1983@gmail.com	+201023686874	Soudy language school	6-8	basic
634	2022-05-19 09:43:43.320946+00	AbdelRahman Ahmad Sayed	ann.s.emam@gmail.com	+201141332307	Narmer	6-8	basic
635	2022-05-19 18:52:03.560708+00	Asser ahmed elgammal	doaasami14388@gmail.com	+201122845141	Chinese Egyptian school	6-8	basic
636	2022-05-19 20:21:08.015556+00	مالك احمد حسن	maidarwish9918@gmail.com	+21100009918	Iaes	6-8	basic
637	2022-05-19 20:58:50.959084+00	Yaseen Mohamed Mohy	samaryaseenyousefali@gmail.com	+201552731421	El salam	6-8	basic
638	2022-05-19 20:59:37.94724+00	Yousef Mohamed Mohy	samaryaseenyousefali@gmail.com	+201552731421	El salam	6-8	basic
639	2022-05-20 04:09:11.6455+00	Karma	lamia.haisam@gmail.com	+201066350228	Lycée Français International	6-8	basic
640	2022-05-20 04:09:11.647051+00	Karma	lamia.haisam@gmail.com	+201066350228	Lycée Français International	6-8	basic
641	2022-05-20 04:36:37.172632+00	omar mohamed	mkandil79@gmail.com	+971559665845	Brilliant international school	6-8	basic
642	2022-05-20 05:30:38.525773+00	Karma	lamia.haisam@gmail.com	+201066350228	Lycée Français International	6-8	basic
643	2022-05-20 09:19:13.833579+00	Eyad Ahmed Ibrahim	my.love80@hotmail.com	+201006020527	British  school of Egypt	6-8	basic
706	2022-05-26 06:21:17.511595+00	Salah El-Din wael	imymino80@gmail.com	+201270677957	HIS	6-8	basic
644	2022-05-20 10:43:14.774291+00	Hamza Ahmad Kamal	Alexander771986@yahoo.com	+2010096957636	ElZahraa Modern School	6-8	basic
645	2022-05-20 14:27:39.32691+00	Labiba alsanea	labibaalsanra@gmail.com	+966501590141	Saida aesha	6-8	basic
646	2022-05-20 14:36:03.174145+00	Labiba Alsanea	labibaalsanra@gmail.com	+966501590141	Saida aeisha	6-8	basic
647	2022-05-20 16:57:40.099933+00	Ahmed mohamed ahmed hefzallah	rawymada@gmail.com	+201004952692	Alfarouk islamic language school	6-8	basic
648	2022-05-20 18:39:04.189696+00	Farida mohqmmed	shaimaa.mohammed1520@gmail.com	+201001002037	Japanese Egyptian school	6-8	basic
649	2022-05-21 04:34:19.514465+00	Mohamed	mohamed_arafa_81@yahoo.com	+201016095987	American	6-8	basic
650	2022-05-21 05:14:57.892637+00	Shaimaa Ahmed	eng_shimaa25@yahoo.com	+971559317160	Gems Westminster	6-8	basic
651	2022-05-21 07:24:43.986841+00	حسن احمد حسن	ZoZo20109480@gmaill.com	+201117008444	Al ahram modern school	6-8	basic
652	2022-05-21 08:47:07.232675+00	Ahmed Mohamed Rafat	m_rafat00@yahoo.com	+201271906099	مدرسه اللواء سمير خلف الله الرسميه للغات	6-8	basic
653	2022-05-21 13:50:15.949925+00	Nader Hashim	Naderhashim2021@gmail.com	+201017733381	الحرية للغات	6-8	basic
654	2022-05-21 14:40:54.214299+00	Omar ihab mohamed	sally.mohamed@bibalex.org	+201005294304	Saint marc	6-8	basic
655	2022-05-21 15:15:59.825865+00	Adham wael	wfareed.admin@gmail.com	+201220551300	MSE 2000	6-8	basic
656	2022-05-21 16:51:11.402019+00	wesal wael	wesal.wael@gmail.com	+201002527004	HIS	6-8	basic
657	2022-05-21 18:53:04.379259+00	علاء محمد علاء الدين	emangaber100@outlook.com	+201000431448	Innovation school	6-8	basic
658	2022-05-21 21:30:18.360903+00	Mohammed ali abdelwahab	hodayassen18@gmail.com	+201000171330	Future rise language school	6-8	basic
659	2022-05-21 23:14:02.683248+00	Youssef Hesham	eng.hesham.behairy@gmail.com	+971501056207	GCS	6-8	basic
660	2022-05-22 04:45:01.75878+00	Elyaman Sherif Salah Eldin	sallyahmed.e.sh@gmail.com	+971565756643	Al Rabeeh School	6-8	basic
661	2022-05-22 04:59:53.683716+00	Eyad	rabab@email.sc.edu	+16142183936	Riverbank elementary school	6-8	basic
662	2022-05-22 05:17:00.723108+00	Ahmed samer	mahaahmed15111988@gmail.com	+21200155124	Fadl language school	6-8	basic
663	2022-05-22 21:37:34.834549+00	Adam	hanyabbasahmed@gmail.com	+201113929666	Orman	6-8	basic
664	2022-05-22 21:51:17.019885+00	Yassin Mohammed Faisal	Yymmnf2020@gmail.com	+201033687770	Al-retaj language school	6-8	basic
665	2022-05-23 00:04:34.375539+00	Anas Mohamad Ahmad	ans15022010@gamil.com	+201114400106	Geel2000	6-8	basic
666	2022-05-23 00:50:44.845904+00	Baraa Mahmoud Abo Attiya	mahmoud.attiya@gmail.com	+21003907653	Omar Ibn El-Khattab formal language school	6-8	basic
667	2022-05-23 02:06:28.178363+00	Youssef Mohamed Mohamed salem	youssefsalem3000@gmail.com	+201066111420	Horus Language School	6-8	basic
668	2022-05-23 07:00:50.378849+00	Davied George gamal	georgeghaly9@gmail.com	+201226030358	Mavrices International school	6-8	basic
669	2022-05-23 08:03:54.132222+00	Abelhamid Elshamy	hadedmasr@yahoo.com	+201002265156	Manart heliopolis	6-8	basic
670	2022-05-23 11:13:09.593375+00	Mohammad yasser	raniayahiashash@hotmail.com	+201005240101	Misr language school American division	6-8	basic
671	2022-05-23 12:45:39.96402+00	Ahmed Eltaweel	drmtaweel2016@gmail.com	+201000417037	Modern Narmer Language School	6-8	basic
672	2022-05-23 14:27:52.524845+00	Ahmed Ashraf Ahmed abd el rahman	ashraftransport82@gmail.com	+201026655394	Al lychee	6-8	basic
673	2022-05-23 17:04:44.664088+00	Hamza Amr	soso2751@yahoo.com	+20201016077574	Albayan modern school	6-8	basic
674	2022-05-23 18:10:25.637639+00	Aser ahmed	hanadyelnawawy@gmail.com	+201021236356	Shekh zayed	6-8	basic
675	2022-05-24 04:54:14.22703+00	معاذ محمد علي محمود	mmoaz7478@gmail.com	+201115542980	هضبه الاهرام الرسميه للغات	6-8	basic
676	2022-05-24 05:04:05.505481+00	Omar Ahmed	nms2046@gmail.com	+201008242407	Amgad	6-8	basic
677	2022-05-24 08:36:03.243043+00	Youssef Mahmoud	love.forlive36@gmail.com	+201010169701	Geel 2000	6-8	basic
678	2022-05-24 10:02:55.327445+00	El farouk omar	nona_nona200717@yahoo.com	+201008568477	Andalusia language school	6-8	basic
679	2022-05-24 13:40:23.876546+00	Hala tahir &Malak tahier	nagwananwar1978@icloud.com	+20101001950199	Gems	6-8	basic
680	2022-05-24 13:40:26.258149+00	Hala tahir &Malak tahier	nagwananwar1978@icloud.com	+20101001950199	Gems	6-8	basic
681	2022-05-25 01:43:53.091143+00	John heshmat Morgan	jojokils12345@gmail.com	+0201220018700	Sorour language school	6-8	basic
682	2022-05-25 07:46:55.739078+00	Adam Mahomoud	amanymansour.1@gmail.com	+201007149976	NES	6-8	basic
683	2022-05-25 10:46:19.906158+00	Moaaz khaled	justrania79@hotmail.com	+201224787550	Els	6-8	basic
684	2022-05-25 10:48:54.208836+00	Yousef Aiman	dollyzena@gmail.com	+201012171456	Agyal	6-8	basic
685	2022-05-25 11:06:28.921851+00	Omar Mohamed	Samah18380@gmail.com	+201026611699	Bashaer	6-8	basic
686	2022-05-25 11:45:55.595114+00	أدهم محمد عبدالغني	adhammohammed424@gmail.com	+201062999946	حسن عباس	6-8	basic
687	2022-05-25 11:52:28.933778+00	Ammar/Rodaina Hossam Baheeg	hbaheeg@gmail.com	+201008071025	Modern School Ahmed Esmat	6-8	basic
688	2022-05-25 12:38:01.984391+00	يوسف فوزي هاشم	randagamal2000@gmail.com	+201202300070	اسماء فهمي القومية	6-8	basic
689	2022-05-25 12:51:13.042531+00	Hamza	hamza.shosha@gmail.com	+201066112532	Manhattan	6-8	basic
690	2022-05-25 13:55:47.913874+00	Ahmed	Anwarsalem2005@yahoo.com	+201009905480	Continental School	6-8	basic
691	2022-05-25 14:39:08.847025+00	Mahmoud Mostafa Mahmoud	anfoshi@hotmail.com	+201111392422	Hossary Azhar language school	6-8	basic
692	2022-05-25 14:57:00.994432+00	Raslan shereen	shereenmhmoud4@gmail.com	+201143026288	Ain Shams University rightsAin Shams University rights	6-8	basic
693	2022-05-25 15:48:14.525697+00	Adam hossam	Hossamgalal_2001@yahoo.com	+201222492498	Modern language school	6-8	basic
694	2022-05-25 17:39:44.447661+00	Seif Sameh Saeed	eng.sameh.s.s@gmail.com	+201200714955	Modern Vision	6-8	basic
695	2022-05-25 18:17:07.736899+00	عبد الرحمن محمد نصار	mhamed_nassar16@icloud.com	+201000355364	مهارات سوبر جلوبال	6-8	basic
696	2022-05-25 19:36:06.270718+00	Mostafa	samizidan1978@gmail.com	+201003760833	New Generation	6-8	basic
697	2022-05-25 19:58:45.468003+00	Abdallah	sayed.abotaleb2014@gmail.com	+201064251837	El kawser	6-8	basic
698	2022-05-25 20:11:15.782243+00	Abdallah walid	walid221.wm@gmail.com	+201009795727	Manarat elmostakbal lang school	6-8	basic
699	2022-05-25 20:58:01.235522+00	Enas	enasmalaa2020@gmail.com	+201009557395	Elrowad	6-8	basic
700	2022-05-25 21:49:31.530936+00	Jana	ahmednahal86@gmail.com	+201091570086	Noterdam	6-8	basic
701	2022-05-25 22:19:38.9677+00	Anas Shaaban AbdAlrahman	ans.magicoo@gmail.com	+201141394181	zoser school	6-8	basic
702	2022-05-26 01:01:58.345923+00	محمد هانى	hanyshousha80@gmail.com	+21140700073	عمر بن الخطاب التجريبيه	6-8	basic
703	2022-05-26 02:05:37.395639+00	منة	shahd200090@yahoo.com	+201003680598	معهد الارقم	6-8	basic
704	2022-05-26 05:26:24.220816+00	Omar abd elhafez zkrea	azm29178@gmail.com	+201001081956	Vally school	6-8	basic
707	2022-05-26 07:37:01.846746+00	Rany remon efat	efatremon@gmail.com	+201227733923	Nile international Egyptian school	6-8	basic
708	2022-05-26 08:40:10.432666+00	Ali haisam	orientalgoodsegypt@gmail.com	+201022719023	Nour al eslam	6-8	basic
709	2022-05-26 09:05:22.675467+00	Mostafa wessam	missak1978@hotmail.com	+201223657435	Masreya language school	6-8	basic
710	2022-05-26 09:45:48.714418+00	Ziad Ahmed / Jumana Ahmed	imymino80@gmail.com	+201006284427	HIS	6-8	basic
711	2022-05-26 11:09:33.279728+00	Tayem Allah khaled	daliadollydaliakamal@gmail.com	+201116811045	Al mostakbal	6-8	basic
712	2022-05-26 11:35:44.824566+00	Ryad Mahmoud	01092730759zz@gmail.com	+201092730759	الشيخ زايد	6-8	basic
713	2022-05-26 15:29:33.399637+00	Ramy	mahamahdy501@gmail.com	+0201093225015	Agial	6-8	basic
714	2022-05-26 17:39:01.430662+00	Taline	mina.raouf@yahoo.com	+201004260604	Sacre coeur Héliopolis	6-8	basic
715	2022-05-26 18:05:20.731116+00	Youssef Abdelhamid	f.elgazar@gmail.com	+21006220452	Nozha language school	6-8	basic
716	2022-05-26 18:38:40.007791+00	Tala Mohamed Taha	muhamed.tahaibrahim@gmail.com	+201552888865	Franciscaines kasr El Nil	6-8	basic
717	2022-05-26 18:46:35.512316+00	Omar Abdel'aal Abdelhafeez	sohair558@gmail.com	+201117047691	Algam'a Alislamya for boys	6-8	basic
718	2022-05-26 19:31:46.040622+00	Ahmed gad	ahmedgaad@hotmail.com	+201001907326	Gad	6-8	basic
719	2022-05-26 19:39:37.151161+00	Karma ahmed	amatoallah8@gmail.com	+201032775426	Our lady of perpetual  succour	6-8	basic
720	2022-05-26 20:06:05.170318+00	عمر	ibrahimafifi710@gmail.com	+201152549045	سعد طه الابتدائيه	6-8	basic
721	2022-05-26 20:11:40.595704+00	AMMAR MAHMOUD	forsanforever1985@gmail.com	+201100223760	الرؤويه الرسميه لغات	6-8	basic
722	2022-05-26 20:21:04.333935+00	Malak momen	maroiommoamen123@gmail.com	+201223721490	Japanese school	6-8	basic
723	2022-05-26 22:06:03.748391+00	Malek Mohamed	abumalek200854@gmail.com	+201018145558	Talaea elazhar	6-8	basic
724	2022-05-27 01:45:18.554303+00	ايان احمد علي	norsen.ahmed22@gamil.come	+201016259104	محمد سميى	6-8	basic
725	2022-05-27 02:31:18.161041+00	Yassin	imy.sabry@gmail.com	+201120444455	Els	6-8	basic
726	2022-05-27 05:36:54.708568+00	رنا محمد عبدالمجيد	asmamohamad20092012@gmail.com	+2001126660285	العروبه رسميه لغات	6-8	basic
727	2022-05-27 06:25:04.96109+00	Anas Ahmed	hadeerlife294@yahoo.com	+201006338920	Egyptian language school	6-8	basic
728	2022-05-27 06:26:35.829695+00	Mostafa Ahmed	hadeerlife294@yahoo.com	+201006338920	Egyptian language school	6-8	basic
729	2022-05-27 07:21:29.808702+00	Aly Essam Nour	essam.nour@gmail.com	+201020050989	NIS	6-8	basic
730	2022-05-27 10:16:22.04773+00	Fatma	fatma.khalid@gmail.com	+201020877755	Nis	6-8	basic
731	2022-05-27 10:23:48.988406+00	Seleem mohamed khedr	positivespotcenter@gmail.com	+201003470001	Canadian international school	6-8	basic
732	2022-05-27 11:32:26.247777+00	Mohamed omar	omarabosehly@gmail.com	+201001313950	Smart city	6-8	basic
733	2022-05-27 11:56:36.581997+00	Youssef mohamed	wessamshalabi9@gmail.com	+201114785733	Lycée school	6-8	basic
734	2022-05-27 12:55:24.282096+00	Sara ahmed	seham1smsm2@gmail.com	+201284975943	Alshahid language school	6-8	basic
735	2022-05-27 13:03:04.265795+00	Omar Tamer Rashad	omar.tamer1352010@gmail.com	+201099028426	Tils school	6-8	basic
736	2022-05-27 14:20:11.803183+00	Omar tamer	shemo_m86@hotmail.com	+201221998108	Lycee Haram	6-8	basic
737	2022-05-27 14:21:03.349412+00	Lara Mohamed	mshaheen@zewailcity.edu.eg	+201010700889	Future	6-8	basic
738	2022-05-27 17:10:10.909388+00	Zeyad Fahmy	maidarwish2004@gmail.com	+201064747936	Saint Fatima	6-8	basic
739	2022-05-27 17:10:29.577857+00	ياسين	sendrella12003@yahoo.com	+201006541518	SBS	6-8	basic
740	2022-05-28 08:56:57.945694+00	Hossam	monaallam292@yahoo.com	+201006366550	Manhattan	6-8	basic
741	2022-05-28 11:11:13.600027+00	Remas	enas.ahmed.2012@gmail.com	+201017808799	Alhoda	6-8	basic
742	2022-05-28 12:00:08.993554+00	Kareem	didoayman86@gmail.com	+201008173024	El-Radwa Language School	6-8	basic
743	2022-05-28 13:42:11.044828+00	Malek Mohamed Gamal	engmohammed_gamal@yahoo.com	+201223627811	Elshubban ElMuslmeen Languagae Schoom	6-8	basic
744	2022-05-28 14:03:15.12173+00	Hamza Ahmed	d.sarakhaled148@gmail.com	+201063535294	Shabra	6-8	basic
745	2022-05-28 14:40:12.268103+00	Yousef	dollyzena@gmail.com	+201012171456	اجيال	6-8	basic
746	2022-05-28 14:42:01.471369+00	Farida	youssra.elmassry@gmail.com	+201556628189	EGC	6-8	basic
747	2022-05-28 14:42:48.751307+00	Ahmed nasrallah	nasrallah7921@gmail.com	+21003340488	New generation	6-8	basic
748	2022-05-28 14:48:33.774632+00	lara muhammad bahgat	eng-muhammad@hotmail.com	+201006554413	manaret heleoplise language school	6-8	basic
749	2022-05-28 14:53:13.388539+00	lara muhammad bahgat	eng-muhammad@hotmail.com	+201006554413	manaret heleoplise language school	6-8	basic
750	2022-05-28 14:53:57.418561+00	lara muhammad bahgat	eng-muhammad@hotmail.com	+201006554413	manaret heleoplise language school	6-8	basic
751	2022-05-28 14:57:44.569859+00	يوسف محمد عبد الفتاح	fattah.m@pg.com	+201223946899	مدرسه ابن	6-8	basic
752	2022-05-28 18:22:43.575148+00	انس طه	geomodeler22@gmail.com	+201060339370	Al radwa	6-8	basic
753	2022-05-28 22:56:27.843224+00	Fares Rabea	hanenrabea.com@gmail.com	+201116191944	مدرسه الشهيد محمد سمير التجريبي	6-8	basic
754	2022-05-28 23:09:34.259036+00	Ziad amro sallam	hebaakl83@gmail.com	+201277300003	Talat harb secondary school	6-8	basic
755	2022-05-29 09:34:49.990078+00	Malek alaa	dyarmisr88@gmail.com	+201007171229	International public school	6-8	basic
756	2022-05-29 10:26:10.105737+00	Malek Saied Ahmed	saedahmed24@icloud.com	+21003401537	Smart way	6-8	basic
757	2022-05-29 18:44:42.336639+00	Mohamed Ahmed abd_el moniem	radwaragab92@gmail.com	+201203947349	Royal glory language school	6-8	basic
758	2022-05-29 20:24:37.517206+00	Youssef	bosyghanim9418@icloud.com	+201205706618	Niteen	6-8	basic
759	2022-05-29 20:52:40.364528+00	Youssef	myacout07@gmail.com	+201060022935	Royality	6-8	basic
760	2022-05-30 02:04:07.759471+00	Jana Ahmed Barakat	ar19221922@gmail.com	+201555538042	N.L.S	6-8	basic
761	2022-05-30 05:30:11.60447+00	Tamim	mahaabushbab@gmail.com	+9710589219007	Silver	6-8	basic
762	2022-05-30 08:03:21.39228+00	Adham	reham.gaballah@yahoo.com	0097551482880	The Aquila school Dubai	6-8	basic
763	2022-05-30 08:53:34.316445+00	Asser Ahmed	sherinsaied61@gmail.com	+201142333828	Future Integrated Language School	6-8	basic
764	2022-05-30 13:08:18.798066+00	Haroun mohame	menna.a7med@gmail.com	+201001525973	Future rise language school	6-8	basic
765	2022-05-30 19:48:07.732372+00	Sherif	heshamk79@yahoo.com	+21140440650	Brilliance Language School	6-8	basic
766	2022-05-30 20:51:38.792137+00	Mazen yousif elsayed	mazenyousif2008@gmail.com	+201005762037	Alrahman school	6-8	basic
767	2022-05-31 08:58:12.699086+00	Fares Muhammed Farouk	somafares541@gmail.com	+201007393462	capital language school	6-8	basic
768	2022-05-31 13:29:01.979853+00	Mohamed mostafa fathy	Hodaelazazytota@gmail.com	+201273818702	Aspire international	6-8	basic
769	2022-05-31 18:29:15.171243+00	Youssef sherif	sherif.aabdelkarim@gmail.com	+301015087149	San Gabriel	6-8	basic
770	2022-06-01 13:10:15.38843+00	asil farid ezat	faridezat1000@gmail.com	+201099618421	future international school	6-8	basic
771	2022-06-02 11:35:16.952869+00	Malek Ahmed Hussien	asoli106@gmail.com	+201286366663	International Schools of Kenana	6-8	basic
772	2022-06-03 08:56:19.881282+00	Mariam Mohamed Ramadan	wesamabdullah@hotmail.com	+97455056905	Egyptian School in Doha	6-8	basic
773	2022-06-03 15:28:03.08475+00	Marawan	dramanyhamoud@gmail.com	+201020364428	bloom lsnguage school	6-8	basic
774	2022-06-03 16:10:10.355308+00	Rakan ahmed taha	raniayahia91.ry@gmail.com	+201098464398	Eisj	6-8	basic
775	2022-06-03 16:18:40.718776+00	Marcellino Mina Aboalim	mina_aboalim@hotmail.com	+201066768046	Remas Language School	6-8	basic
776	2022-06-03 20:25:51.687367+00	Eyad Elkelany	dina.elhefny@gmail.com	+16143161246	Bonnie Holland School	6-8	basic
777	2022-06-03 20:33:58.071841+00	Hamza Elkelany	dina.elhefny@gmail.com	+16143161246	Bonnie Holland School	6-8	basic
778	2022-06-04 16:17:43.637809+00	زياد الشرقاوي	zelsharkawy350@gmail.com	+201123331897	ايمن الجميل	6-8	basic
779	2022-06-05 00:33:45.87392+00	Al Baraa Ahmed Sameer	dodobebo2411@gmail.com	+21069984420	النوبارية الرسميه لغات	6-8	basic
780	2022-06-05 05:15:44.824936+00	Mahmoud Ashraf	ashrf.atx@gmail.com	+21005168023	MASE	6-8	basic
781	2022-06-05 05:17:09.355593+00	Fairouz Ashraf	ashrf.atx@gmail.com	+21005168023	MASE	6-8	basic
782	2022-06-05 05:27:04.757708+00	Ezz aldeen Hassan refaat	monaelrefaa@gmail.com	+201223223766	Saad bin any wakaas	6-8	basic
783	2022-06-05 07:01:13.584666+00	Soad Fekry	soad.fekry85@yahoo.com	+201098017306	Fawzy fayaz school	6-8	basic
784	2022-06-05 07:01:17.864132+00	Sleem saden	saden.moussa@yahoo.com	+21223909155	Leaders school	6-8	basic
785	2022-06-05 08:07:44.012298+00	Abd AL Rahman Mohammad	marwasaeed1982@gmail.com	+201096892746	AL Alhossam American school	6-8	basic
786	2022-06-05 08:49:43.781242+00	Karim Hisham Elgebaly	hisham8232@gmail.com	+201001402273	City Language School	6-8	basic
787	2022-06-05 10:17:34.104542+00	Eyad Radwan	galkoka@yahoo.com	+201111179705	TDLS2	6-8	basic
788	2022-06-05 10:37:42.177776+00	Youssef	bosyghanim9418@icloud.com	+201205706618	Nioten	6-8	basic
789	2022-06-05 10:45:57.229328+00	Donia	tofaha1112004@gmail.com	+201003110093	حلمية الزيتون المتميزة للغات	6-8	basic
790	2022-06-05 11:22:38.686243+00	Yossef Adel	elmehdawy99@yahoo.com	+201060517179	Mostafa Hakam	6-8	basic
791	2022-06-05 12:38:14.009281+00	Emad Mahmoud	walaahassan1212@hotmail.com	+201060187640	sakr language school	6-8	basic
792	2022-06-05 14:01:18.145534+00	Ganna mostafa	ayaemad2572013@gmail.com	+201096653764	Alhasan institute	6-8	basic
793	2022-06-05 16:12:42.755454+00	شوقي احمد شوقي اسماعيل	samarahmedsalahelfeky@gmail.com	+201210555944	Glory	6-8	basic
794	2022-06-05 16:18:07.352627+00	احمد احمد شوقي اسماعيل	samarahmedsalahelfeky@gmail.com	+201210555944	Glory	6-8	basic
795	2022-06-05 16:31:22.70228+00	Aslam Osama	osama.hussein@hotmail.com	+201001053508	Al Khalil language school - 6 October	6-8	basic
796	2022-06-05 16:32:36.209801+00	Yousef Saleh	hdonsy@gmail.com	+201060989989	Middle school in US	6-8	basic
797	2022-06-05 16:36:20.818378+00	Youssef	hathour13@gmail.com	+201226729502	Ahmed fathy sror	6-8	basic
798	2022-06-05 19:30:40.987615+00	Yara Yaseen	yara.usama.yasin@gmail.com	+201095467226	Future langauage school	6-8	basic
799	2022-06-05 20:30:02.198505+00	Ahmed Khaled	ak5122031@gmail.com	+201221879993	El-Fayrouz Modern School	6-8	basic
800	2022-06-06 03:55:50.29727+00	Malik ahmed allam	noha.adel1985@gmail.com	+96569697182	TEA	6-8	basic
801	2022-06-06 10:44:05.348581+00	Youssif Ebrahim Hosny	marietgamel678@gmail.com	+201221116812	Language School	6-8	basic
802	2022-06-06 10:46:20.336655+00	Kareem Ebrahim Hosny	marietgamel678@gmail.com	+201221116812	Language School	6-8	basic
803	2022-06-06 14:54:27.101743+00	Hoda mohamad fawzy	hodafawzy27@gmail.com	+201008776091	Amar ibn yasser experimental school	6-8	basic
804	2022-06-06 16:10:51.835712+00	Hoda mohamd fawzy	hodafawzy27@gmail.com	+201008776091	Amar ibn yasser experimental school	6-8	basic
805	2022-06-07 00:14:55.955731+00	Ahmed Mohamed Ahmed khamis attia	rania_selim84@hotmail.com	+21008215806	Privilege school	6-8	basic
806	2022-06-07 00:17:34.174237+00	Ahmed Mohamed Ahmed khamis	rania_selim84@hotmail.com	+201008215806	Privilege school	6-8	basic
807	2022-06-07 10:01:05.496237+00	حمزه مصطفي سيد	abokhadega82@gmail.com	+201067733433	السادات	6-8	basic
808	2022-06-08 20:32:58.047034+00	Moaz Ali Hassan	ma423707@gmail.com	+201140284325	Modern school Heliopolis Languages	6-8	basic
809	2022-06-08 20:35:15.571666+00	Moaz Ali Hassan	ma423707@gmail.com	+201140284325	Modern School Heliopolis Languages	6-8	basic
810	2022-06-08 20:35:20.587035+00	Moaz Ali Hassan	ma423707@gmail.com	+201140284325	Modern School Heliopolis Languages	6-8	basic
811	2022-06-08 20:35:22.756068+00	Moaz Ali Hassan	ma423707@gmail.com	+201140284325	Modern School Heliopolis Languages	6-8	basic
812	2022-06-09 06:01:29.908188+00	فيلوباتير فايز سمير	fayezsamir0@gmail.com	+201223743155	Sahara school	6-8	basic
813	2022-06-09 06:49:29.359766+00	Yousef moustafa mohammed galal	archsarahmedhat@gmail.com	+201104495309	Ebrahim elrefa3i school	6-8	basic
814	2022-06-09 08:34:44.576792+00	Anas Mohamed Ibrahim	mohammed.ibrahemsalah@gmail.com	+201005139966	Qomia language school	6-8	basic
815	2022-06-09 11:32:38.170406+00	Hamza Hisham sayed	Hisham.sayed.ibrahim@gmail.com	+201009171705	Green heights	6-8	basic
816	2022-06-09 12:39:12.64536+00	زياد محمد حسن	bourai.mo85@gmail.com	+201221047357	الوحدة العربية الرسمية للغات	6-8	basic
817	2022-06-09 12:44:25.952335+00	Noor	hesham83@hotmail.com	+21000103070	Remas language school	6-8	basic
818	2022-06-09 13:33:04.613532+00	Yassin	hany.abdelbaki@yahoo.com	+201002160994	CPS	6-8	basic
819	2022-06-09 13:54:34.596507+00	Hashem amr	Omniahossam4@gmail.com	+201001239820	Alson azhari language school	6-8	basic
820	2022-06-09 14:06:55.60714+00	Tayem allah	maea733@hotmail.com	+201010833979	Saint Fatima school	6-8	basic
821	2022-06-09 14:30:45.915649+00	Mohamed wael	Mayadathabet1212@gmail.com	+201094464108	EJS	6-8	basic
822	2022-06-09 14:31:45.738527+00	سليم اسلام عادل صديق البخشونجي	eslsmadel61@gmail.com	0201094809122	الشهيد عمرو مسعد	6-8	basic
823	2022-06-09 15:38:55.252843+00	Zain	khaled27kh@yahoo.com	+201223603688	Pss	6-8	basic
824	2022-06-09 16:13:34.218003+00	Fares	basmafares66@gmail.com	+0201202552049	ابو الهول	6-8	basic
825	2022-06-09 16:51:02.194546+00	Maryam	hudaahmed222@yahoo.com	+201003736704	Gems	6-8	basic
826	2022-06-09 17:45:18.891494+00	عبد الله خالد ابراهيم	noora.body.2015@gmail.com	+0201126966333	السلام للغات	6-8	basic
827	2022-06-09 20:05:44.510477+00	Yassein Haytham	fatma.saleh2014@gmail.com	+201027969912	Royal language school	6-8	basic
828	2022-06-09 20:12:58.12974+00	Yasen Ahmed	ahmedyass@gmail.com	+201004706997	Taha hussien	6-8	basic
829	2022-06-09 20:16:54.609484+00	Adam	meldbakie@gmail.com	+201003406700	Modern	6-8	basic
830	2022-06-09 21:20:08.790475+00	Omar tamer	ahlamfathy619@gmail.com	+201158800004	Orman academy	6-8	basic
831	2022-06-09 23:04:41.66756+00	Taleen Mohamed Abdelwahab	naira.omar91@gmail.com	+201033292833	ALSON international school	6-8	basic
832	2022-06-10 05:51:27.007286+00	Omar Ahmed Mostafa	a.mostafaaa55@gmail.com	+201119202171	Anglo American	6-8	basic
833	2022-06-10 07:42:27.767092+00	Sama Mohamed	SaraSalah860@gmail.com	0201062124945	El marwa experiment school	6-8	basic
834	2022-06-10 08:18:33.419855+00	Omar mohamed abdelsamie	ragaamohamed.omar@gmail.com	+201012313073	Alhoda expermintal school	6-8	basic
835	2022-06-10 12:25:49.020611+00	Heba Nabil	emanmohmed1980@yahoo.com	+201145546169	Fiutre 7	6-8	basic
836	2022-06-10 12:44:24.360238+00	Yassien Mohammed	roshabeso4ever@gmail.com	+201020805576	Helma modern language school	6-8	basic
837	2022-06-10 15:11:31.405327+00	احمد بدويSeaf	bsaif648@gmail.com	+201029090677	Future	6-8	basic
838	2022-06-10 18:29:47.624867+00	Yassin refaat	inas.radwan@pua.edu.eg	+201287222990	House of English	6-8	basic
839	2022-06-10 20:57:51.208328+00	Ahmed shaaban	Shebo32@gmail.com	+201002000522	Valley language school	6-8	basic
840	2022-06-10 21:39:51.574781+00	Eyad	nehal.ellece@gmail.com	+201004312531	Modern school	6-8	basic
841	2022-06-10 22:39:24.599678+00	Noureen mahmoud	nourali14613@gmail.com	+201144930154	El Sadat	6-8	basic
842	2022-06-10 23:44:22.945089+00	Marwan Ayman Saleh	ayman_saeh@live.com	+201148570435	Shekh zayed	6-8	basic
843	2022-06-10 23:57:16.550772+00	Roqiya Ali Gamal	abeer.helmy.elkomi@gmail.com	+201122995866	El hosry	6-8	basic
844	2022-06-11 00:08:49.046323+00	Kareem Ahmed	marwa.essam.eldin5@gmail.com	+201111116692	Baby home	6-8	basic
845	2022-06-11 02:21:58.002434+00	Yassin	mero.feps9@gmail.com	+201129986619	Eis	6-8	basic
846	2022-06-11 02:25:06.506411+00	Anas moukhtar rashid	helmyghada992@gmail.com	+201014311005	Helmiat elzatoon	6-8	basic
847	2022-06-11 02:27:00.5234+00	محمد علي علي بدر	mly504157@gmail.com	+201064447206	Omar ebn elkatab	6-8	basic
848	2022-06-11 07:28:43.022855+00	Zain ayman	marwakseibi@hotmail.com	+201090918016	Manara language school	6-8	basic
849	2022-06-11 07:39:55.815214+00	Mohamed ekrami abdel hamid	ahmed.dina@africa-re.com	+201011102916	Concord international school	6-8	basic
850	2022-06-11 08:19:58.251608+00	Youssef amer	amer_amer@yahoo.com	+201224810085	El Eman	6-8	basic
851	2022-06-11 09:10:42.167159+00	Malak Mohamed Fawzy	mohamedfawzy2512@gmail.com	+201002555440	Stars	6-8	basic
852	2022-06-11 10:00:15.994628+00	ماهر احمد	Ahmad_ppp@hotmail.com	+201117270038	السادات التجريبى	6-8	basic
853	2022-06-11 11:08:11.649992+00	Maream mohamed khaled	mhdkhaled@live.com	+201001744295	ALKAMAL AZHARY SCHOOL	6-8	basic
854	2022-06-11 12:16:55.195462+00	جني مصطفي عبد العظيم	janjona917@gamil.com	+201062293722	السيدة عائشة الإعدادية الذكية بنات	6-8	basic
855	2022-06-11 13:29:29.982523+00	منى محمد	ms.twinkling.stars@gmail.com	+201152092521	اشرف القزاز	6-8	basic
856	2022-06-11 14:30:48.265653+00	Mohamed Hazem	doaa.ahmed78@gmail.com	+201002540280	Sama school	6-8	basic
857	2022-06-11 14:42:45.077327+00	Mohamed Alaa	mohammed.alaa0613@gmail.com	+201000537692	Nile Private School	6-8	basic
858	2022-06-11 14:43:49.438422+00	Ahmed Ramy Amin	ra.abotaleb@gmail.com	+201001288041	Jesuit	6-8	basic
859	2022-06-11 16:31:11.762871+00	مصطفي محمود	mahmoud__hassan@hotmail.com	+201127755566	جيل الحريه	6-8	basic
860	2022-06-11 18:04:58.902414+00	Hamza	hamzayasser700@gmail.com	+201094100884	Rajac	6-8	basic
861	2022-06-11 18:51:16.969416+00	Ibrahim	hagaryousif101@gmail.com	+201118097211	El orman school	6-8	basic
862	2022-06-11 20:17:17.064415+00	ريناد وخديجه ومحمد	eeman6729@gmail.com	+201225950546	الجيل الجديد الخاصه	6-8	basic
863	2022-06-11 20:40:25.793999+00	Ibrahim	hagaryousif101@gmail.com	+201118097211	El orman school	6-8	basic
864	2022-06-11 20:55:43.26275+00	Abdalla Ahmed	abdalla.spc@gmail.com	+201279100003	ies	6-8	basic
865	2022-06-11 22:05:18.26953+00	Joudy	nohamoubarak13@gmail.com	+21028128155	Nefertari international school	6-8	basic
866	2022-06-11 22:17:16.274815+00	نهى سلامة	noha.apa@gmail.com	+201116914417	EBIS	6-8	basic
867	2022-06-11 22:21:23.717842+00	Ramy Mohamed	r.elkafrawy@ansabeg.com	+21006526662	Nnn	6-8	basic
868	2022-06-11 22:31:56.291769+00	Adam	karimfayed150@gmail.com	+201097544736	Zoser	6-8	basic
869	2022-06-11 22:40:14.221291+00	ايهاب حنفي حنفي	ehabhanafy30121976@gmail.com	+201001122718	فرچينيا	6-8	basic
870	2022-06-11 22:58:03.369246+00	Ahmed Ekramy	ekramydiab789@gmail.com	+201068693853	المشير والحلمية	6-8	basic
871	2022-06-11 23:32:41.403024+00	Mohammed	Amanyelshafay@yahoo.com	+201093340168	Cis	6-8	basic
872	2022-06-11 23:34:30.481264+00	Malek Mohamed	eng_m_abdolaziz@hotmail.com	+21012407935	Manaret El farouk	6-8	basic
873	2022-06-11 23:42:43.989462+00	Adam mostafa	maiii.ramadan@gmail.com	+201019127227	Elnasr school	6-8	basic
874	2022-06-11 23:51:25.690574+00	AbdelRahman Wael Salah	wael.salah@msn.com	+201000006469	El Demerdash lang. School	6-8	basic
875	2022-06-12 03:37:04.519794+00	مالك	sdwla77@gmail.com	+201005554361	مدرسة الجمهوريه	6-8	basic
876	2022-06-12 05:33:19.606857+00	Ibrahim Ahmed El esawey	hagaryousif101@gmail.com	+201118097211	El orman school	6-8	basic
877	2022-06-12 07:13:33.65061+00	Ali maged	drmaged73@gmail.com	+21112081666	Al lwa	6-8	basic
878	2022-06-12 08:08:55.779552+00	Talia Ahmed El Fakahany	nouran.hussien1@gmail.com	+201068850090	The International School of Egypt	6-8	basic
879	2022-06-12 12:48:37.346386+00	Mostafa mahmoud Abou zaid	mostafamahmoud1234moud123@gmail.com	+201553871793	اكادميه مصر الدوليه للحاسبات	6-8	basic
880	2022-06-12 13:08:51.966172+00	Asser Haytham saad	Amany11711@gmail.com	+201211985531	Ivy	6-8	basic
881	2022-06-12 13:21:43.465513+00	Yassin	gammagroup_csi@yahoo.com	+201222424005	Kvs	6-8	basic
882	2022-06-12 13:57:20.966227+00	تسنيم عمر حسين محمد	shaimasayd27@gmil.com	+2201152393598	ازهرى خاص	6-8	basic
883	2022-06-12 16:02:08.205289+00	Youssif Khalifa	ahmedmaherkhalifa@gmail.com	+491706234669	Europaviertel	6-8	basic
884	2022-06-12 16:11:43.789641+00	راما	loopyy78@gmail.com	+201009811773	Eis school	6-8	basic
885	2022-06-12 16:38:30.526761+00	Yussra Ismail	yussra.i.mohamed@gmail.com	+201067111980	Ebis	6-8	basic
886	2022-06-12 17:50:10.334206+00	Habiba samer	asmaa.taher.faith.1@gmail.com	+201098429003	Eternity language school	6-8	basic
887	2022-06-12 18:36:55.900951+00	Selim bahr	drwalaaaaa123@yahoo.com	+201270334770	Els	6-8	basic
888	2022-06-12 20:02:18.849611+00	Daniel beshoy	Hgjhjj@yahoo.com	+201221376014	Nile egyptian school	6-8	basic
889	2022-06-12 22:53:13.132074+00	Adam safwat	doaakamal584@gmail.com	+201009869891	Manart maadi	6-8	basic
890	2022-06-13 01:54:25.279284+00	Abd El Rahman Ahmad Esmat	esameto@gmail.com	+201007014056	Talae3 El Azhar	6-8	basic
891	2022-06-13 03:11:39.748229+00	Aser amr mostafa	rehammohamed352212@gmail.com	+201159757970	New generation modern school	6-8	basic
892	2022-06-13 08:37:16.75134+00	Omar Ahmed Fathy	a.kholfa@yahoo.com	+21007060401	The Egyptian Language school (ELS) - New Cairo	6-8	basic
893	2022-06-13 12:52:29.616642+00	Omar Mostafa Ali	omarmostafakanzo2009@gmail.com	+2201147533575	Futures language school	6-8	basic
894	2022-06-14 00:06:03.948789+00	Youssef ahmed	noha00472@gmail.com	+201128999532	Mohamed eltaib	6-8	basic
895	2022-06-14 13:27:52.992467+00	Ritaj mouawad gouda	ayatmohammed210@gmail.com	+201096807806	Harvest international school	6-8	basic
896	2022-06-14 14:16:12.329705+00	Nagham walid	miro.224@hotmail.com	+201002614049	Green language school	6-8	basic
897	2022-06-14 15:16:15.316759+00	AHMED HUSSEIN	GM.HUSSEIN.Z@GMAIL.COM	+201020083008	ايهاب مرسي	6-8	basic
898	2022-06-14 15:48:00.183546+00	mina	dawod.youssef22@hotmail.com	+201017787201	manor house school	6-8	basic
899	2022-06-14 16:33:53.779644+00	أحمد	ahmedalbakry566@gmail.com	+201002656757	Salaheldeen school	6-8	basic
900	2022-06-14 16:39:34.366348+00	Omar mohamed fathi	rasha-memo@hotmail.com	+201006040601	GIS	6-8	basic
901	2022-06-14 16:47:41.834586+00	عبدالله رجب عبدالله	abdallaragab513@gmail.com	+201127230205	فاطمة الزهراء التجريبيه	6-8	basic
902	2022-06-14 18:41:58.146013+00	Mohamed Yasser Elshall	yasser.elshall@linktsp.com	+201009999172	Gaber Elansary	6-8	basic
903	2022-06-14 20:20:17.156577+00	Judy Ramy	ashahinaz@banquemisr.com	+201206166668	Hôtel	6-8	basic
904	2022-06-14 21:28:39.128763+00	بشار محمد العربي	doaaazab47@gmail.com	+201102997957	ELALYAA LANGUAGE SCHOOL	6-8	basic
905	2022-06-14 21:35:11.366131+00	Farida	nashwaelsayec1989@gmail.com	+201060164842	Elghad elmoshreq azhar language school.	6-8	basic
906	2022-06-14 21:54:48.121173+00	Omar	rasha-memo@hotmail.com	+201006040601	GES	6-8	basic
907	2022-06-14 22:09:05.293394+00	Farha	toma198890@gmail.com	+201092303842	Agouza Private	6-8	basic
908	2022-06-14 22:10:33.305858+00	Yazid sherif el ansary	dianaqamara88@gmail.com	+201009757399	El ahram modern school	6-8	basic
909	2022-06-14 22:29:43.593693+00	Moataz wafi	a01067010670@gmail.com	+2001067010670	Barani	6-8	basic
910	2022-06-14 22:36:44.107248+00	Eyad	momogygy487292@gmail.com	+201099973523	Emamali	6-8	basic
911	2022-06-14 22:40:06.789388+00	Hisham	dinahisham2009@gmail.com	+201001909764	Els	6-8	basic
912	2022-06-14 23:28:31.727411+00	Ayten Abd Essalam	zewe.amr@gmail.com	+201005209503	Lycée	6-8	basic
913	2022-06-15 05:34:53.722225+00	احمد خليل	chr@alsanidi.com.sa	+201005458852	Al safwa school	6-8	basic
914	2022-06-15 10:36:54.765972+00	Akml	mumsoha3@gmail.com	+201157313406	Salam	6-8	basic
915	2022-06-15 10:50:50.702569+00	Mohamed sayed	eshimaa532@gmail.com	+201096347882	Abas elakad	6-8	basic
916	2022-06-15 10:54:01.573605+00	Omar sayed	eshimaa532@gmail.com	+201096437882	Abas elakad	6-8	basic
917	2022-06-15 11:03:50.021222+00	Hala ahmed mohamed	ahmedkhalil277@gmail.com	+201023282843	Sphinx language school	6-8	basic
918	2022-06-15 16:22:17.545752+00	Mazen Ahmed shawky	nesreenalihassan@gmail.com	+201003499943	Gohar	6-8	basic
919	2022-06-15 17:28:38.610879+00	Mohamed Omar	omar.elzayte@gmail.com	+201200991799	Modern school	6-8	basic
920	2022-06-15 18:04:36.235052+00	fadl Ebrahim fadl	himafadl84fadl@gmail.com	+201124231458	almnara school	6-8	basic
921	2022-06-15 18:36:01.540719+00	Malek Mohamed	eng_m_abdolaziz@hotmail.com	+201012407935	Mnaret El farouk	6-8	basic
922	2022-06-15 20:23:43.676885+00	Rawda mohamed	kanzydarwesh@gmail.com	+212	Elhelal	6-8	basic
923	2022-06-15 21:27:06.569393+00	كريم Ahmed moustafa	kr010674801111@gmail.com	+201142426071	تجريبي	6-8	basic
924	2022-06-15 21:54:12.607674+00	Nada	ramy.khafagy84@gmail.com	+201001795012	Degla smart	6-8	basic
925	2022-06-15 23:20:04.236234+00	Iyad Mohamed	dedo.esso.as@gmail.com	+201005006761	Middle East international school	6-8	basic
926	2022-06-15 23:31:11.76951+00	Abdelrahman mohamed	zeinabanwar328@gmail.com	+201125819336	30يونيو	6-8	basic
927	2022-06-16 00:00:41.677754+00	Abdel Rahman elsayed adel	doaamahmoud.ubcis@gmail.com	+201010035376	Manor house language school	6-8	basic
928	2022-06-16 04:17:00.729234+00	Khadija	haithamelhaddad5@gmail.com	+21142773377	Helsinki	6-8	basic
929	2022-06-16 05:02:08.420993+00	KHADIJA HAITHAM	omar.haitham.elhdadd@gmail.com	+201101300054	Gis	6-8	basic
930	2022-06-16 06:09:54.010146+00	mazen ahmed	nesreen2683_eng@hotmail.com	994301003499943	gohar	6-8	basic
931	2022-06-16 09:18:30.166772+00	Mohamed abdelalime	zen.adel.fekry@gmail.com	+201146885687	السيدة خديجة	6-8	basic
932	2022-06-16 09:59:49.165631+00	KHADIJA HAITHAM	omar.haitham.elhdadd@gmail.com	+201101300054	Gis	6-8	basic
933	2022-06-16 11:54:55.965368+00	سهيله محمد	asmaasamir_1910@yahoo.com	+201096661779	Bedayia International School	6-8	basic
934	2022-06-16 14:12:22.337881+00	abdelrahman Ehab	Benk_bobo@yahoo.com	+201023266800	future rise	6-8	basic
935	2022-06-16 14:54:12.746354+00	Omar ahmed metwaly	yasminyousry098@gmail.com	+201153226495	El safa elathhary	6-8	basic
936	2022-06-16 19:12:18.273486+00	Mariam Abdelrahman	Hodanaguib21@gmail.com	+201014787087	Futureintegrated language school	6-8	basic
937	2022-06-16 19:19:36.041184+00	Omar ahmed metwaly	yasminyousry098@gmail.com	+201153226495	El safa elathhary	6-8	basic
938	2022-06-16 19:38:35.284544+00	Ahmed Sobhy	ahmedsobhy53@hotmail.com	+201001748016	Continental palace language school	6-8	basic
939	2022-06-16 19:40:39.835322+00	Mohamed	ahmedsalahgoooings@gmail.com	+201001211563	Sharm	6-8	basic
940	2022-06-16 20:31:18.377123+00	Yassin Mohamed abdel shafy ahmed shafik	a2s.healthcare2@gmail.com	+201004990049	Patriarcal college	6-8	basic
941	2022-06-16 20:36:55.968287+00	wael ameen	waelameen000@gmail.com	+201002076565	مدرسة حكومية	6-8	basic
942	2022-06-16 21:23:08.738061+00	Farida	mohamedeltabakh2@gmail.com	+201019481399	Santifatema	6-8	basic
943	2022-06-16 22:26:10.810625+00	Abd elrhman	dollymero10@yahoo.com	+201001961451	Modern school	6-8	basic
944	2022-06-16 22:55:08.353501+00	Yassin hany	nohasayed340@gmail.com	+201005465359	Summits international American school	6-8	basic
945	2022-06-16 23:33:23.524158+00	Mohamed youssef Elnahas	youssefelnahas95@gmail.com	+201000855050	Masters language school	6-8	basic
946	2022-06-17 00:36:54.149218+00	شهد خالد جمال	kshahd474@gmail.com	+201122628882	Abo baker	6-8	basic
947	2022-06-17 02:36:43.844494+00	مالك	dodowaleed_08@hotmail.com	+201115523107	EJS	6-8	basic
948	2022-06-17 05:35:34.760245+00	Amir	am01274403000@gmail.com	+201066610650	Manor House	6-8	basic
949	2022-06-17 08:29:05.742105+00	Yassien Hesham	rania.reda.salama@gmail.com	+201005671500	Alkarma language school	6-8	basic
950	2022-06-17 09:20:17.85735+00	Yassin Saad Zaghlol	yassin.sedra@outlook.com	+201011360570	Nefertari international school	6-8	basic
951	2022-06-17 11:39:17.285315+00	Ziyad haitham	asmaa.ashmawy.aa@gmail.com	+201006236362	طيبة للغات	6-8	basic
952	2022-06-17 12:13:26.515831+00	Robinraafat	mailo4ever@yahoo.com	+201280062886	La rosa	6-8	basic
953	2022-06-17 13:55:11.377889+00	Lorin nader fathy	naderf479@gmail.com	+201154924394	Eltahreir	6-8	basic
954	2022-06-17 15:55:41.50301+00	محمد حسن	mona.kunuz@gmail.com	+201062607308	Assuit	6-8	basic
955	2022-06-17 17:46:41.627039+00	ايهاب حنفي حنفي	ehabhanafy30121976@gmail.com	+201001291122	فيرجينيا	6-8	basic
956	2022-06-17 21:18:04.194931+00	Ahmed abdelsamed	nadaabdelsamad72@gmail.com	+201145284007	Pearls modern school	6-8	basic
957	2022-06-17 22:41:55.167404+00	Mohanad Mohab Mohammed	hebaelghandoor@gmail.com	+201553246423	Future	6-8	basic
958	2022-06-17 22:44:31.080557+00	tareq ziad	dodolink_100@yahoo.com	+201022356340	al khateeb	6-8	basic
959	2022-06-17 23:14:49.310173+00	Hamza Taha	hadkhater@hotmail.com	+201144444903	Green heights international school	6-8	basic
960	2022-06-18 00:06:19.795402+00	Mohamed ragy	shereen279@yahoo.com	+20201063003092	Fuatcher	6-8	basic
961	2022-06-18 00:08:50.183257+00	Mohamed ragy	shereen279@yahoo.com	+20201063003092	Fuatcher	6-8	basic
962	2022-06-18 00:46:31.304878+00	Sedra saad Zaghlol	yassin.sedra@outlook.com	+201011360570	Nefertari international school	6-8	basic
963	2022-06-18 02:54:37.493743+00	ياسين كامل محمد جلال	kamelgalal2020k@gmail.com	+201019199168	تجريبي	6-8	basic
964	2022-06-18 03:13:42.910805+00	Omar	esameldeen4116@hotmail.com	+21144954240	Orman	6-8	basic
965	2022-06-18 09:35:50.113762+00	Yunus moussa	yasminesadekyasso@yahoo.com	+201111105266	Hayah international academy	6-8	basic
966	2022-06-18 10:29:06.656135+00	Omar ali mohamed	samiamoheb812@gmail.com	+201006608835	The International School of Choueifat - Cairo	6-8	basic
967	2022-06-18 11:54:18.62912+00	Rawda tareq	marwa_azzam2005@yahoo.com	+201021000268	El waha language school	6-8	basic
968	2022-06-18 14:03:05.999035+00	yousef Mohamed Fathy	mohamedawad2477@gmail.com	009101221100091	Omar Ibn El Khattab Language School	6-8	basic
969	2022-06-18 14:46:10.617453+00	Hoor Ahmed	lamishosnyhoor@gmail.com	+201099015382	Tahia misr experimental school	6-8	basic
970	2022-06-18 15:37:55.832646+00	Zeyad Ahmed Abdallah	sara.alshaer88@gmail.com	+201012525572	Sun gate language school	6-8	basic
971	2022-06-18 16:54:51.524915+00	عبدالله انس محمد	malakk55567@gmail.com	+201129112928	مدرسة العبور النموذجي	6-8	basic
972	2022-06-18 17:36:35.488019+00	Hamza	ibrahim.m.abusaif@gmail.com	783801018417838	Victory	6-8	basic
973	2022-06-19 10:31:23.695995+00	تقي ايمن زينهم	darkb6167@gmail.com	+201060853442	بدر تايجرز	6-8	basic
974	2022-06-19 17:08:59.635316+00	Lian Amr	iqraa.team.egy@gmail.com	+201152203699	Braem Teba	6-8	basic
975	2022-06-20 11:38:53.104619+00	Omar Amin	mony_ago2006@hotmail.com	+21555115599	Capital gate	6-8	basic
976	2022-06-20 14:07:05.737812+00	Seif Haitham abdelmeged	heba_seif_yahia20@icloud.com	+201063939111	Master’s language school	6-8	basic
977	2022-06-20 14:10:32.984404+00	نورهان ونورين	hogo.gogo84@gmail.com	+201019328243	مودرن سكول	6-8	basic
978	2022-06-20 14:23:05.005309+00	Ahmed Mohamed Safwat	safwatrade74@gmail.com	+201553990018	Almanhal school	6-8	basic
979	2022-06-20 14:30:51.311567+00	Omar Mohamed Abdelrahman	omardinasor@gmail.com	+201020940722	City language school	6-8	basic
980	2022-06-20 15:09:39.466329+00	Omar ahmed metwally	yasminyousry098@gmail.com	+201153226495	الصفى الأزهرى	6-8	basic
981	2022-06-20 15:59:57.795109+00	Mohamed sameh	marwa.ali.kamel@gmail.com	+201116665981	Nes	6-8	basic
982	2022-06-20 16:03:20.674515+00	Mohamed sameh	marwa.ali.kamel@gmail.com	+201116665981	Nes	6-8	basic
983	2022-06-20 16:25:05.061316+00	Adam Morsy	nonoamr4@gmail.com	+201201439984	Badr language school	6-8	basic
984	2022-06-20 17:01:55.233744+00	abdelrhman ahmed	ahmedyoussef410410@gmail.com	+201021328564	alam eldeen languag	6-8	basic
985	2022-06-20 18:02:55.001406+00	youssef abdallah	elsalam2007@yahoo.com	+201003055050	capital	6-8	basic
986	2022-06-20 18:02:55.49889+00	youssef abdallah	elsalam2007@yahoo.com	+201003055050	capital	6-8	basic
987	2022-06-20 18:23:33.253974+00	Malik maged attia	maged.atia86@gmail.com	+201001850939	Future	6-8	basic
988	2022-06-20 18:33:37.477268+00	Eyad ahmed Abdelgawad	marwayahia06@gmail.com	+201122460536	Elforsan language school	6-8	basic
989	2022-06-20 19:12:48.113749+00	Ammar yasser	aya.magdy2312@gmail.com	+201202586999	Leaders	6-8	basic
990	2022-06-20 19:46:15.804562+00	Adam Morsy	nonoamr4@gmail.com	+201201439984	Badr language school	6-8	basic
991	2022-06-20 19:51:50.372446+00	Mazen	ahmedsamir27@ymail.com	+201002088991	مدرسه الالسن	6-8	basic
992	2022-06-20 20:28:54.478204+00	Khadija mohamed	omnia.elbaz@gmail.com	+201229600051	Falcon	6-8	basic
993	2022-06-20 20:39:19.880165+00	Yahia	wael.star96@gmail.com	+201062221765	Franco city	6-8	basic
994	2022-06-20 20:57:57.246452+00	Khadija	ingy.atef@gmail.com	+201005256098	Franco	6-8	basic
995	2022-06-20 20:57:57.308126+00	Khadija	ingy.atef@gmail.com	+201005256098	Franco	6-8	basic
996	2022-06-20 21:59:10.228504+00	Asser	tareq.a.abdeen@gmail.com	+201000663698	Magdy yaaqoub - future	6-8	basic
997	2022-06-20 22:07:48.974376+00	Omar Abdelaziz abdelhafez	aziz4002@hotmail.com	+201000004564	Albokary scholl	6-8	basic
998	2022-06-20 22:25:00.105848+00	Omar	eng.shady.sed@hotmail.com	+201098052986	El-retag	6-8	basic
999	2022-06-20 23:16:27.481506+00	Yahia mahmoud	amirasamir457@gmail.com	+201124411246	National  giza	6-8	basic
1000	2022-06-20 23:28:10.674861+00	Wagdy mohamed	soulla_86@hotmail.com	+201223345618	Future rise language school	6-8	basic
1001	2022-06-21 05:04:53.358372+00	Adam Mohamed	nouraezzeldin18@gmail.com	+201151313991	Queen International school	6-8	basic
1002	2022-06-21 07:42:17.762482+00	Mayven Osam	osamadvanced@gmail.com	+201224157339	Notre dame	6-8	basic
1003	2022-06-21 10:31:41.857299+00	Ammar Ali Zaher	ali.zaher2603@gmail.com	+201065686114	Patriarchal School	6-8	basic
1004	2022-06-21 10:46:00.512776+00	Justin beshoy	eldoc_ba_2011@yahoo.com	+201224229290	Creative national school	6-8	basic
1005	2022-06-21 11:07:11.33201+00	Hana mohamed	Dbahy15381@gmail.com	+201128662997	Masters  language  school	6-8	basic
1006	2022-06-21 11:51:54.969075+00	Abdelrahman Ayman	munnokamal77@gmail.com	+201144833803	Bedayia international school	6-8	basic
1007	2022-06-21 14:09:59.044536+00	ادم محمد	Mohamedelrawydodo@gmail.com	+201152034356	الصف الرابع	6-8	basic
1008	2022-06-21 15:52:51.369228+00	Badr Mohamed Nawar	nawar_design22@hotmail.com	111601222711116	Talaa	6-8	basic
1009	2022-06-21 16:14:27.608256+00	اسر محمد علي	nogi53@hotmail.com	0201001504290	مدارس القوميه  بالعجوزه	6-8	basic
1010	2022-06-21 18:32:17.498864+00	Ahdab dwedar	ahdab122@hotmail.com	+201000449944	eternity school of egypt	6-8	basic
1011	2022-06-21 19:51:54.039165+00	Abdelrahmen  Elgharbawi	emad.elgharbawi@live.com	+21015154096	Future	6-8	basic
1012	2022-06-21 22:01:35.852623+00	Mohamed Baitar	mero79.moh.jon@hotmail.com	+201210010060	Brilliance international school	6-8	basic
1013	2022-06-21 22:23:30.442806+00	Yusuf	aliamaref@gmail.com	+201001248118	Alson language	6-8	basic
1014	2022-06-22 05:49:02.527652+00	Hassan	ahmedadel8338@gmail.com	+201126600010	MLS	6-8	basic
1015	2022-06-22 09:11:25.24608+00	Zein Eldin Waleed Mohamed	zeanewaleed@gmail.com	+201220344680	Frère	6-8	basic
1016	2022-06-22 18:00:44.627524+00	Anoreen Zain Roshdy	zroshdy@yahoo.com	+201008813231	Ouroba language school	6-8	basic
1017	2022-06-22 21:09:20.676328+00	Farida Ahmed	nohaosman24@gmail.com	+201004100351	Modern education school	6-8	basic
1018	2022-06-22 23:35:31.385448+00	Fatma	moursyco25@gmail.com	+201003572314	Abu bakr	6-8	basic
1019	2022-06-23 00:17:43.199289+00	Nyrouz mohmoud el mohamdy	nyrouzamohamdy14@gmail.com	+201012414684	Abdallah refaai institute language	6-8	basic
1020	2022-06-23 01:39:34.073492+00	lojain nader	basma6306@gmail.com	+201000789718	green heights	6-8	basic
1021	2022-06-23 02:57:48.157436+00	Omar Ehab	aymanomar818@gmail.com	+201024780724	معهد قلما الازهري	6-8	basic
1022	2022-06-23 03:04:42.657464+00	Maya	Osama.samir010@gmail.com	+201001192526	Ibn elkhatab	6-8	basic
1023	2022-06-23 03:41:43.747605+00	Mohamed Amin Sabry	aminsabry80@gmail.com	+201111849444	Al Nasr language	6-8	basic
1024	2022-06-23 07:17:55.723794+00	Kamer mohamed	mohamedzenhom15@gmail.com	+201009569395	Refaa el tahtawy	6-8	basic
1025	2022-06-23 10:00:05.129121+00	Zaki Ahmed	shorouq.agha@gmail.com	+201011911702	Raf3	6-8	basic
1026	2022-06-23 10:42:07.991512+00	Youssef Ahmed ELgamal	naglaa_aladawy@live.com	+201003727135	Manaret Elfarouk	6-8	basic
1027	2022-06-23 11:45:32.095239+00	Pancee	reham3011@outlook.com	+201150919555	St. Peter language school	6-8	basic
1028	2022-06-23 13:00:51.629822+00	بسملة باسم سيد احمد	cabtera@gmail.com	+201552015404	هشام البزاوى	6-8	basic
1029	2022-06-23 18:01:19.331735+00	رباب النجار	rababelnaggar@gmail.com	+201001834380	OnHelioplis	6-8	basic
1030	2022-06-23 18:48:55.401862+00	Anas Essam abdel nabi	megafayoum@gmail.com	+201223470622	Degla valley language school	6-8	basic
1031	2022-06-23 22:32:04.146901+00	Malik	sherinibrahim84@gmail.com	+201009427049	Alfranh.school	6-8	basic
1032	2022-06-24 03:08:29.035669+00	Karim Samir Abd Elazeem	asmaasamir719@gmail.com	+201009353603	Ramy Mohamed Elgengehe futuer1	6-8	basic
1033	2022-06-24 05:30:48.060943+00	Asser Ayman	radwa.sayed@royalherbs.com	+201113383302	Eis	6-8	basic
1034	2022-06-24 06:32:07.006243+00	hanfy mahmoud	ma7moud.elnfd83@windoweslive.com	+201025555556	جيمس سكول	6-8	basic
1035	2022-06-24 06:37:40.232354+00	Nadin sherif	info@stepup-travel.com	+201223374392	Futuer el sherouk	6-8	basic
1036	2022-06-24 07:07:13.054651+00	Sunnah Mustafa	sara.a.elsayed85@gmail.com	+201062300195	Future Rise	6-8	basic
1037	2022-06-24 10:00:47.0945+00	Iryan ahmed	elmotamered@gmail.com	+201147408416	San joseph	6-8	basic
1038	2022-06-24 12:20:12.01279+00	Ammar Ayman Atef	aatef81@gmail.com	+201211955952	MSE2000	6-8	basic
1039	2022-06-24 14:00:55.848447+00	Adham Ayman	hamdy.ayman@live.com	+201004004002	MSE 2000	6-8	basic
1040	2022-06-24 20:28:34.807424+00	El kassem selim mohmmad	kokyrose123@gmail.com	+201010056457	Millenniumm school	6-8	basic
1041	2022-06-24 21:40:04.809575+00	Sofian islam	islam.elseuofy@gmail.com	+201065127733	Leaders international school	6-8	basic
1042	2022-06-24 22:08:58.792914+00	Karma khaled	khaledragaa@yahoo.com	+201007781111	Oasis international school	6-8	basic
1043	2022-06-24 22:23:23.51431+00	Sajed kareem	rehab_shams@hotmail.com	+201018566657	Ahknaton	6-8	basic
1044	2022-06-24 22:30:43.285644+00	رؤى حسين محمد علي	laylamohamad888@gmail.com	+201111778505	الخطيب التجريبية للغات	6-8	basic
1045	2022-06-24 23:01:23.139194+00	Amr Aassar	sherinkhalil70@gmail.com	+201001831554	Narmer American College	6-8	basic
1046	2022-06-24 23:19:14.234666+00	Rahma	yasssoooroomy@gmail.com	+201227808902	El Reiada2000	6-8	basic
1047	2022-06-25 00:53:26.701403+00	Fady Peter sobhy	mariangnaroz@yahoo.com	+201149962111	MILS	6-8	basic
1048	2022-06-25 00:53:36.762309+00	محمد ياسر	dr_taha_hanafy@hotmail.com	+21151573242	مدرسة جوهار	6-8	basic
1049	2022-06-25 00:55:46.981702+00	Fady Peter sobhy	mariangnaroz@yahoo.com	+201149962111	Mils	6-8	basic
1050	2022-06-25 04:55:33.535582+00	علي احمد علي	ahmedali1986891@gmail.com	+201205038695	معهد طه فتح الباب الازهري	6-8	basic
1051	2022-06-25 05:10:22.036333+00	Ahmed	wkhairy2@gmail.com	+201005165422	Jorg	6-8	basic
1052	2022-06-25 06:02:33.984801+00	Karim	maher.almallah@hotnail.com	+201203997996	Mes	6-8	basic
1053	2022-06-25 06:26:44.000511+00	Mohamed	oa840858@gmail.com	+201282434955	Alshrouk modern school	6-8	basic
1054	2022-06-25 09:05:53.312369+00	Yousef esam	elhwraa2008@gmail.com	+201069950793	Al safwa language schools	6-8	basic
1055	2022-06-25 09:19:06.287579+00	Youssef	safaa_mahmoud102@yahoo.com	+2106242704	Stars international schools	6-8	basic
1056	2022-06-25 11:21:19.733412+00	Yussif Alkadi	fatma.bahgat78@gmail.com	+201006363649	AlRahmania language School	6-8	basic
1057	2022-06-25 11:23:17.591834+00	Farida Mohamed	fraiyq743@gamil.com	+201099296632	Elsrag school	6-8	basic
1058	2022-06-25 11:34:11.896675+00	Ahmed Hassan	rashahalim92@gmail.com	+201155948472	الفاروق عمر الابتدائيه	6-8	basic
1059	2022-06-25 11:51:31.152166+00	Yahia Farouq	hanan_gandal@hotmail.com	+201282206308	New castle international school	6-8	basic
1060	2022-06-25 12:02:31.863519+00	يزن احمد مجدي احمد محمد	totayazn2015@yahoo.com	+21142050907	6 اكتوبر الرسميه للغات	6-8	basic
1061	2022-06-25 12:06:34.279898+00	Baraa	ayamahdy1722@gmail.com	+201007697838	مدرسة خاصة	6-8	basic
1062	2022-06-25 12:46:06.091287+00	Basma Mohamed	mDrbasmapharm2005@icloud.co	+201025573006	Mse	6-8	basic
1063	2022-06-25 14:37:41.503199+00	Shahira Elkhodary	sherry_berry_76@hotmail.com	+21144444011	Malvern college Egypt	6-8	basic
1064	2022-06-25 15:05:45.146794+00	Adham Mohamed	m.s.a.ice@gmail.com	+21283382823	x	6-8	basic
1065	2022-06-25 15:43:08.984466+00	مالك خالد	saraatta76@gmail.com	+201022445580	القاهرة التجريبية الرسمية	6-8	basic
1066	2022-06-25 16:27:19.123492+00	Aman Ghanem	wageed.ghanem@gmail.com	+201000810071	MHIS	6-8	basic
1067	2022-06-25 17:47:47.1297+00	Amir ibrahem	maream.zekry55@gmail.com	+201224348363	Stjs	6-8	basic
1068	2022-06-25 18:08:14.455893+00	براء محمود محمد	braamahmoud2013@gmail.com	+021124000611	الالسن. ازهري للغات	6-8	basic
1069	2022-06-25 18:57:03.837572+00	Kareem Mohamed Hussein Ibrahim	ph.heba25@gmail.com	+201033263621	pioneers	6-8	basic
1070	2022-06-25 19:19:35.756212+00	Ammar yasser	samira.aboelwafa@gmail.com	+201001951425	Nozha	6-8	basic
1071	2022-06-25 19:34:02.534846+00	Yahya harfoush	dalia.mohammed173@gmail.com	+201144177851	Cis	6-8	basic
1072	2022-06-25 20:13:30.039015+00	Emy ibrahem	maream.zekry55@gmail.com	+201224348363	Sjzs	6-8	basic
1073	2022-06-25 20:51:19.60557+00	Adham	engnermin1984@gmail.com	+201005816573	Ims	6-8	basic
1074	2022-06-25 20:56:01.191341+00	Yassin ahmed sherif	ahmedsherifelnemr@gmail.com	+201004066612	El Rowad	6-8	basic
1075	2022-06-25 21:27:12.266198+00	Marian mohamed galaleldin	galal_mohamed123@yahoo.com	+201000023345	Prap school	6-8	basic
1076	2022-06-26 01:42:45.148+00	Adam.Shady	shadyhadeya@gmail.com	+201116666605	Lycée Français	6-8	basic
1077	2022-06-26 01:53:18.497074+00	فارس محمود	m.stcegypt@gmail.com	+201022000050	الصديق الخاصه	6-8	basic
1078	2022-06-26 05:58:25.468088+00	Hannah	lobna.4487@gmail.com	+21111533319	Epic	6-8	basic
1079	2022-06-26 06:23:27.943145+00	Ammar	shaimaaosama1983@gmail.com	+21005741450	Jana Dan	6-8	basic
1080	2022-06-26 09:55:17.871244+00	Waad Medhat Talaat	medhat.talaat.1@gmail.com	+201001008219	Future generation	6-8	basic
1081	2022-06-26 12:56:20.187467+00	Adam	mohamed_ata86@hotmail.com	+201000239529	Manaret heliopolis	6-8	basic
1082	2022-06-26 13:09:12.241996+00	Asser haitham	dr_engyelsherif_85@yahoo.com	+201092000968	Knowledge valley international school	6-8	basic
1083	2022-06-26 14:33:45.451691+00	Omar	mgabersaad@outlook.com	+201098000209	Alhorreya international school	6-8	basic
1084	2022-06-26 16:21:46.413066+00	Shrouk	nsoliman363@gmail.com	+201021443398	Gehan	6-8	basic
1085	2022-06-26 19:47:08.911888+00	Omar salah khalil	mokhalil2022@gmail.com	+21158843434	Sun gate	6-8	basic
1086	2022-06-26 20:03:29.257449+00	Aly Essam Nour	essam.nour@gmail.com	+201020050989	NIS	6-8	basic
1087	2022-06-26 21:58:28.848084+00	Moaz Mohamed emad	mohamed.emad@value-eg.com	+201002999728	Bedaya international school	6-8	basic
1088	2022-06-27 04:43:26.988571+00	أحمد إيهاب محمد	ihab.goily@gmail.com	+201096553228	6th of October, qawmia language school	6-8	basic
1089	2022-06-27 05:07:06.634615+00	Shahira Elkhodary	sherry_berry_76@hotmail.com	+21144444011	Malvern	6-8	basic
1090	2022-06-27 08:50:04.970148+00	Ahmad Tokaishem	rihamfarid2017@gmail.com	+4407742015565	Holy Family school	6-8	basic
1091	2022-06-27 10:37:28.879479+00	Eyad Karim	dalia.hamza.jan88@gmail.com	+201124555529	El Waha	6-8	basic
1092	2022-06-27 13:55:54.799872+00	Ally Mohamed	ally.omar1927@gmail.com	+201145550770	Eais	6-8	basic
1093	2022-06-27 18:36:19.110624+00	Merola Mina	marlin_emile@yahoo.com	+971555758453	Wesgreen international school	6-8	basic
1094	2022-06-28 07:34:29.09555+00	Merola Mina	marlin_emile@yahoo.com	+971555758453	Wesgreen international school	6-8	basic
1095	2022-06-28 08:32:25.384068+00	Yourself Ahmed Ragaay	aragaay1984@gmail.com	+201271000882	El Ahram Modern	6-8	basic
1096	2022-06-30 18:30:41.369173+00	حمزه وليد محمد يوسف	reemhamzaomar@gmail.com	844401115478444	ستانفورد للغات	6-8	basic
1097	2022-07-01 12:49:57.797524+00	محمد محمود	mahmoudmamdoh146@yahoo.com	+201123633946	معهد البراجيل الابتدائى ازهرى	6-8	basic
1098	2022-07-01 14:16:09.15091+00	Amir	merozq@gmail.com	+201117990511	El mohamadia	6-8	basic
1099	2022-07-01 16:12:57.588369+00	Waleed Emad	waleed.emad@ortho-house.com	+201141555577	NIS	6-8	basic
1100	2022-07-01 16:37:47.770917+00	Asser islam	mmarwa.salah87@gmail.com	+201111123579	NIS national school	6-8	basic
1101	2022-07-01 18:59:36.763464+00	Moaaz	ma6077697@gmail.com	+201151418035	Albaragil	6-8	basic
1102	2022-07-01 20:42:17.123876+00	Moaz Mohamed	albshyhym@gmail.com	+201010920228	Kerdasa sacandry school	6-8	basic
1103	2022-07-01 23:01:48.224155+00	Ashraf	ashraf.alio@yahoo.com	+201150878718	Elroda school	6-8	basic
1104	2022-07-02 00:35:18.460231+00	Yamen mohamed nabil	mohamednabilabdalla@gmail.com	+201000603013	Tlaae alazhar elsharif	6-8	basic
1105	2022-07-02 01:07:44.757749+00	Omar hossam	daliawahed@yahoo.com	+201211192319	MIS	6-8	basic
1106	2022-07-02 01:13:34.859738+00	Rokaya Mohamed Sayed	mohamed.sayed@enppi.com	061101006430611	Roots	6-8	basic
1107	2022-07-02 03:52:58.062113+00	Diaa	Ayagamalakle@gmail.com	+201016600115	Dadr school	6-8	basic
1108	2022-07-02 06:37:11.260363+00	Sherif	hossamyousrypasha@gmail.com	+201006642143	NIS elsherouk	6-8	basic
1109	2022-07-02 07:02:02.528209+00	Yassin mohamed	crazygame2007@yahoo.com	+21227747701	Els	6-8	basic
1110	2022-07-02 09:44:06.046597+00	Nada Ahmed	roroahmed980@gmail.com	+201146430336	Elgiza	6-8	basic
1111	2022-07-02 10:18:04.416182+00	Seif akram	dina.ahmed1@seera.sa	+201111213512	Eldawaween	6-8	basic
1112	2022-07-02 11:19:32.715263+00	Aly	sallyhassanrady2007@gmail.com	+201021513749	Manhattan International School	6-8	basic
1113	2022-07-02 11:27:46.554496+00	Yassen Mohamed	mohamedabdalaa95@gmail.com	+201141566145	Elkother	6-8	basic
1114	2022-07-02 14:41:46.842077+00	عمر محمد عبد الرحمن	mona.khiry83@gmail.com	+201224021515	زهور الياسمين للغات	6-8	basic
1115	2022-07-02 17:37:43.915452+00	Malek Hany	hanymuhammedtorky@gmail.com	+201201333561	Cambridge Egypt integrated schools	6-8	basic
1116	2022-07-02 18:18:25.327969+00	Abdelrahman Amr Abdelmonam	nanamido46@gmail.com	+201009947115	AlRaya	6-8	basic
1117	2022-07-02 21:10:55.771112+00	Adam Hesham Ibrahim	h_ibrahim_maady@hotmail.com	+201006515172	New horizon	6-8	basic
1118	2022-07-02 23:04:34.678562+00	gody ali	dodyali.aa@gmail.com	+201119435203	Martyr Abdel Moneim Riad Experimental Official Language School	6-8	basic
1119	2022-07-02 23:47:09.227893+00	Mohamed Mostafa	samar.ghaith@yahoo.com	+201119000645	Ibnelnafees language school	6-8	basic
1120	2022-07-02 23:50:13.314056+00	Fares	izwhry@gmail.com	+201114741128	زهره المدائن	6-8	basic
1121	2022-07-03 01:26:10.66922+00	طه	omaebookeg@yahoo.com	+201202333615	Pcc	6-8	basic
1122	2022-07-03 01:37:42.489314+00	Fares	daliakhater81@gmail.com	+21001329081	Narmer modern school	6-8	basic
1123	2022-07-03 02:17:53.688599+00	Mostafa Shaker edries	drsherienmostafa@gmail.com	+201064271949	Gmal Abd elnaser	6-8	basic
1124	2022-07-03 05:23:48.966626+00	Noah Amr	olayoussef83@gmail.com	+201222422277	Beverly Hills German school	6-8	basic
1125	2022-07-03 08:21:29.825483+00	Sileem Tamer	omneya.sadek81@gmail.com	+201001634699	EAIS	6-8	basic
1126	2022-07-03 09:00:56.675649+00	Adam Ehab abosreea	adamehab16@gmail.com	+201222396002	Nozha Language School	6-8	basic
1127	2022-07-03 09:35:08.604946+00	Malek Mahmoud Abdelraouf	engmahmoudabdelraouf@gmail.com	227001114442270	Maadi Narmer school	6-8	basic
1128	2022-07-03 15:22:40.270454+00	Elyaman Sherif	sallyahmed.e.sh@gmail.com	+971565756643	Al Rabeeh	6-8	basic
1129	2022-07-04 10:11:46.160267+00	Sarah Mohamed	sarahmohamed0708@gmail.com	+201020356647	Continental school	6-8	basic
1130	2022-07-04 12:39:58.775921+00	Omar sherif	salim.shereen@gmail.com	+201200085595	Degla valley	6-8	basic
1131	2022-07-04 12:50:58.085521+00	youssef khaled	emanmahmoudkhakha@gmail.com	+201010700598	alalson language school	6-8	basic
1132	2022-07-04 14:11:28.102019+00	Yamen hisham	nohaalielgendy@gmail.com	+201066550149	Knowledge valley school	6-8	basic
1133	2022-07-04 14:50:59.872014+00	Mahmoud Mohamed Mahmoud	shafae.shoubra@gmail.com	+201288176722	Future Generation language School	6-8	basic
1134	2022-07-04 15:38:03.799689+00	Ziad Mohamed Ahmed	shimaalabibeltaweel@gmail.com	+201554537895	Elsafa private school	6-8	basic
1135	2022-07-04 17:59:09.515225+00	Renad Mohamed Abdelhalim	mohamedhalim.acc2016@gmail.com	+201063029749	Qasr Aldubara	6-8	basic
1136	2022-07-04 19:31:20.83686+00	Abdullah Haytham Ahmed Gamal	haytham186@gmail.com	+201128922922	Manaret Al Farouk language school	6-8	basic
1137	2022-07-04 20:23:19.638184+00	Marwan	ririr305@gmail.comr	+201011622843	عباس  العقاد	6-8	basic
1138	2022-07-04 20:49:06.225181+00	Omar Wagdy Mohamed	wagdy@goldenmetalalu.com	+201229939595	Amgad language school	6-8	basic
1139	2022-07-04 22:50:00.142375+00	Mayar Mohamed El-Balkemy	mohamed_helal961@yahoo.com	+201004770608	Campridge	6-8	basic
1140	2022-07-04 23:29:38.468194+00	Yousef Mohamed	elabsy1970@gmail.com	+201007260171	Sunrise language school	6-8	basic
1141	2022-07-04 23:35:35.718525+00	Noran Mostafa abdelazim	mostafaabdelzeem9@gmail.com	+201030240944	C.i.s	6-8	basic
1142	2022-07-05 01:07:33.666817+00	Dina El-hussein Ali	norasaid301@gmail.com	+201002979672	BSC	6-8	basic
1143	2022-07-05 02:54:06.461715+00	Youssef	Kareem.mohmed@koni-dev.com	+201000054165	El abtal	6-8	basic
1145	2022-07-05 08:37:59.241883+00	Karim Hossam-Eldin Sayed Ahmed	wessam.h.bassar@gmail.com	+201004780798	alhoda school	6-8	basic
1146	2022-07-05 09:35:04.846828+00	ادم	mohamed_r_habeb@cic-cairo.com	+201001223580	Orman E	6-8	basic
1147	2022-07-05 10:24:47.732569+00	Rawan sherif farouk fouad	rasha_ibrahem84@yahoo.com	+201094260000	Saint Clare’s	6-8	basic
1148	2022-07-05 10:36:39.887071+00	Hasnaa sabry ali elshenawy	hasnaaelshenawy2@gmail.com	+201550587843	Ips	6-8	basic
1149	2022-07-05 12:19:45.501481+00	Ammar Karim	karimalshazly@yahoo.com	+201001251510	New Heliopolis Modern School	6-8	basic
1150	2022-07-05 14:02:50.973662+00	Bdr Mohamed	wanasa25@yahoo.com	+201550081428	Jasmine	6-8	basic
1151	2022-07-05 15:10:35.229705+00	عبدالله	walidnor2015@gmail.com	+21112458488	السلام الابتدائيه	6-8	basic
1152	2022-07-05 16:44:12.754252+00	Zeina Hany eid	heba.mageed.a@gmail.com	+201111102871	Smart vision school	6-8	basic
1153	2022-07-05 18:11:30.259228+00	Ahmed Abdallah Saber	abdallahsaber431@gmail.com	+201011898455	Fatma el zahraa	6-8	basic
1154	2022-07-05 20:57:38.53274+00	Elinor	meemaelinor@gmail.com	+201220954264	Arminen catholic school	6-8	basic
1155	2022-07-05 22:34:32.785169+00	Malek mohamed farouk	nourhan.kadry597@yahoo.com	+201064586668	Smart	6-8	basic
1156	2022-07-06 11:13:54.609759+00	Mohamed Tamer Mohamed Tawfik	hmoataz2011@gmail.com	+201118498361	Sama language school	6-8	basic
1157	2022-07-06 18:58:06.055299+00	Lamis tamer rabia	lolo666666dodo@gmail.com	+201021138356	Elshahed.mahemoud	6-8	basic
1158	2022-07-06 23:58:04.698033+00	عبدالله قطب سليمان	reda.mo616@gmail.com	+201027339616	معهد حراء الدين الأزهرى	6-8	basic
1159	2022-07-07 04:14:34.582814+00	Mazen Hany saied Abass Nasr	wal_m_2001@yahoo.com	+201026166581	Elshaheed mohamed fawzy elhofy	6-8	basic
1160	2022-07-07 05:45:37.943086+00	Adam Mohammed Abd Elmonam	samahadam686@gmail.com	+201114611433	Dr.Amina Elsaied language school	6-8	basic
1161	2022-07-08 05:15:03.092718+00	'-- 1 = 1 or 1	cabtera@gmail.com	54040122548790	هشام البزاوى	6-8	basic
1162	2022-07-08 09:30:24.384225+00	Dina	dina_hassan002@hotmail.com	+201005067003	Akhnaton	6-8	basic
1163	2022-07-08 10:56:31.925893+00	سامح هدهود	samehhadhood@yahoo.com	+201002050696	الكرامة الرسمية لغات	6-8	basic
1164	2022-07-08 13:22:45.135843+00	Youssef	amr_elazab@hotmail.com	+201006006267	Sahara	6-8	basic
1165	2022-07-08 21:18:08.07415+00	Farida	nessrin.gamal@eni.com	+201111599888	Oasis	6-8	basic
1166	2022-07-09 11:17:01.809409+00	Ammar	hagarsamir2010@gmail.com	+201200730023	Cpis	6-8	basic
1167	2022-07-10 14:39:24.649137+00	Basmala	nouraali734@gmail.com	+201006622737	Amoon	6-8	basic
1168	2022-07-10 14:47:46.806268+00	Karim	ra.kamal222@gmail.com	+201006790096	ra.kamal222@gmail.com	6-8	basic
1169	2022-07-11 10:36:28.015222+00	shams ahmed hosni	m.ahosny86@gmail.com	+201015511122	future school	6-8	basic
1170	2022-07-12 01:17:13.847807+00	سليم نور ابراهيم محمود محمد	dmagdy35@gmail.com	+201119453943	السادات التجريبى	6-8	basic
1171	2022-07-12 05:45:19.097462+00	Mohammed	be.stetter@gmail.com	+201003025488	HelloAbo bakr	6-8	basic
1172	2022-07-12 06:41:12.190191+00	Yahia Saber Adly Shaker	saberadly@commerce.helwan.edu.eg	+201004914434	Newcastle international school	6-8	basic
1173	2022-07-12 08:25:54.876584+00	Hamza ali	thesharklooo5@gmail.com	+201097345464	Manara modern school	6-8	basic
1174	2022-07-12 08:38:52.019537+00	Karem akrm	akrmhafez65@hotmail.com	+201000066777	Green heights	6-8	basic
1175	2022-07-12 08:45:45.361344+00	Amina	waelthebeast@hotmail.com	+201068844165	Nozha language school	6-8	basic
1176	2022-07-12 12:15:21.234054+00	Roaa Sameh	samehelsisi2014@gmail.com	+201018113636	Gamal	6-8	basic
1177	2022-07-12 14:46:36.059188+00	Omar mohamed	mona.khiry83@gmail.com	+201224021515	زهور الياسمين للغات	6-8	basic
1178	2022-07-12 19:49:49.750598+00	Aser muhammed gamal	amaratfathi78@gmail.com	+201094965021	Nozha language school	6-8	basic
1179	2022-07-12 22:57:11.912835+00	Nada Sherif Mohamed	sherif425@gmail.com	+201008553314	Al Azhar Language	6-8	basic
1180	2022-07-12 23:33:11.96351+00	Aline akram	maryouna.mm@gmail.com	+201224053503	Sacré_coeur	6-8	basic
1181	2022-07-13 00:59:52.563111+00	مالك هانى عزت	wafaaalkashef@hotmail.com	+201114841835	Dar elhanan Language School	6-8	basic
1182	2022-07-13 03:07:41.879038+00	مايا عمرو احمد	amrvlaw@gmail.com	+201110748687	اسلام مشهور التجريبي المتميز	6-8	basic
1183	2022-07-13 07:43:34.99794+00	Omar sameh	samehzidan895@gmail.com	+201014041166	El retag language school	6-8	basic
1184	2022-07-13 08:08:30.766575+00	Yassin	dr.layaly.hafez@hotmail.com	+201005276878	English Academy	6-8	basic
1185	2022-07-13 08:10:30.715492+00	احمد خالد	Iheba9980@gmail.com	+201033731447	Royal House	6-8	basic
1186	2022-07-13 08:12:34.792998+00	abouzaied Shimàa	shimaa.abouzaid44@gmail.com	+201009036463	Child home	6-8	basic
1187	2022-07-13 08:16:56.182591+00	Yassin	dr.layaly.hafez@hotmail.com	+201005276878	English Academy	6-8	basic
1188	2022-07-13 08:47:35.029774+00	Adam Abdulla	ab.abdelhamed77@gmail.com	+201006009957	Rajac	6-8	basic
1189	2022-07-13 10:18:41.990071+00	Omar Ayman ahmed	lulu@aucegypt.edu	+21223250318	BCCIS	6-8	basic
1190	2022-07-13 12:41:41.251635+00	انس محمد	educatione@yahoo.com	96594983461	Ibn AlNaferd	6-8	basic
1191	2022-07-13 14:24:49.108243+00	Ali	Maro20_12@hotmail.com	+201062666986	King	6-8	basic
1192	2022-07-13 15:09:56.053625+00	Mohamed Reda Eid	engr.reda2022@gmail.com	+97466297848	Al Manar school	6-8	basic
1193	2022-07-13 17:47:52.056499+00	Marco Mina	eng_e.youssef@yahoo.com	+201227384886	Holly family school	6-8	basic
1194	2022-07-13 18:28:48.790115+00	Somaya	mohamed.elsheikh@gmail.com	822101148788221	Tajan	6-8	basic
1195	2022-07-13 20:10:29.972721+00	Sara Ehab	amiraelzanaty1214@gmail.com	+201110263264	El Salam	6-8	basic
1196	2022-07-13 21:03:33.801668+00	Adam Khalid	eng_h2741@yahoo.com	+201030797711	New Capital English School	6-8	basic
1197	2022-07-13 21:30:19.936139+00	كنزي علي	doaa.kamal011@gmail.com	+21012394306	Future school	6-8	basic
1198	2022-07-13 22:29:29.319451+00	shehab kamal	mx4host@gmail.com	+201011446331	Al amal school	6-8	basic
1199	2022-07-13 23:18:13.864726+00	Mohamed	www.ahmed_saifelnasr@yahoo.com	+201026077555	El sheruok	6-8	basic
1200	2022-07-13 23:46:20.47371+00	Mohamad HAMADA	wafaa.elgohary82@gmail.com	+201011966128	ElRadwan School	6-8	basic
1201	2022-07-14 00:23:23.177738+00	Marwa Hussien	dr_mero_h@yahoo.com	+2010	Kes	6-8	basic
1202	2022-07-14 00:24:30.117715+00	احمد علي	lymny4547@gmail.com	+201150335187	احمد علي معنى	6-8	basic
1203	2022-07-14 04:53:08.74714+00	احمد محمد سعيد	Mohamed.hateel.partner@wintershalldea.com	+201012553358	Geel 2000 language school	6-8	basic
1204	2022-07-14 04:58:46.125082+00	احمد محمد سعيد	Mohamed.hateel.partner@wintershalldea.com	+201012553358	Geel 2000 language school	6-8	basic
1205	2022-07-14 08:56:05.641684+00	Malik Ahmed Elkholy	Ahmed.elkholey@alhamdplsat.com	+20106868230	Pioner El sedeq	6-8	basic
1206	2022-07-14 10:56:44.089724+00	Shahd mohamed	mm9406082@gmail.com	+2001004415260	هشام شتا	6-8	basic
1207	2022-07-14 11:14:17.722799+00	Somaya	mohamed.elsheikh@gmail.com	+201148788221	Tajan	6-8	basic
1210	2022-07-14 12:47:29.673143+00	Mohamed Fahmy	mohamed.fahmy.gis@gmail.com	+21141085278	Victory colledge	6-8	basic
1211	2022-07-14 12:49:14.662531+00	Aya yousry	ayayousry21.ay@gmail.com	+201116649720	Bozor	6-8	basic
1212	2022-07-14 14:05:56.918318+00	Mohamed	howidayehia.hy@gmail.com	+201000862534	Wise	6-8	basic
1213	2022-07-14 16:11:12.781499+00	احمد حسن عبد الفتاح	hassanhassanhh696118@gmail.com	+20101017427666	احمد زويل الابتدائيه مدينه بدر القاهره	6-8	basic
1214	2022-07-14 20:09:57.101445+00	Eyad ahmed mamdouh	ahmed.elgamal5050@gmail.com	+201115077574	Zohour elyasmeen language school	6-8	basic
1215	2022-07-14 20:33:44.784407+00	Selim Younis	mayada_elkholy@hotmail.com	+201274445300	Manor house	6-8	basic
1216	2022-07-14 22:05:39.962638+00	Hamza ismail kilanyv	noorismail1412@gmail.com	+201004445769	Alesraa language school	6-8	basic
1217	2022-07-14 22:11:33.408513+00	Rahaf osama	walaaatif222@gmail.com	+201224246222	Tajan	6-8	basic
1218	2022-07-14 22:12:30.593075+00	Joudy	montyelbeih@gmail.com	00201002944325	Roots school	6-8	basic
1219	2022-07-14 22:20:06.392821+00	Malek	saraatta76@gmail.com	+21278177447	Cairo school	6-8	basic
1220	2022-07-14 23:32:13.124199+00	Hesham Bahr	hesham.elbahr@gmail.com	+201068977599	October	6-8	basic
1221	2022-07-15 00:06:37.901983+00	Nada mostafa	hadeerattia828@gmail.com	+201276749702	Stanford	6-8	basic
1222	2022-07-15 01:16:52.794013+00	Anas	egipcio001@gmail.com	+21145479725	IPS school	6-8	basic
1223	2022-07-15 03:40:22.967072+00	Farida	asmaaomaromar1@gmail.com	+21006757171	Spatiss	6-8	basic
1224	2022-07-15 05:29:30.929549+00	كنزي كاظم	marwa.abowardah2020@gmail.com	+201097770515	الليسيه	6-8	basic
1225	2022-07-15 08:32:12.819079+00	Waad	hamadashahin52@gmail.com	+201222586029	الشيماء الاعداديه بنات	6-8	basic
1226	2022-07-15 09:45:33.258323+00	Nada Ahmed Alnaamani	alnaamani.ahmed@icloud.com	+201099897616	Ibn masoud	6-8	basic
1227	2022-07-15 10:44:50.571881+00	Ahmed Sameh Kamel	ruaa.abdellatif@gmail.com	+201021986962	25 January language school	6-8	basic
1228	2022-07-15 11:47:21.793379+00	Ibrahim ali alsheikh	alsheikhamr44@gmail.com	+201030266820	Future school	6-8	basic
1229	2022-07-15 13:45:43.95283+00	Jana Mohamed	mohj1212@gmail.com	+201050307855	Endeavors school	6-8	basic
1230	2022-07-15 14:34:05.139764+00	Saad	mohamedsaadfares@gmail.com	+201222342277	Nis	6-8	basic
1231	2022-07-15 18:50:10.779842+00	Abdelrazeq adly abdelrazeq	abdalrzekadly@gmail.com	+201143827030	Sayed elshohda school	6-8	basic
1232	2022-07-15 18:57:26.820209+00	Ammar Akram	Rania.oqaibi@hotmail.com	+201066737467	FUTURE BRITISH SCHOOL	6-8	basic
1233	2022-07-15 21:15:20.752678+00	Nour Al-sayed Sileem	noursaid690@gmail.com	+201152233422	Al Waha lang. Sch	6-8	basic
1234	2022-07-16 00:45:06.601547+00	Yassin shaker	sarayassin28@gmail.com	+201019943724	Mosheafa	6-8	basic
1235	2022-07-16 09:15:06.2375+00	Marwan ehab Mohamed hagag	ehabhgg77@gmail.com	+201002227689	Elfath school	6-8	basic
1236	2022-07-16 09:25:05.589885+00	Salma Ahmed	salmaahmedyoussef22@gmail.com	+2001060149093	MPS	6-8	basic
1237	2022-07-16 10:09:05.045257+00	Mazen Mahmoud abdelshafea	mahmodabdelshafea@gmail.com	+201068686812	Samir gohar	6-8	basic
1238	2022-07-16 11:26:57.924211+00	Abdullah Mostafa Ibrahim	mostafa_0111@hotmail.com	+201010506731	Othman Ibn Afan	6-8	basic
1239	2022-07-16 14:09:45.430784+00	Maryam	osamadodani11@gmail.com	+201068770089	Al Azhar alsharif	6-8	basic
1240	2022-07-16 15:36:08.284647+00	احمد سيد	eman.abdullah.mattar@gmail.com	+201204419035	Master's language school	6-8	basic
1241	2022-07-16 16:18:25.853176+00	احمد خالد	bedormostafa929@gmai.com	+201206731735	المنيل القوميه لغات	6-8	basic
1242	2022-07-16 16:45:22.618403+00	Ali ahmed ashour	khaled.ashour26@yahoo.com	+201111150364	Futures britsh school	6-8	basic
1243	2022-07-16 17:59:42.075879+00	nour sayed	noursaid690@gmail.com	+201152233422	Al waha lang. School	6-8	basic
1244	2022-07-16 20:48:14.490018+00	Malak Fouad	nice-flower-99@hotmail.com	+201223741232	St Joseph	6-8	basic
1245	2022-07-16 21:38:27.296372+00	عبدالرحمن محمد السيد	nourhanalaa203@gmail.com	+201012214877	الشاورما كولدج	6-8	basic
1246	2022-07-16 22:30:49.447235+00	Arwa Mohammed Awad	engmohamed1910@gmail.com	+201009105405	Hadek el maadi	6-8	basic
1247	2022-07-16 22:31:03.185802+00	Adam mohamed	dr.asmaa_86@hotmail.com	+201009563917	New Egyptian language school	6-8	basic
1248	2022-07-16 23:05:33.884225+00	Hana Eslam	eng_eslamsalah2010@yahoo.com	+201153844090	-	6-8	basic
1249	2022-07-16 23:30:51.171456+00	Sama mohamed	raniaai@live.com	+21114379179	EBIS	6-8	basic
1250	2022-07-17 01:35:04.992654+00	Yousif	nashwa.elshahat@gmail.com	+201002567372	Modern school	6-8	basic
1251	2022-07-17 01:35:05.19678+00	Yousif	nashwa.elshahat@gmail.com	+201002567372	Modern school	6-8	basic
1252	2022-07-17 02:25:11.208002+00	Talia Mohamed Abdelmoneim	gofycartoon@gmail.com	+201558855755	Pyramids language school	6-8	basic
1253	2022-07-17 05:58:58.162632+00	Youssef Hani	hani.naiem@hotmail.com	+201229944952	Sainte Famille	6-8	basic
1254	2022-07-17 09:25:19.394167+00	Kareem Eslam	mona90c@gmail.com	+201093777530	OLS	6-8	basic
1255	2022-07-17 12:18:13.000397+00	Hana hossam	doaaelzehary@gmail.com	+201062742426	المنيب إعدادية بنات	6-8	basic
1256	2022-07-17 12:21:37.091215+00	Abdelrahman Hisham	Hebagneedy1234@gmail.com	782601228127826	Alwaha international school	6-8	basic
1257	2022-07-17 15:19:11.378832+00	Moez mostafa Ahmed	sasa_azy@yahoo.com	+201003029262	Smart vision	6-8	basic
1258	2022-07-17 15:42:55.260077+00	Omar Yasser	omartaim2611@gmail.com	+2001126881797	Elradwa modern school	6-8	basic
1259	2022-07-17 15:44:10.583898+00	Judi ahmed	dopharmasu@gmail.com	+20201033982124	Bms	6-8	basic
1260	2022-07-17 15:48:00.088481+00	Fatima	mido970@gmail.com	+2001122155453	Alrowia alafregia	6-8	basic
1261	2022-07-17 16:28:18.484963+00	. يس خالد يس	emo11381@hotmail.com	+201001770077	ابو زهرا الثانوي	6-8	basic
1262	2022-07-17 19:15:36.590365+00	Adham Nour	adhamnour2009@gmail.com	+201000075318	Ali ebn abi talb	6-8	basic
1263	2022-07-17 19:39:02.017506+00	Omar Yasser	omartaim2611@gmail.com	+2001126881797	Elradwa modern school	6-8	basic
1264	2022-07-17 19:42:15.24842+00	Omar amr Ibrahim	omaramroibrahim@gmail.com	+2001004266909	El Roward language school	6-8	basic
1265	2022-07-17 19:51:29.511869+00	Taym Hassan	aya.adel.hamed@gmail.com	+201006934500	SOLS	6-8	basic
1266	2022-07-17 20:11:49.03109+00	Moaaz Ahmed naguib	moaaz.ahmed1984@gmail.com	+201115233390	مدرسة الشيخ زايد التجريبية	6-8	basic
1267	2022-07-17 23:17:43.524118+00	ادهم محمد سعد	mastery_girl1986@hotmail.com	+201008002782	Geel 2000 language school	6-8	basic
1268	2022-07-17 23:39:39.301908+00	Seif Mohamed elsherbiny	lelemido246@gmail.com	+201157752372	The future	6-8	basic
1269	2022-07-18 01:31:48.209586+00	Fares Mohamed Ibrahim	melgunedy@gmail.com	+201062154536	El Khalil school	6-8	basic
1270	2022-07-18 03:08:31.542401+00	Zeyad Mohammed Abdelmoniem	acc.mabdelmoniem@gmail.com	+21210400019	Elnill	6-8	basic
1271	2022-07-18 08:21:53.781452+00	Shahd wail	aliaabass285@gmail.com	+201128614422	Elmanar school	6-8	basic
1272	2022-07-18 08:46:36.349478+00	Hana Mohamed	radwazakarya57@gmail.com	363201113636322	Al-Resala	6-8	basic
1273	2022-07-18 12:13:06.841141+00	Youssef	samerkamal237@yahoo.com	+201225670013	Omar	6-8	basic
1274	2022-07-18 18:22:52.876368+00	Anas Atef	vet.hendhassan@gmail.com	+21008578795	Badr tigers langauge school	6-8	basic
1275	2022-07-18 19:25:31.162601+00	Eyad Atef	vet.hendhasan@gmail.com	+21008578795	Basr tigers	6-8	basic
1276	2022-07-18 20:07:32.146158+00	Hamza Mohamed	Omniakamel2018@gmail.com	+201016051949	Modern school	6-8	basic
1277	2022-07-18 20:22:30.163321+00	Ahmed ElMosalamy	dody4.4.2004@gmail.com	+201113004796	Canadian school	6-8	basic
1278	2022-07-18 20:31:43.733518+00	محمد معروف حسني	olaalimohamedmohamed@gmail.com	+201009606084	Brilliant mind school	6-8	basic
1279	2022-07-18 20:32:59.731807+00	مالك معروف حسني	olaalimohamedmohamed@gmail.com	+20109606084	Brilliant mind school	6-8	basic
1280	2022-07-18 21:29:17.579644+00	زياد أحمد عبدالعظيم	dr.rasha.sayed@hotmail.com	+201069011160	BMS	6-8	basic
1281	2022-07-18 21:31:50.961971+00	أنس أحمد عبدالعظيم	dr.rasha.sayed@hotmail.com	+201069011160	BMS	6-8	basic
1282	2022-07-18 21:51:11.670123+00	Shehab Ahmed	drghadaelmaraghy@gmail.com	+201005785963	MES	6-8	basic
1283	2022-07-18 23:52:02.665131+00	Anas Ahmed Fouad	noha.fakhreldin@gmail.com	+201003866535	Baraeem	6-8	basic
1284	2022-07-19 06:21:09.437517+00	Arsany	maryatef734@gmail.com	+201550705838	Al-Abidiyah - Languages	6-8	basic
1285	2022-07-19 06:23:47.825012+00	Arsany Boles	maryatef734@gmail.com	+201550705837	Al-Abidiyah - Languages	6-8	basic
1286	2022-07-19 07:13:20.576569+00	Ibrahim Mohamed Badr	mo_badr2222@hotmail.com	+201065509228	Rajac American School	6-8	basic
1287	2022-07-19 07:25:05.820257+00	Selim haytham	heba.elshenawy21@gmail.com	+201090006028	Green heights international school	6-8	basic
1288	2022-07-19 09:21:12.593743+00	يوسف ميلاد	esterzakikamel1983@gmail.com	+201270362528	shoubra language	6-8	basic
1289	2022-07-19 10:20:32.714569+00	Maged	drrzoo@hotmail.com	+201006177535	Newcastle International School	6-8	basic
1290	2022-07-19 17:24:56.70136+00	Farida Mohamed Waheed	maramellow@gmail.com	+201006359191	ElS school	6-8	basic
1291	2022-07-19 17:49:48.614016+00	Mariam hani	samahazima99@gmail.com	971509377839	Providence English school	6-8	basic
1292	2022-07-19 23:01:50.90747+00	مالك احمد محمود	kheba987@gmail.com	+201142413443	معهد منارة الحسن الخليل	6-8	basic
1293	2022-07-20 00:52:17.867074+00	Ingy ATEF	ingy.atef@gmail.com	+21005256098	Franco city	6-8	basic
1294	2022-07-20 08:57:20.30273+00	مالك امير سمير	aas3547890@gmail.com	+201117209781	وادى النيل الخاصه	6-8	basic
1295	2022-07-20 19:11:08.272054+00	Abd el rahman mohamed	w.ezzat2020@gmail.com	+20127037010	Tajan	6-8	basic
1296	2022-07-21 01:03:17.552407+00	سما احمد محمود	kheba987@gmail.con	+201142413443	معهد منارة الحسن الخليل	6-8	basic
1297	2022-07-21 04:00:19.143824+00	Maged Ahmed	drrzoo@hotmail.com	+201006177533	Newcastle	6-8	basic
1298	2022-07-21 05:53:49.624126+00	Omar ahmad	monaali33511@gamil.com	+201205995996	Ramses languages	6-8	basic
1299	2022-07-21 07:59:11.802355+00	Younes	nohaelsaftawy@gmail.com	+201033360526	IBA	6-8	basic
1300	2022-07-21 09:03:35.508121+00	Obaie Mohamed Samir	obbaimohamedsamir@gmail.com	+201097783785	Egypt School	6-8	basic
1301	2022-07-21 23:26:33.088429+00	Ziad amr hafez	nesreenassem@gmail.com	+201063929986	Continental Palace School	6-8	basic
1302	2022-07-22 15:56:17.947379+00	Adam Ibrahim	elasherysalma@gmail.com	+201203359592	Thebes	6-8	basic
1303	2022-07-22 16:43:57.53647+00	Adm Tamer	mona.eraky@gmail.com	+201000302212	Ahmed Elmansy	6-8	basic
1304	2022-07-22 16:48:56.150246+00	عبدالله يحيى محمد احمد	hems2022@gmail.com	0201143476933	Khalifa	6-8	basic
1305	2022-07-22 18:00:38.865831+00	Samy	nagynagwa80@gmail.com	+201212510533	Karama	6-8	basic
1306	2022-07-22 18:47:44.498825+00	moaz waleed mohamed elsaied mohamed	01206915601waleed@gmail.com	534701120365347	braem eleman school	6-8	basic
1307	2022-07-22 19:57:49.521648+00	Youssef ahmed	princessdoctorstrawberry.dz@gmail.com	+201014555110	Masr eldawlya el mearag	6-8	basic
1308	2022-07-22 23:13:34.809083+00	Malek Elewa Ibrahim	Hr@misrcontraco.com	+201068811803	Shoubra Alkawmia Language School	6-8	basic
1309	2022-07-22 23:38:16.531831+00	Ahmed sameh	marwa.ali220@hotmail.com	+201112263068	Els	6-8	basic
1310	2022-07-23 02:17:38.284522+00	Youssef ahmed awad	yoyosmsm687@gmail.com	+201201249200	Paradise Language School	6-8	basic
1311	2022-07-23 07:37:11.098229+00	Omar	Fatimaaboshady78@yahoo.com	+201143117481	Oruba	6-8	basic
1312	2022-07-23 07:59:43.181568+00	Elsaeed mohamad	moh_elsh130@yahoo.com	+20110777745	مصطفي المشرفه	6-8	basic
1313	2022-07-23 08:19:21.458708+00	يحيي	Hendrashaddeeb@gmail.com	+201006292678	مدرسه الجولف للغات بالعبور	6-8	basic
1314	2022-07-23 11:42:37.512925+00	Youssef yasser	yasserbadwe@gmail.com	+201096646277	Egypt	6-8	basic
1315	2022-07-23 14:57:57.076213+00	Adam Elam Mahmoud	gegeabdalaziz@gmail.com	+201016296304	Shady Alaa alasy	6-8	basic
1316	2022-07-23 14:57:57.107883+00	Adam Elam Mahmoud	gegeabdalaziz@gmail.com	+201016296304	Shady Alaa alasy	6-8	basic
1317	2022-07-23 23:33:33.005052+00	ادم هاني محمد	hanansayyahhany@gmail.com	+201008144745	سانت فاتيما	6-8	basic
1318	2022-07-24 02:52:34.64361+00	ABD Elrahman hesham	shokry.hesham@gmail.com	+201019531836	Tajan	6-8	basic
1319	2022-07-24 17:41:12.973532+00	Soraya Hosny	thoraya_ahmad@yahoo.com	+21000141520	EBIS	6-8	basic
1320	2022-07-24 20:55:37.260371+00	Arwa Mahmoud	abeergweely@yahoo.com	+201098853252	Future	6-8	basic
1321	2022-07-25 00:43:12.004426+00	omar	samaelden@hotmail.com	0201104178851	سيده خديجه لغات	6-8	basic
1322	2022-07-25 00:53:28.220508+00	Sofian Elseuofy	islam.elseuofy@gmail.com	+201065127733	Rawasy international school	6-8	basic
1323	2022-07-25 01:33:58.095803+00	Mohamed abdulwahid	abdu22667@gmail.com	+201024649489	ابو الهول القوميه	6-8	basic
1324	2022-07-25 03:53:15.927969+00	فريده امير جابر عبدالسلام عبده	amir_begin@yahoo.com	+201014489763	El manara	6-8	basic
1325	2022-07-25 05:15:16.57678+00	Mohamed Abdelfatah yonis	abdelfatahyoniss@gmaile.com	٠٢٠01005582306	مدرسة الشريف الخاصة	6-8	basic
1326	2022-07-25 07:15:23.281442+00	Moadhbaher	islamgirl_1989@yahoo.com	+201065128191	Thebes	6-8	basic
1327	2022-07-25 09:31:40.897139+00	Abdalh Nasser Moamen	naserlab76@yahoo.com	+201009641633	Fadel school	6-8	basic
1328	2022-07-25 12:28:33.813144+00	Rawan sherif farouk fouad	rasha_ibrahem84@yahoo.com	+201094260000	Saint Clare’s	6-8	basic
1329	2022-07-26 06:40:24.956367+00	Yassin Ayman	meroooooaly@gmail.com	+201007911778	IPS	6-8	basic
1330	2022-07-26 09:38:16.279661+00	Yassin	Eng.ahfikry@gmail.com	+201001883770	Future	6-8	basic
1331	2022-07-26 20:59:26.291919+00	yossef tahoon	yosseftahoon90@gmail.com	+201012995412	msi	6-8	basic
1332	2022-07-26 21:02:13.231161+00	yossef tahoon	yosseftahoon90@gmail.com	+201012995412	msi	6-8	basic
1333	2022-07-26 21:54:28.947477+00	Abdallah	alyaa45abdelwahed@gmail.com	+201129826511	Elglaa language	6-8	basic
1334	2022-07-28 02:16:16.103271+00	Mohamed Ahmed	engazservices.esc@gmail.com	+201005590199	the future	6-8	basic
1335	2022-07-29 07:07:10.858615+00	Tarek	Mohamed.t85@gmail.com	+201110044443	Sis	6-8	basic
1336	2022-07-29 08:28:48.156385+00	Shoruk mohamad abd elwanis	shahd7awash5349@gmail.com	+201110192161	Al shahid samir gohar	6-8	basic
1337	2022-07-29 08:28:58.191586+00	Adm samy	mohammed.samy.civil@gmail.com	+201000254041	kuliyat alsalam	6-8	basic
1338	2022-07-29 09:17:50.95985+00	Sulaiman	edc19@hotmail.com	+201001763035	Windrose	6-8	basic
1339	2022-07-29 09:57:05.164297+00	Ahmed Allam	nohagaf@gmail.com	+201032163563	Sheka fatma bent mobarak	6-8	basic
1340	2022-07-29 11:50:28.278486+00	ABDELRAHMAN	Monabayomi_hr_2002@yahoo.com	+201224010100	El Nozha language school	6-8	basic
1341	2022-07-29 20:26:43.150664+00	Eyad Ashraf Abdelghafar	ashrafabdelghafar2021@gmail.com	+201009052342	Alsedique language school	6-8	basic
1342	2022-07-30 02:07:32.414554+00	مالك محمد سيد	mohamed_gode85@gmail.com	+21142210688	الشهيد احمد حمدي التجريبي	6-8	basic
1344	2022-07-30 06:04:53.65371+00	Laila Mohamed	mohamed.magdy.farag@gmail.com	+97470959519	Privelege	6-8	basic
1345	2022-07-30 11:19:35.043274+00	Nadeen Osama	mawra.eldeeb123g@gmail.com	+201098817063	October's Gardens languge school	6-8	basic
1346	2022-07-30 13:05:21.64103+00	يوسف مصطفي	mostafaswats13@gmail.com	+201114723028	ips	6-8	basic
1347	2022-07-30 16:08:35.112907+00	Soraya Hosny	thoraya_ahmad@yahoo.com	+21000141520	EBIS	6-8	basic
1348	2022-07-30 16:23:36.372405+00	Jana	mohj1212@gmail.com	+201050307855	pioneer	6-8	basic
1349	2022-07-30 16:43:31.408668+00	omar mohamed	teleb_hady@yahoo.com	+201000045909	egyptian school	6-8	basic
1350	2022-07-30 23:48:28.693463+00	Ahmed Ehab Ahmed	barbiiehab@gmail.com	+201011939182	Dar Alouloum alhaditha	6-8	basic
1351	2022-08-02 07:39:07.562859+00	Omar Ehab Mahmoud	maha.shehata@outlook.com	+21280431509	Lycee Elharam language school	6-8	basic
1353	2022-08-04 00:58:11.797156+00	Eyad Haytham Ashraf Tahoun	haythamtahoun@gmail.com	+21026606760	.	6-8	basic
1354	2022-08-04 10:20:43.188711+00	Nour eldin Ahmed Elsaeed	nourwarahma@gmail.com	+201032967571	Nozha language school	6-8	basic
1355	2022-08-04 22:51:33.996981+00	مروان	noraahmed251089@gmail.com	+201010049852	نيوجنريش مودرن	6-8	basic
1359	2022-08-04 23:15:12.373588+00	بيشوي بخيت	Kokytharwat1988@gmail.com	+201018180123	Sunrise International school	6-8	basic
1360	2022-08-05 06:55:57.929944+00	Marim abd elAziz	basma.hassaan19@gmail.com	+201003204841	Sant Fatima	6-8	basic
1361	2022-08-05 06:58:18.989186+00	Marim abd elAziz	basma.hassaan19@gmail.com	+201003204841	Sant Fatima	6-8	basic
1362	2022-08-05 07:04:46.277842+00	Menna Mahmoud	eng_mah_83@yahoo.com	+201151038332	Jis	6-8	basic
1363	2022-08-05 07:20:11.237083+00	Waad	asker.fed@gmail.com	+201097656270	3ahd eĺ-slam	6-8	basic
1364	2022-08-05 08:09:43.992207+00	محمد السيد محمد علي محمد السيسي	sayedsisi85@gmail.com	+201004093956	جزيرة محمد الابتدائية	6-8	basic
1365	2022-08-05 10:17:27.794962+00	عبدالله سليمان عوده	emanhussein1984@gmail.com	+201062616243	معهد طلاءع الأزهر لغات	6-8	basic
1366	2022-08-05 11:05:03.870824+00	Saffeyelrahman Emad	walaaemad2008@yahoo.com	+201004142323	NIS	6-8	basic
1367	2022-08-05 11:06:02.464608+00	TaqqeyElRahman	walaaemad2008@yahoo.com	+201004142323	NIS	6-8	basic
1368	2022-08-05 14:23:52.01738+00	Johnathan	fadykamal2007@gmail.com	+201002596701	Patriachal collage	6-8	basic
1369	2022-08-05 14:31:04.081187+00	Faris	remamonty1117@gmail.com	+21142048682	ABCL	6-8	basic
1370	2022-08-05 18:43:29.974418+00	ياسين	somiyayasien@gmail.com	+201227449339	كرداسى	6-8	basic
1372	2022-08-06 10:56:00.93574+00	Yassin	Eng.ahfikry@gmail.com	+201280001621	Future	6-8	basic
1373	2022-08-06 10:57:35.44061+00	Omar Haitham adel	haitham.wolf@gmail.com	+201270052111	Ims	6-8	basic
1374	2022-08-06 13:27:24.880185+00	Eyad	jnatalfrdws754@gmail.com	+2001100271030	الشهيد احمد المنسي تجريبي متميز	6-8	basic
1375	2022-08-06 13:45:08.326421+00	Omar Ayman	ayman_alsherqawy@yahoo.com	+966543814545	Egypt school	6-8	basic
1376	2022-08-06 15:58:36.022398+00	Hana eslam	eng.eslamsalah2010@gmail.com	+201153844090	.	6-8	basic
1377	2022-08-06 23:36:10.225018+00	saeed Mohamed saeed	mohamedsaeed.t.c@gmail.com	+201115099809	Elkoba El gadeda	6-8	basic
1378	2022-08-07 04:58:13.970588+00	Gasser shaaban	nehal89nehal@yahoo.com	+22675706849	Twanka elementary school	6-8	basic
1379	2022-08-07 05:26:59.390694+00	Adam Medhat	samargaber1520@gmail.com	+201003261641	6 october	6-8	basic
1380	2022-08-07 07:54:31.276204+00	جنى محمد احمد رضا بكر	dedamido333@gmail.com	+201019949490	على مبارك	6-8	basic
1381	2022-08-08 10:54:56.936436+00	Omar Ehab Mahmoud	maha.shehata@outlook.com	+201280431509	Lycee Elharam language school	6-8	basic
1382	2022-08-10 11:42:32.605105+00	Mohammed yousri	yousrihamad22@gmail.com	+201119635554	Elazher delngat instatue	6-8	basic
1383	2022-08-10 12:51:51.926936+00	Rayan elzeiny	loooomyz@yahoo.com	044001008000440	AIS	6-8	basic
1384	2022-08-10 14:02:34.003413+00	Rayan amr elzeiny	loooomyz@yahoo.com	044001008000440	ais	6-8	basic
1385	2022-08-10 18:20:30.986895+00	Ashraf	m.nouh444@gmail.com	+201000909850	Elnasr	6-8	basic
1386	2022-08-10 20:30:07.81417+00	استيفن امجد حاد	neveenramzy90@gmail.com	+201272289993	حسن كامل الثانوية	6-8	basic
1387	2022-08-11 08:05:32.967012+00	Hamza mohamed ragab mohamed attia el naggar	m.ragab.elnajjar@gmail.com	+201065787278	IAEGS	6-8	basic
1388	2022-08-11 09:32:27.286721+00	Baraa’ sherif Mohamad lotfy	mennaswify44@gmail.com	+201000570590	Janadan international school	6-8	basic
1389	2022-08-11 10:08:32.978013+00	Hamza Mohamed Sobhy	crmsobhyattia@gmail.com	+21127027877	Zks	6-8	basic
1390	2022-08-11 10:36:08.974337+00	Youssef Karim	sondos_84@hotmail.com	+201001005995	MES	6-8	basic
1391	2022-08-11 11:09:59.544204+00	Faten	hudwal2014@gmail.com	+201786880774	ثانوي	6-8	basic
1392	2022-08-11 11:54:20.350412+00	مراد أحمد حجاب	enasmohamed8073@gmail.com	+201001676776	Spatiss Modern Academy	6-8	basic
1393	2022-08-11 13:53:54.129701+00	Akl Yousef	yousef.akl1122@gmail.com	+21222553190	Alhory	6-8	basic
1394	2022-08-11 14:34:14.099179+00	Akl Yousef	yousef.akl1122@gmail.com	+21222553190	Alhory	6-8	basic
1395	2022-08-11 18:55:02.628942+00	Hala Ahmed	halaalbeidk@gmail.com	+201068186348	Sixth October	6-8	basic
1396	2022-08-11 19:48:27.811194+00	Rokaya Abozaid Mohamed	adelabuzaid@outlook.com	+201020045246	Kg 2 green school	6-8	basic
1397	2022-08-11 22:56:47.090113+00	Tamim Amr	aml.m.sharaka84@gmail.com	+21122263306	Bedaya academy	6-8	basic
1398	2022-08-11 23:04:06.286355+00	Yousef	ahmedfamy20202030@gmail.com	+201020045320	Al shikh othman	6-8	basic
1399	2022-08-12 00:46:03.891001+00	Hazem	saramo7amedmo7amed@gmail.com	+201155225562	Elhadba school	6-8	basic
1400	2022-08-12 05:27:20.913885+00	Noha Salah	noha.salaheldin@etisalatdata.net	+201110203639	Noor international school	6-8	basic
1401	2022-08-12 05:43:30.038796+00	مريم اسلام	islamatlam11@gmail.com	+201152272722	الاورمان	6-8	basic
1402	2022-08-12 06:57:51.894825+00	Malek	hanyucp@yahoo.com	+201030704041	Al farouk	6-8	basic
1403	2022-08-12 10:59:21.500693+00	Khadega Mohamed Mahmoud	abourena80@gmail.com	+201007718176	Qena Dreams specialized Schools	6-8	basic
1404	2022-08-12 12:56:45.745273+00	Heba	hazemfaramawi@gmail.com	+971509919861	Hekma	6-8	basic
1405	2022-08-12 13:07:01.317857+00	Asset Mohamed Farhat	daliamohamed1978@icloud.com	01011102266	Nis	6-8	basic
1406	2022-08-12 13:48:33.081831+00	Omar ahmed Khalil	chr@alsanidi.com.sa	+201005458852	Alsafwa	6-8	basic
1407	2022-08-12 14:49:10.480984+00	Youssef	hamadafadel2010@gmail.com	+201114438440	elghad elmoshreq	6-8	basic
1408	2022-08-12 14:51:28.250822+00	Mahmoud Fadel	hamadafadel2010@gmail.com	+201114438440	elghad elmoshreq	6-8	basic
1409	2022-08-12 15:42:02.562575+00	Adham Mohamed	somasaso7@gmail.com	+201007808004	المنيرة	6-8	basic
1410	2022-08-12 17:49:39.029062+00	Yassin Ayman	meroooooaly@gmail.com	+201007911778	Ips	6-8	basic
1411	2022-08-12 22:10:15.93819+00	Raghad	Emanshehata1987@yahoo.com	+201004266136	Gawda International School	6-8	basic
1412	2022-08-12 23:15:29.47996+00	محمد	m.allam@saudimasforgas.com	+20544888705	Educational castle	6-8	basic
1413	2022-08-12 23:54:50.339306+00	Emad hussein	effectiveman1079@gmail.com	+201000108584	Osman abn afan language	6-8	basic
1414	2022-08-13 00:23:16.433078+00	Ahmed wessam Mamdouh	maizeyadah2@gmail.com	+201140227949	Alomran language  school	6-8	basic
1415	2022-08-13 00:26:32.873934+00	Ahmed wessam Mamdouh	maizeyadah2@gmail.com	+201140227949	Alomran language  school	6-8	basic
1416	2022-08-13 01:08:28.107739+00	اسماعيل عمر	sameh.alemary@gmail.com	+201020918025	12	6-8	basic
1417	2022-08-13 05:55:07.1606+00	Kinda Mohamed Alaa	mohamednafea46@gmail.com	+201557575900	Futures national school	6-8	basic
1418	2022-08-13 06:44:41.331114+00	Ahmed kheadr	emadmokhtar87@yahoo.com	+201006950849	Egelz	6-8	basic
1419	2022-08-13 09:21:26.867062+00	محمد خالد جمعه السيد الغرباوى	khalidkarim710@gmail.com	+201065580675	مدرسه ابو بكر الصديق للتعليم الأساسي	6-8	basic
1420	2022-08-13 12:03:17.885246+00	Mohamed Hussein Mohamed ELSAWY	hussein.melsawy@gmail.com	+201116616153	Ashmun language	6-8	basic
1421	2022-08-13 13:52:37.650224+00	Mo'men Ahmed mohmed	sara.momen.mohmed@gmail.com	+201003440002	Seven pailars intarnational school	6-8	basic
1422	2022-08-13 14:16:40.31271+00	Eyad Mohamed	doaamagdy1214@yahoo.com	+201110488556	Futures language school	6-8	basic
1423	2022-08-13 18:15:18.992824+00	ندى	caxid26841@gmail.com	+201008945638	على بن أبي طالب	6-8	basic
1424	2022-08-13 20:01:19.89821+00	arwa mouhamed	lailahamads381@gmail.com	+201097005966	الشيخ زايد الرسمية لغات	6-8	basic
1427	2022-08-13 20:52:19.681059+00	TASNIM	Tasnimtalaat@gmail.comt	+2o1142258092	Abu Baker el sedik	6-8	basic
1428	2022-08-13 22:19:02.981979+00	Atef ahmed	dodo_darsh86@yahoo.com	+201097277417	Modern school	6-8	basic
1429	2022-08-14 01:50:48.321513+00	Younis bassem	doaafarag27@gmail.com	+201015583228	Future 10	6-8	basic
1430	2022-08-14 04:24:05.19625+00	محمد فؤاد محمود فؤاد الشغبي	hebamoustafa1111@gmail.com	+201121851119	الاورمان للغات	6-8	basic
1431	2022-08-14 07:38:41.297611+00	Ali Ahmed sayed	fatmahanfy31@gmai.com	+201280987387	Saad zaghlol language school	6-8	basic
1432	2022-08-14 08:25:05.755125+00	Ahmed Allbed	ahmedallbed@gmail.com	+201141334444	رياض الصالحين الخاصة	6-8	basic
1433	2022-08-14 14:47:19.851292+00	Mohamed wael	waelmmelgohary@gmail.com	+201066593229	Elkalifa elmamon	6-8	basic
1434	2022-08-14 19:12:07.598855+00	Yasssen	arafa.sherehan@gmail.com	+201033119506	Mohamed farid school	6-8	basic
1435	2022-08-14 22:08:14.656711+00	Sama mohamed azazy	salmaazazy82@gmail.com	+201119955303	El sherif	6-8	basic
1436	2022-08-15 08:45:33.922576+00	Omar galal	eamr08@gmail.com	+201001054755	Gulf English school	6-8	basic
1437	2022-08-15 12:14:10.482359+00	Selim Elaassar	Sherinekhalil70@gmail.com	+201001831554	Narmer American College	6-8	basic
1438	2022-08-15 19:11:03.287106+00	Eyad	yomna_elzaher@outlook.com	+201002627007	wise school	6-8	basic
1439	2022-08-16 06:54:09.930198+00	Ahmed Ayman Ahmed	rehamlotfy97@gmail.com	+201001849807	Egypt language school	6-8	basic
1440	2022-08-16 23:41:57.88655+00	Mariam	mariamfadi42@gmail.com	+201065098417	Nisha	6-8	basic
1441	2022-08-16 23:46:09.989569+00	Malik Walid Mokhtar	waleed.mokhtar87@gmail.com	+201154557766	Doctor Mohamed Fawzy	6-8	basic
1442	2022-08-16 23:48:49.749325+00	Nadine	hebaelguendy.heg@gmail.com	+201005718835	Smart city international school	6-8	basic
1443	2022-08-17 06:15:48.361305+00	Moaz Ahmed	ahmedmaher99@yahoo.com	+201222340994	HIOS	6-8	basic
1444	2022-08-17 09:21:03.055819+00	Adam Mahmoud gamal	asmaaosman2016119@gamil.com	+201118857761	حدائق اكتوبر التجريبي	6-8	basic
1445	2022-08-17 10:55:46.416218+00	Dina Mostafa	omarusama.ou@gmail.com	+201144818142	Farabi	6-8	basic
1446	2022-08-21 17:09:17.564351+00	عبد الرحمن محمد نصار	mhamed_nassar16@icloud.com	+201000355364	Maharat super global	6-8	basic
1447	2022-08-21 20:47:24.696061+00	Abdelrahman Walid	walidfares73@gmail.com	+201002565552	Privilege	6-8	basic
1448	2022-08-21 21:08:56.580925+00	Amin	aminalisalem20082008@gmail.com	+2011159155996	شبرا البلد الرسمية للغات	6-8	basic
1449	2022-08-22 15:01:39.784999+00	Youssef	drsamaralmanfi@gmail.com	+201062222194	Leaders	6-8	basic
1450	2022-08-22 18:37:20.177435+00	Hazem mohamed bahgat	white_knight_alex4@hotmail.com	+97433143994	english modern school	6-8	basic
1451	2022-08-23 15:42:54.461668+00	Youssef Amr El Naggar	drmahaelalfy07@gmail.com	+201006470024	Frères bab ellouk	6-8	basic
1452	2022-08-24 12:32:29.144821+00	Aly Salem abdelfadeel	salemelhelw69@gmail.com	+201100868967	Dr yehia elmashad official language school	6-8	basic
1453	2022-08-24 12:38:37.592657+00	Aly Salem abdel fadeel	salemelhelw69@gmail.com	+201100868967	Dr yehia elmashad official language school	6-8	basic
1454	2022-08-25 19:14:59.545049+00	Amelia	dr.samah.kamal.vip@gmail.com	+201110009585	Pioneers	6-8	basic
1455	2022-08-25 20:09:15.349389+00	Nelly	extra_maha@hotmail.com	+201275498859	CMIS	6-8	basic
1456	2022-08-25 20:25:05.293183+00	روان اشرف عبد الغفار	ashrfdd72@yahoo.com	+201140924057	الارقم	6-8	basic
1457	2022-08-25 21:15:00.118173+00	خديجة محمد احمد	hebasedoo@gmail.com	+96550579944	القطوف	6-8	basic
1458	2022-08-25 21:27:46.499152+00	Asser	mohamed_jerko@yahoo.com	+201066115681	British school	6-8	basic
1459	2022-08-26 01:52:17.434288+00	عمر علاء عبد المجيد الغفلول	hendsarhan18@gmail.com	+201029856019	الزهور الرسمية للغات	6-8	basic
1460	2022-08-26 07:45:23.93178+00	Yassin Ahmed	mshmshkenda211983@gmaik.com	+201065820642	Alsayda khadiga	6-8	basic
1461	2022-08-26 07:59:53.647259+00	aisha Ahmed mohamed Abd elaziz	modern.united@hotmail.com	+201006880050	ips 10th of Ramadan city	6-8	basic
1462	2022-08-26 12:09:40.793427+00	Mohamed abdalrashied	abdalrashied@gmail.com	+2001220469546	ELRAHAMAN	6-8	basic
1463	2022-08-26 12:12:50.786996+00	Malak abdalrashied	abdalrashied@gmail.com	+2001011707651	El Ekbal language school	6-8	basic
1464	2022-08-26 12:39:24.676679+00	Mohamed abdalrashied	abdalrashied@gmail.com	+2001220469546	ELRAHAMAN language school	6-8	basic
1465	2022-08-26 17:35:01.253468+00	Omar	engineeromar2024@gmail.com	+201279978296	Saad eldeen shereef	6-8	basic
1466	2022-08-26 19:27:51.928077+00	Malak	gehanzakaria357@gmail.com	+2001280025849	Mousaa Ben nouser	6-8	basic
1467	2022-08-26 19:42:21.861245+00	اسماء سليمان سالم	asmaa01098260057@gmail.com	+201098260057	القنطره غرب للغات	6-8	basic
1468	2022-08-26 20:28:07.287231+00	Youssef	marwaamir949@gmail.com	+201008008177	Mse	6-8	basic
1469	2022-08-26 20:28:30.446916+00	tolba Ali hassan ali	ali74tolba@yahoo.com	+21091067003	Noor	6-8	basic
1470	2022-08-26 20:31:11.669986+00	malik mohammed	sonson_h@yahoo.com	+201153328203	gomhorya	6-8	basic
1471	2022-08-26 20:32:01.544264+00	Amira Maged	magedamira2@gmail.com	+2001014758611	Faculty of science	6-8	basic
1472	2022-08-26 20:37:44.584572+00	Shams elden Mohamed Ali	marwaismaiel1988@gmail.com	+201114587187	Future language school	6-8	basic
1473	2022-08-26 20:39:26.748755+00	Malak Mohamed Ali	marwaismaiel1988@gmail.com	+201114587187	Future language school	6-8	basic
1474	2022-08-26 21:41:38.254049+00	Mohammed ahmed abu etman	emmymoh88@icloud.com	+21272985595	Glory language school	6-8	basic
1475	2022-08-26 22:23:35.447946+00	Lana farrag	ayasalama478@gmail.com	+21098584806	Manar school	6-8	basic
1476	2022-08-26 22:27:38.801892+00	Eyad Amir Elbrashy	draminaahmrd1988@gmail.com	+201004389449	Shehata private school	6-8	basic
1477	2022-08-26 22:31:57.946903+00	Hussam	bassmasamy25@yahoo.com	97477786475	Park House	6-8	basic
1478	2022-08-26 23:28:06.523046+00	Mahmoud hesham	solosol34@yahoo.com	+201021322133	Narmer	6-8	basic
1479	2022-08-27 00:04:24.917035+00	Selim Ahmed Mostafa	dinahy754@hotmail.com	+201001645407	Maadi Narmer School	6-8	basic
1480	2022-08-27 00:12:46.489182+00	David	nancyhenry1982@gmail.com	+201202844333	جيل المستقبل الدوليه	6-8	basic
1481	2022-08-27 01:35:15.215515+00	Abo bakr	mahmoud.abdelbary.us@gmail.com	+201114821919	Zoser	6-8	basic
1482	2022-08-27 02:40:47.391657+00	محمد عصام	sherimostafa20@gmail.com	+201283111461	طيبة الدولية	6-8	basic
1483	2022-08-27 04:35:55.819183+00	Abdelrahman Mahmoud bajr	mahmoudbaker2020@yahoo.com	+201008934227	Omar ibn Elkhattab	6-8	basic
1484	2022-08-27 04:54:58.008734+00	محمد سليمان عبدالحميد	hndalfqy2@gmail.com	+201007327479	المدرسة المصريه اليابانية	6-8	basic
1485	2022-08-27 06:21:30.327925+00	Hamza	rana_elkawofje@hotmail.com	+201222844418	Victoria college	6-8	basic
1486	2022-08-27 06:39:55.922226+00	Joury Hassan	samahabdelsalam9@gmail.com	+201097242106	Salem madian school	6-8	basic
1487	2022-08-27 06:56:01.751168+00	Omar Bassam Elshafei	amany.elmasry@egx.com.eg	+201008147416	Kenana language school	6-8	basic
1488	2022-08-27 06:57:03.415858+00	Asser mohamed	mayada.elhadad84@gmail.com	+201005782059	English language school	6-8	basic
1489	2022-08-27 07:47:10.876152+00	Youssef Mohamed magdy	poussyezzat@gmsil.com	+21223725739	Gems cambridge	6-8	basic
1490	2022-08-27 08:26:59.280777+00	Anas Alaa	dr_menessy455@yahoo.com	+971509279557	ISCS	6-8	basic
1491	2022-08-27 08:59:25.688734+00	محمد عيسي	issanasser2015@gmail.com	+20201003332819	Modern school	6-8	basic
1492	2022-08-27 08:59:26.096699+00	محمد عيسي	issanasser2015@gmail.com	+20201003332819	Modern school	6-8	basic
1493	2022-08-27 09:06:37.852176+00	Omar Ayman	nohaalgayar@gmail.com	+200201068443813	Nermeen Ismail	6-8	basic
1494	2022-08-27 09:11:12.424957+00	محمد هيثم محمد عبد العزيز	shomoashoumanshouma@gmail.com	+201008686565	محمود فرج البنوي	6-8	basic
1495	2022-08-27 09:21:20.644603+00	Adam mohamed mahmoud	marwa25705@gmail.con	+201060749098	T L S	6-8	basic
1496	2022-08-27 09:23:25.113972+00	Adam	marwa25705@gmail.com	+201060749098	T L S	6-8	basic
1497	2022-08-27 11:23:30.825802+00	Malek Atef	malekkoky2011@gmail.com	+201113198200	Talaee islamic	6-8	basic
1498	2022-08-27 11:49:37.446037+00	Adam Ahmed Kamal	network2000.eng.ahmedkml@gmail.com	+201022119228	New salhia language school	6-8	basic
1499	2022-08-27 12:18:21.735463+00	Yassin ashraf	yasso.lomy@hotmail.com	+201014836111	Egyption language school	6-8	basic
1500	2022-08-27 17:05:00.057661+00	Ahmed elshoura	feefz20@gmail.com	+13062819286	Chif white	6-8	basic
1501	2022-08-27 18:05:20.181026+00	محمد أحمد نبيل	meramora261@yahoo.com	+201015008664	Glory international school	6-8	basic
1502	2022-08-27 18:20:37.820669+00	Kenzy	phasmaaabdo@gmail.com	5001016283530	Mansoura distinguished language school	6-8	basic
1503	2022-08-27 21:59:36.386465+00	Saja mohamed	dr.maiibrahim.abdelfatah@gmail.com	+201025104069	Elrwad collage	6-8	basic
1504	2022-08-28 02:35:52.693641+00	Hamza	noha.262.a@gmail.com	+966534392931	Honeschooling	6-8	basic
1505	2022-08-28 02:41:05.170973+00	Yassen Abd Elslam	Zena335543@gmail.com	+201554088832	Alsfwa language school	6-8	basic
1506	2022-08-28 05:37:37.7795+00	Youssef Hazem	chaimaa.elmatrabi@gmail.com	+201122666689	Jésuites	6-8	basic
1507	2022-08-28 05:42:11.077676+00	Youssef Hazem	chaimaa.elmatrabi@gmail.com	+201122666689	Collège de la sainte famille	6-8	basic
1508	2022-08-28 06:36:06.308011+00	شادن اسامه امين	osamaamin1988@gmail.com	+201064650508	A	6-8	basic
1509	2022-08-28 06:44:45.455046+00	Mohammad Ahmed Hemi Mohamad Mursy	tornafsak@gmail.com	+201029563735	Language school	6-8	basic
1510	2022-08-28 07:14:07.586506+00	احمد محمد فوزي	mohamedfawzieldeep@gmail.com	+201227153871	تانية اعدادي	6-8	basic
1511	2022-08-28 07:15:22.321718+00	Mohamed salama	Dinashaban201228@gmail.com	+201061146846	Al-Azhar Alsharif	6-8	basic
1512	2022-08-28 11:02:23.676612+00	Yassen saed	yassen200200@gmail.com	+201001191239	Primary school	6-8	basic
1513	2022-08-28 11:05:35.242807+00	Yassen saed	yassen200200@gmail.com	+201001191239	Elshahid primary	6-8	basic
1514	2022-08-28 14:43:55.832244+00	مريم مصطفى	sasafarhat2020@gmail.com	+201001925068	الاول الثانوى	6-8	basic
1515	2022-08-28 15:24:53.811363+00	Tarek Mohamed Ragab Ali	mragabffj@gmail.com	+201121112172	Patriarcal school	6-8	basic
1516	2022-08-28 16:54:09.631195+00	ياسين عادل	cc.egypt@gmail.com	+21061627555	مدرسة اليونانيه الحديثه	6-8	basic
1517	2022-08-28 18:27:06.671985+00	Admam Mohamed fathy	mohfathy75@gmail.com	+22	Sanmarck alex.	6-8	basic
1518	2022-08-28 22:52:46.057829+00	Fares Mohamed raafat	moraafatrabea@gmail.com	+201003630800	Ali Zak I	6-8	basic
1519	2022-08-29 00:27:01.529837+00	Adhm mohamed	greatmalak124@gmail.com	+201100434686	Resala	6-8	basic
1520	2022-08-29 00:28:12.188934+00	عمار مجدى رجب كامل	amrma1988@gmail.com	+201122406403	الوراق الإعدادي	6-8	basic
1521	2022-08-29 07:23:51.211317+00	Rodina Hassan	tchmathlrna2z@gmail.com	+201123662363	El madina el monora	6-8	basic
1522	2022-08-29 10:04:11.785055+00	اسماعيل محمد سعد	mahaalsharnoby@gmail.com	+201551309399	Royal language school tanta	6-8	basic
1523	2022-08-29 11:06:44.992159+00	Mohamed	mahnoud.reyad2020@hotmail.com	00966504476499	IPS	6-8	basic
1524	2022-08-29 11:16:39.404982+00	Malik Hatem	hatem.83@gmail.com	+9710588676191	The International School of Choueifat-UAE	6-8	basic
1525	2022-08-29 14:09:25.642761+00	Yahia Hussein	marwasaidny@gmail.com	+21000032771	Privilege language school	6-8	basic
1526	2022-08-29 17:43:35.933711+00	اسماعيل محمد سعد	mahaalsharnoby@gmail.com	+201551309399	Tanta Royal language school	6-8	basic
1527	2022-08-29 19:29:46.984031+00	Yousef Ibrahim ragab	hoda24713@gmail.com	+201009327887	المستقبل ٢	6-8	basic
1528	2022-08-29 20:44:49.815378+00	Ahmed sherif	elshemydina@gmail.com	+201288764227	Cambridge	6-8	basic
1529	2022-08-29 21:30:48.107586+00	Mohy	mohym1865@gmail.com	+2001033951263	Mohy	6-8	basic
1530	2022-08-29 21:55:54.383653+00	عمر محمد عبد النبي	hanaomar1234@gmail.com	+201125158178	دكتورة نوال محمد اسماعيل	6-8	basic
1531	2022-08-29 23:11:23.508772+00	Abd Allah Ahmed	elhenawysci@gmail.com	+201030467107	Alwafaa	6-8	basic
1532	2022-08-30 01:22:26.175254+00	Baraa Mohamed Ramadan	mregaaf183@gmail.com	+201060024306	Royal international	6-8	basic
1533	2022-08-30 03:13:58.554579+00	Anas Ahmed	ahmedtohamy9595@gmail.com	+201127270581	Alrashed	6-8	basic
1534	2022-08-30 04:21:29.424008+00	Shady haisam elsawy	hisamelsawy79@gmail.com	+201227879585	Sonaa elhayaa	6-8	basic
1535	2022-08-30 05:30:55.445999+00	حذيفة مؤمن مرعي	moemen_translator@yahoo.com	+201002550854	معهد ناصر الثانوي الازهري	6-8	basic
1536	2022-08-30 05:32:42.22376+00	Nour Mustafa	mabdo_nile@yahoo.com	+201103996110	6 October school	6-8	basic
1537	2022-08-30 08:32:42.438657+00	وليد  سيد السيد	waled_ynd@yahoo.com	+201116092888	Adam	6-8	basic
1538	2022-08-30 11:53:04.948151+00	omar	omaramreky33@gmail.com	+2001121593797	حلوان	6-8	basic
1539	2022-08-31 18:44:39.955911+00	Mohammed Ashraf Abdeen	ashraf1975.aaa@gmail.com	+201021993269	T	6-8	basic
1540	2022-09-01 10:23:16.235831+00	Haitham	haythamjojoh@gmail.com	+201019193119	Modern School	6-8	basic
1541	2022-09-01 10:34:10.628386+00	Youssef Essam esmail	essam.esmail80@gmail.com	+2001021222265	Muhammed El Fateh Azharian	6-8	basic
1542	2022-09-01 22:10:30.419064+00	Kinda	monajamal@yahoo.com	+96551115779	LFK	6-8	basic
1543	2022-09-02 14:07:56.850985+00	Youssief mohamed elsayed	azzasalehart2015@gmail.com	+201000551933	Elsalam language school	6-8	basic
1544	2022-09-02 20:19:00.170026+00	عبد الرحمن سيد جمعة محمد	taaam3030@yahoo.com	+201023167366	مدرسة الشهيد محمد طه رمضان الابتدائية المشتركة	6-8	basic
1545	2022-09-03 12:43:24.407131+00	Asser Ahmed kadry	Shymaadel209@gmail.com	+201101398407	Baream misr language  school	6-8	basic
1546	2022-09-06 09:04:27.040897+00	Ahmad Tamer AlBasuony	t.albasuony@gmail.com	+201007347850	Alson school	6-8	basic
1547	2022-09-08 06:46:39.397104+00	Manar Moaaz Farmawi	farmawima@alj.com	+21000985967	Faisalia school	6-8	basic
1548	2022-09-08 07:32:04.94735+00	Mohab elsherbiny	elmohab2012@gmail.com	+20001200522110	مدرسة سليم البشري	6-8	basic
1549	2022-09-08 08:08:41.789751+00	Adam Ahmed Abdulmoteleb	ahmed.abdulmoteleb@gmail.com	+201003738881	Lycee	6-8	basic
1550	2022-09-08 08:31:01.622121+00	صلاح احمد عبدالرحمن	ahmedaranda@gmail.com	+201002180020	الأبطال الرسمية للغات	6-8	basic
1551	2022-09-08 09:44:07.931865+00	ايمن محمد	aymanabdulghany7@gmai.com	+201270080787	E.b.s	6-8	basic
1552	2022-09-08 10:17:06.704748+00	Marwan mostafa	eng.mostafa2810@yahoo.com	+201147185685	Glory	6-8	basic
1553	2022-09-08 11:25:18.714998+00	Younis Haytham	elhabetheba89@gmail.com	+201019412913	Atef seadky	6-8	basic
1555	2022-09-08 16:54:40.395421+00	هشام صدقة	heshamsadaka77@gmail.com	+201143607799	أبو حمص الثانوية الصناعية العسكريه - البحيرة	6-8	basic
1558	2022-09-08 20:56:42.832779+00	محمد السيد	mrnoureldin1234@gmail.com	+201007733264	جمال عبدالناصر	6-8	basic
1559	2022-09-08 21:00:21.713336+00	مريم	gemgeg2013@gmail.com	+201000754579	ابو بكر الصديق	6-8	basic
1560	2022-09-09 00:16:59.023987+00	عمر إبراهيم محمد نبيل عبد الحليم محمد	Rehabsaleh1051@gmail.com	+201018677962	Ambasy school	6-8	basic
1561	2022-09-09 00:23:58.218209+00	Haroun Ahmed sobhy	heronia85@gmail.com	+21025288022	El mansor	6-8	basic
1562	2022-09-09 00:33:24.888311+00	سيف الله وائل عاشور	saharabdelsalamothman@gmail.com	+21007844063	الملك حفني ناصف	6-8	basic
1563	2022-09-09 13:12:38.735705+00	Apdala	apoale68@yahoo.com	+201061140996	Elsahed kedr	6-8	basic
1564	2022-09-09 13:15:35.484987+00	Ibrahim	Elosaily2001@yahoo.com	+201001733029	Nahdet misr	6-8	basic
1565	2022-09-09 15:40:10.103682+00	Mohammed Hamed	tvengineer54@gmail.com	+966595055804	Ahmed ali primary school	6-8	basic
1566	2022-09-09 20:48:40.715025+00	John Elkess	aghapyanjo@yahoo.com	+201201067744	الثانويه بنين	6-8	basic
1567	2022-09-10 18:51:24.851245+00	Omar Hazem Kamel	hazemkamel75@gmail.com	+201227300047	El Alsson school newgiza	6-8	basic
1568	2022-09-10 23:25:30.800957+00	Maria Mohamed	shimaa_mostafa64@yahoo.com	+201003254699	Osman ebn afan language	6-8	basic
1569	2022-09-11 03:24:02.090328+00	Malek kandil	dr.hananetman85@gmail.com	+201090403670	ALS	6-8	basic
1570	2022-09-11 11:09:08.818355+00	Ahmed	safwatrade74@gmail.com	+201099000012	Manhal school	6-8	basic
1572	2022-09-12 03:54:34.634731+00	Adam Khalid	eng_h2741@yahoo.com	+201030797711	New Capital English School	6-8	basic
1573	2022-09-13 07:08:14.530033+00	Hannah	lobna.4487@gmail.com	+201111533319	Epic	6-8	basic
1574	2022-09-13 07:13:42.168963+00	Haneen Mahmoud	Mahm.elsaid@gmail.com	+201098626766	Faisalia language	6-8	basic
1575	2022-09-13 07:16:06.541115+00	Rohime haytham	haythamelarby19@gmail.com	+201140770106	Fahd languh school	6-8	basic
1576	2022-09-13 08:07:34.014997+00	يوسف مصطفي محمود	uosefmostafaips@gmail.com	+201114723028	ips school	6-8	basic
1577	2022-09-13 08:17:46.569593+00	نفين ابراهيم	ferymohamed155@yahoo.com	+201125779494	Lecy elhorya	6-8	basic
1578	2022-09-13 08:20:08.996867+00	Gana ramadan	rkhalil1990@gmail.com	+201143267087	Ali ebn abi taleb	6-8	basic
1579	2022-09-13 08:57:47.877865+00	anas ahmed	ahmedfadl905@gmail.com	+201145559567	elnasr	6-8	basic
1580	2022-09-13 09:52:23.057454+00	روضه نظمى عبدالرازق	rawda.nazmy@gmail.com	+201000415743	Creative international school	6-8	basic
1581	2022-09-13 09:54:13.102454+00	Hamza mohamed	rawda.nazmy@gmail.com	+201000415743	Creative international school	6-8	basic
1582	2022-09-13 10:01:54.526752+00	Anas	s.allam@hotmail.com	288401008792884	Alyaa	6-8	basic
1583	2022-09-13 10:11:45.932407+00	Taymullah	dramrsaied@gmail.com	+201000363200	Future tec	6-8	basic
1584	2022-09-13 10:15:20.909485+00	ali mohamed sayed	nagahhameed321@gmail.com	+21124407793	elslam colleg	6-8	basic
1585	2022-09-13 10:42:35.287474+00	Mohamed Reda	redasoroor@yahoo.com	+61158560633	Arabic school	6-8	basic
1586	2022-09-13 10:57:21.923179+00	عمر حماد	ahalaa130@gmail.com	+201020246464	دسوق التعليميه	6-8	basic
1587	2022-09-13 11:56:38.893601+00	hassanaly	hassanalyabobakr@gmail.com	+201555856590	hassanalyabobakr@gmail.com	6-8	basic
1588	2022-09-13 12:16:12.400014+00	Omar	nashwa_nci@yahoo.com	+201118821000	Alsson	6-8	basic
1589	2022-09-13 12:33:31.465994+00	عمرو ابوفراس شحات	amraboferas79@gmail.com	+201114123666	النيل الدولية	6-8	basic
1590	2022-09-13 12:38:57.506699+00	Karim	marwa.sameer@gmail.com	+201223865598	Maveecks	6-8	basic
1591	2022-09-13 14:29:54.433081+00	Enas Ragab	ena.ahmed.2012@gmail.com	+201017808799	الهدي	6-8	basic
1592	2022-09-13 15:51:13.074172+00	Ahmed Mohamed	esraalayla2018@gmail.com	+201090954152	Ahmed Esmat	6-8	basic
1593	2022-09-13 15:55:33.947091+00	mohamed	shrrezk1@gmail.com	+201060560149	shrouk	6-8	basic
1594	2022-09-13 20:02:39.968188+00	Zeina	soumation@gmail.com	+211180002225	Lecee balzac	6-8	basic
1595	2022-09-13 20:38:31.179521+00	ايمن احمد عبد العليم	hindelbayaly93@gmail.com	+21220560049	الشريف	6-8	basic
1596	2022-09-13 21:10:45.847239+00	Selim medhat	sasoomedhat91@gmail.com	+201005629649	Gls language school	6-8	basic
1597	2022-09-13 21:18:53.951448+00	Fares Mohamed shaher	Mohamed.shaher@gmail.com	+20106641592	Al-Qodoas Elsharef	6-8	basic
1598	2022-09-13 21:39:14.405741+00	marwan elbahgy	nahedsoliman552@gmail.com	+201064641999	language school	6-8	basic
1599	2022-09-13 21:40:19.124691+00	Alia ahmed Kamal	walaa.moh@outlook.com	+9650393124	Iak	6-8	basic
1600	2022-09-13 22:11:22.166752+00	Mostafa kareem	mony_kiky43@yahoo.com	+201141971203	Elman school	6-8	basic
1601	2022-09-13 22:26:17.172164+00	Omar Ahmed Hamdy	a.hamdy87@gmail.com	+201002962094	Elmostaqbal	6-8	basic
1602	2022-09-13 22:54:08.471663+00	Mark	marianamourad2005@gmail.com	+201224404079	Alkarma	6-8	basic
1603	2022-09-13 23:02:46.970356+00	Youssef SHERIF ABDELKARIM	sherif.aabdelkarim@gmail.com	+20301015087149	San Gabriel	6-8	basic
1604	2022-09-13 23:44:24.623415+00	Youssef	Ahmedabdelkawy060@gmail.com	+201276929700	Abdelmonem Riyad	6-8	basic
1605	2022-09-13 23:59:36.573828+00	Omar Salah	salahsalem.ssp@gmail.com	+2001111491108	Elorman school	6-8	basic
1606	2022-09-14 01:16:03.169203+00	Khadega	takwa608@yahoo.com	+201004555403	Sheikh Zayed	6-8	basic
1607	2022-09-14 03:22:20.774993+00	Mogamed rageh	nessmashalaby34@gmail.com	+201018171410	Elzahra	6-8	basic
1608	2022-09-14 04:40:49.935472+00	Zein elden mohammed	rroaa39@gmail.com	+201012821348	HOIS international school	6-8	basic
1609	2022-09-14 06:06:10.848365+00	نادر احمد نادر	Sassonanno16@gmail.com	262901141190968	Mls school	6-8	basic
1610	2022-09-14 07:25:32.359505+00	Esmail ahmed	ahmedzaher046@gmail.com	+201006756363	Ramses	6-8	basic
1611	2022-09-14 07:42:30.496975+00	Phelopater	girgisdem@yahoo.com	+201285062181	St Fatima	6-8	basic
1612	2022-09-14 07:52:23.290954+00	Hazem	ahmedmei90@gmail.com	+201271133996	Mohammed Farid	6-8	basic
1613	2022-09-14 08:20:54.126515+00	مهاب الشربيني elsherbiny	elmohab2012@gmail.com	+201200522110	5	6-8	basic
1614	2022-09-14 08:36:24.510184+00	Yousef	ahmed_aswany77@yahoo.com	+201128989960	Yousef Ahmed	6-8	basic
1615	2022-09-14 08:38:42.869029+00	شكري فتحي شكري	shokry012@gmail.com	+201016400000	Al mado	6-8	basic
1616	2022-09-14 08:54:27.682049+00	Hamza Ahmed Mohamed Elsaeid	heba.ahmed.abdelhady@gmail.com	+254740599209	Light Academy	6-8	basic
1617	2022-09-14 08:57:12.178374+00	يوسف اسلام شوقي	eslamsinai2014@gmail.com	+201004779993	مناره هليوبوليس	6-8	basic
1618	2022-09-14 09:00:38.001728+00	Dareen hassan	morasaad680@gmail.com	+201010507445	Eltawfikia language school	6-8	basic
1619	2022-09-14 09:12:20.863707+00	Abdullah Mohamed Fawzy	mfgomaa79@gmail.com	+201100913828	Future  nasr city language school	6-8	basic
1620	2022-09-14 12:18:41.398298+00	محمد عبدالرازق محمدرشاد	abdelrazik77@gmail.com	+201009383879	قصر الدوبارة التجريبية للغات	6-8	basic
1621	2022-09-14 12:22:38.379437+00	Mohamed rageh	nessmashalaby34@gmail.com	+201018171410	Elzahra	6-8	basic
1622	2022-09-14 12:36:54.897374+00	مؤمن عبدالجليل	ahhassan353@gmail.com	+201153249293	معهد الشيخ صلاح الاعدادي الازهري	6-8	basic
1623	2022-09-14 12:45:24.727924+00	Mwlak	ollatahaweeeee@gmail.com	+201003984208	Thebs school	6-8	basic
1624	2022-09-14 12:55:55.323171+00	Mariam	Saraanwr362@gmail.com	96566973597	Rohaya	6-8	basic
1625	2022-09-14 13:13:37.399892+00	Mohamed moustafa	saraghonem0@gmail.com	+201008088919	Elferdous school	6-8	basic
1626	2022-09-14 14:37:53.209769+00	عبد الرحمن محمد نادي	saham1989smm@gmail.com	+0201117090776	Bremer 3 in	6-8	basic
1627	2022-09-14 14:41:08.054406+00	عبد الرحمن محمد نادي	saham1989smm@gmail.com	0201004149925	3	6-8	basic
1628	2022-09-14 16:10:44.842252+00	Bishoy Emad	nana.new.nana@gmail.com	+201278348881	OLS	6-8	basic
1629	2022-09-14 16:36:37.934037+00	Mohamed	maladdin@yahoo.com	+201001823728	Tls	6-8	basic
1630	2022-09-14 18:22:47.505862+00	Mervat Nagar	mervatmervatnagar@gmail.com	+201033773917	Flexi international home school	6-8	basic
1631	2022-09-14 19:05:08.6706+00	Adham Mohamed	mohamed.m.ghareib@gmail.com	+201007613031	Future language school	6-8	basic
1632	2022-09-14 19:56:30.366648+00	Marwan Mahmoud	reemomran86@gmail.com	+201003591415	Lyceé elharam	6-8	basic
1633	2022-09-14 20:04:48.130136+00	Remas	mahmoudmagd99@gmail.com	+201095257090	Elbaian	6-8	basic
1634	2022-09-14 20:11:29.217702+00	Malek Amr	amira_a.elwahab@yahoo.com	+201004036732	Nozha language school	6-8	basic
1635	2022-09-14 20:20:10.241973+00	Yousef saber	473971135@qaliobia1.moe.edu.eg	+201148628264	Yahia Almashad	6-8	basic
1636	2022-09-14 22:07:07.195789+00	Yassin Mohamed Shawky	nermeenalotfy@gmail.com	+201000200877	Bardy Language School	6-8	basic
1637	2022-09-14 22:40:35.672837+00	baraa mostafa	samah.tony2014@gmail.com	+201066714711	Giza	6-8	basic
1638	2022-09-15 01:43:01.166304+00	Yassein	Papyruscompany5@gmail.com	+21015620139	Ahmed orabi	6-8	basic
1639	2022-09-15 04:09:40.64627+00	عمرو ابوفراس شحات	amraboferas79@gmail.com	+201114123666	Nile international School	6-8	basic
1640	2022-09-15 08:10:11.910304+00	Malik kareem	rehabyahia250@gmail.com	+201222520977	Frère de collège	6-8	basic
1641	2022-09-15 08:27:41.903293+00	احمد عبدالله محمد	goodjourmartin@gmail.com	+201220996812	محمد عيسي الاعدادية	6-8	basic
1642	2022-09-15 08:55:17.035681+00	فارس محمد	doaap199000@yahoo.com	+201222576688	دار الطفل	6-8	basic
1643	2022-09-15 09:15:06.518731+00	Hamza mohamed sanad	mohamed1sanad2khlifa@gmail.com	+201010608376	Abo bakr alsedeek	6-8	basic
1644	2022-09-15 11:09:47.331745+00	Omar	amour7702000@gmail.com	801099948685	Gannat Masr	6-8	basic
1645	2022-09-15 11:14:22.028824+00	محمد حسام الدين	hosmo252@gmail.com	+201065541322	الرؤية الجديده	6-8	basic
1646	2022-09-16 11:50:58.016979+00	Bassem Waleed fahmy	fahmy_waleed@hotmail.com	+201065083208	Future rise school	6-8	basic
1647	2022-09-16 11:51:08.004726+00	Jannat mohamed abdo	Engineer.m.abdo@gmail.com	+201001733375	Moharam islamic language school	6-8	basic
1648	2022-09-16 11:56:22.900788+00	Mohannadmahmoud	mahmoudghaderpopup@yahoo.com	+201024124867	Ouroba language school	6-8	basic
1649	2022-09-16 12:20:35.506926+00	Hamza	ahmed33.salama33@gmail.com	+201026016260	Elsayda a'asha	6-8	basic
1650	2022-09-16 12:28:31.88519+00	Ahmed mohamed zedan	asmaa.z.lawyer92@yahoo.com	+201285660392	Secondry school for bens	6-8	basic
1651	2022-09-16 12:28:32.112202+00	Ahmed mohamed zedan	asmaa.z.lawyer92@yahoo.com	+201285660392	Secondry school for bens	6-8	basic
1652	2022-09-16 12:53:35.623761+00	ليث محمد علي	laith250049.lb@gmail.com	+201127038046	مدرسة البشائر	6-8	basic
1653	2022-09-16 13:36:50.752648+00	Mohammed Kalil	mohmed_rezk2000@yahoo.com	+201002655128	Samanoud official language school	6-8	basic
1654	2022-09-16 13:50:38.29009+00	Farida morgan	yassermorgan@hotmail.com	+201116671788	MIS	6-8	basic
1655	2022-09-16 13:58:04.11947+00	Ahmed osama	airoplane0555@gmail.com	+201003842582	الأزهر النموذجي بنها محافظة القليوبية	6-8	basic
1656	2022-09-16 16:03:37.023553+00	Mostafa	mostafaengy4@gmail.com	+201090042375	Ibn elnafes	6-8	basic
1657	2022-09-16 16:43:32.42768+00	Ahmed Elsawy	elsawy.officiall@gmail.com	+201001251659	جيل صالح	6-8	basic
1658	2022-09-16 17:26:56.591109+00	Yassin Mahmoud	mahmoud.adel78@gmail.com	+21000050444	Pyramids	6-8	basic
1659	2022-09-16 18:13:29.335254+00	مصطفى احمد الخرادلى	ahmaderohim@gmail.com	+201068182255	الابتدائية	6-8	basic
1660	2022-09-16 18:13:41.964094+00	Youssef Mohamed Ashraf	m.ashraf.100100@gmail.com	+201148713030	Fastat	6-8	basic
1661	2022-09-16 19:53:57.829506+00	محمد احمد محمد علي	elkady765@gmail.com	+201143217989	مستقبل الصديق	6-8	basic
1662	2022-09-16 20:23:13.119944+00	Asser Mohamed Gamal Mahmoud Mahmoud	smasher1906@yahoo.com	+201155268624	Pioneer	6-8	basic
1663	2022-09-16 20:33:50.451147+00	Omar	atefallam010@gmail.com	+201019101739	Remas language school	6-8	basic
1664	2022-09-16 20:52:20.376481+00	هدي محمد	hodasharawy321@gmail.com	+201029040026	Osman ben afan	6-8	basic
1665	2022-09-16 20:56:56.849302+00	هدي محمد	hodasharawy321@gmail.com	+201029040026	Osman ben afan	6-8	basic
1666	2022-09-16 22:08:26.906296+00	John Philip	johnphilipsamy@gmail.com	+201284196968	International Public school	6-8	basic
1667	2022-09-16 22:35:51.452865+00	Sheref	midohit2@gmail.com	+201111395049	Amon elzmalek	6-8	basic
1668	2022-09-16 22:35:51.651964+00	Omar Shoukry	radwa.salama@hotmail.com	+201000037814	Modern Education School	6-8	basic
1669	2022-09-16 23:57:00.419161+00	Moaz Ahmed Mohamed	sodyadel136@gmail.com	+201011014382	El.Mostafa	6-8	basic
1670	2022-09-17 00:03:04.248613+00	Mohamed Abolfadl	ayman.abolfadl@gmail.com	+21000079173	Green Land	6-8	basic
1671	2022-09-17 00:23:24.255107+00	يحيي + ياسين	mohamedahmady13@gmail.com	+201224503504	بورسعيد school	6-8	basic
1672	2022-09-17 02:44:48.804036+00	Saleh Mahmud	mohamdsaleh.ms@gmail.com	+201157055554	الصف الخامس	6-8	basic
1673	2022-09-17 04:25:15.003922+00	Fares Alaa Mohamed	Alaafares50576@gmail.com	+201000433257	Sungate language school	6-8	basic
1674	2022-09-17 04:47:08.541774+00	Moustafa	ahmed_afifyeg@yahoo.com	+201026808353	Almostakbal	6-8	basic
1675	2022-09-17 05:00:57.368565+00	معاذ	a.amir@asphalt-eg.com	+201010333395	مدرسة السراج المنير	6-8	basic
1676	2022-09-17 05:03:18.399379+00	Ibrahim mohamed	mohamedhema507@gmail.com	+201033223225	Ghgtu	6-8	basic
1677	2022-09-17 05:10:58.081495+00	شريف عادل عبدالحليم علي	sherifadellab@gmail.com	+201127399870	مدرسه العياط الابتدائيه بنين	6-8	basic
1678	2022-09-17 06:42:08.396881+00	Yassin Mohammed magdy	emanelsayed9245@yahoo.com	+201201819534	Abo bakr elsedik language school	6-8	basic
1679	2022-09-17 06:52:36.988982+00	Hazem Ayman	farhatshaimaa@yahoo.com	+201033750556	Alsafwa language school	6-8	basic
1680	2022-09-17 07:23:11.401913+00	Mohamed El sayed	hreman87@gmail.com	+201112002088	Cairo school	6-8	basic
1681	2022-09-17 07:57:22.388405+00	Asser	yasmin1.tarek@gmail.com	+201118772461	Tarek Ben zyad	6-8	basic
1682	2022-09-17 08:02:29.433971+00	Omar sherif	olafarouk80@gmail.com	+201021270813	Modern school	6-8	basic
1683	2022-09-17 08:04:36.265021+00	Salma waleed	hebasalah1212123@gmail.com	+201145452764	Mostafa nasar	6-8	basic
1684	2022-09-17 08:37:36.684285+00	مالك محمد عزت	sharymalek@gmail.com	+201099232103	ElNozha language	6-8	basic
1685	2022-09-17 08:50:51.793822+00	Hamza Shaheen	eng_mai_abdelwahab@hotmail.com	+201007905111	Windrose Academy- International school	6-8	basic
1686	2022-09-17 09:07:44.347213+00	Seif Ahmed	ahmed.abed.84@gmail.com	+201223755586	MNS	6-8	basic
1687	2022-09-17 09:35:23.681034+00	Judy	doaanabil900@gmail.com	+201012413054	Sungate	6-8	basic
1688	2022-09-17 09:50:09.983704+00	مصطفى هشام مصطفى	hm2007mhesham@gmail.com	+201012228141	الازهر النموذجى	6-8	basic
1689	2022-09-17 09:51:26.302214+00	رحيق مصطفى السمري	mostafaelsemary84@gmail.com	+201098833076	عمرو الفاتح	6-8	basic
1690	2022-09-17 10:25:56.60823+00	زياد حامد	ziadzizu991@gmail.com	+201099529906	Virginia international school	6-8	basic
1691	2022-09-17 10:29:32.528058+00	زياد حامد	ziadzizu991@gmail.com	+201099529906	Virginia international school	6-8	basic
1692	2022-09-17 11:38:23.446028+00	Mohammed ramy	mai.hassan83333@gmail.com	+201221091040	Royal international school	6-8	basic
1693	2022-09-17 12:22:41.433429+00	Ahmed yasser khodier	wafaahaiaty2014@gmail.com	+201125505599	Mils	6-8	basic
1694	2022-09-17 12:31:38.870386+00	Adam Amgad	doctorhazzaa@yahoo.com	+201003912038	Ehab Morsi School	6-8	basic
1695	2022-09-17 13:09:02.668687+00	Asia abdelrahman	sondoselasser@gmail.com	+201069596866	طلائع الأزهر	6-8	basic
1696	2022-09-17 13:15:50.145163+00	Talia	megootetoo@gmail.com	+201154666410	Elorman smart	6-8	basic
1697	2022-09-17 14:15:36.691854+00	مازن سيد صالح حنفي حامد	foxsayedgmn77@gamil.com	+201122078568	مطر اسكول	6-8	basic
1698	2022-09-17 14:59:51.077954+00	Abdallah Aly	alyabdallah212@gmail.com	+201147776692	Elhadad	6-8	basic
1699	2022-09-17 21:44:11.682805+00	مهاد محمد عيد	alezazym4@gmail.com	+201002115675	الصفاء والمروة	6-8	basic
1700	2022-09-19 08:55:50.599279+00	Khaled Ahmed nassr	ahmedkhallaf876@gmail.com	+201159416898	ELmanara	6-8	basic
1701	2022-09-19 21:46:02.283631+00	عمر جمال احمد	omar7575ox@gmail.com	+2001013191379	الاعداديه بنين بلقاس	6-8	basic
1702	2022-09-21 01:26:06.360132+00	Sofyan Mohamed	mohamed.othman@aerosky-eg.com	+201090968404	Talaat El amal	6-8	basic
1703	2022-09-21 01:56:24.941467+00	محمد عبد الله محمد جمال	abdallagamel81@gmail.com	٩01126251524	لغات العقيد عزت جوهر	6-8	basic
1704	2022-09-21 05:49:11.780119+00	Hamza mahfouz	Hendselim99@gmail.com	+201201369599	El Azhar	6-8	basic
1705	2022-09-21 05:52:26.956256+00	Kareem ahmed	Shaymaa333shawky@gmail.com	181101100661811	Alola	6-8	basic
1706	2022-09-21 06:42:53.821092+00	Obaida Mustafa	salwamustafa170@gmail.com	+201012825571	El-rafei language school tanta	6-8	basic
1707	2022-09-21 09:50:45.528954+00	Marcelino Mina adly	gigimina88@gmail.com	+201229121140	Maronite school	6-8	basic
1708	2022-09-21 12:08:52.23906+00	عبدالرحمن محمد فرحات	farahat1369@gmail.com	175701001331757	عزبه الصعيدي الابتدائيه النموذجيه للبنين	6-8	basic
1709	2022-09-21 12:21:58.728173+00	مصطفى محمد ابراهيم	dinaadeldina457@gmail.com	+201277716043	الثغر التجريبية	6-8	basic
1710	2022-09-21 13:27:54.523519+00	mazn	maznyosef777@gmail.com	02201153301371	المعادي الجديده	6-8	basic
1711	2022-09-21 17:24:31.990082+00	Youssef Mohamed koraiem	dr.omartalat@gmail.com	+201274825320	مدرسة دمنهور الرسمية المتميزة لغات	6-8	basic
1712	2022-09-22 07:35:00.331965+00	Adham	rsaeed@istnetworks.com	+20201000004413	Akhnaton	6-8	basic
1713	2022-09-22 12:33:42.741177+00	Omar Amr	amour7702000@gmail.com	+21099948675	Gannet Masr	6-8	basic
1714	2022-09-24 15:14:23.164882+00	Abed ahmed agwa	agwa6417@gmail.com	+201019115567	Azhar	6-8	basic
1715	2022-09-25 16:26:32.79054+00	Ziad Ahmed	098qwe234ertqazxsw@gmail.com	+201126770993	algada	6-8	basic
1716	2022-10-02 09:54:00.249763+00	Omar Ibrahim badran	omaribbdaran@gmail.com	+971502653346	Ajman private school	6-8	basic
1717	2022-10-02 16:51:24.121878+00	Moez	dr-mohamed77@hotmail.com	009697850033	NES	6-8	basic
1718	2022-10-03 18:28:32.297544+00	Yaseein mohamed ahmed	hanamarwa2009@gmail.com	+201001628289	الشهيد خضر المقطم	6-8	basic
1719	2022-10-03 18:31:37.863495+00	Yassein mohamed	hanamarwa2009@gmail.com	+201001628289	الشهيد خضرالمقطم	6-8	basic
1720	2022-10-04 05:26:43.379523+00	Yassein mohamed ahmed	hanamarwa2009@gmail.com	+201001628289	الشهيد خضر المقطم	6-8	basic
1721	2022-10-04 06:34:35.584996+00	Youssef Amgad	ghadas87@gmail.com	+201282550035	Newcastel	6-8	basic
1722	2022-10-04 11:19:24.238062+00	Youssef hossM	wafa2.sayed83@gmail.com	+201006542929	Shs	6-8	basic
1723	2022-10-10 08:34:23.50972+00	عبدالله السيد عبد النبي	saidhussin09@gmail.com	٠٢01067999536	معهد العبور النموذجي	6-8	basic
1724	2022-10-10 09:12:19.638958+00	Kenzy ali	doaa.kamal011@gmail.com	+21012394306	Futures	6-8	basic
1725	2022-10-10 10:10:33.77524+00	Mohamed Ahmed	shoshogogo79@yahoo.com	+201000366091	Imas International school	6-8	basic
1726	2022-10-10 14:38:08.091483+00	Abdel rahman amr	monamorsyanwar@gmail.com	+201555119630	Cps	6-8	basic
1727	2022-10-10 14:38:45.237966+00	سعاد محمد	soso.m4.2000@gmail.com	+201017939152	Alshaheed	6-8	basic
1728	2022-10-10 20:33:08.365625+00	Ahmed Adam	ahmed1204210002@gmail.com	+201204210002	Bloom	6-8	basic
1729	2022-10-10 20:47:35.449775+00	mostafa mahmoud	elgoharymostafa.com@gmail.com	+201142367732	الحي السابع الرسمية لغات	6-8	basic
1730	2022-10-11 00:19:01.154272+00	محمد	mhmdbdallhywsf06@gmail.com	+201100913253	ابتداء	6-8	basic
1731	2022-10-11 01:26:50.984358+00	Yassin kamel	dr.marwah.shahin@gmail.com	+201010119036	6th October	6-8	basic
1732	2022-10-11 01:47:43.556545+00	Selim	m.karam123@yahoo.com	+201007658887	Egypt school	6-8	basic
1733	2022-10-11 05:28:00.711101+00	Jason	pepsiromio@gmail.com	+201221213156	Own Heliopolis	6-8	basic
1734	2022-10-11 05:55:27.273228+00	Hamza mahmoud	mng.elgarhy@gmail.com	+201003327328	October	6-8	basic
1735	2022-10-11 07:01:20.141942+00	Roaa mokhtar	omyomn1980@gmail.com	+201100715681	Wise international	6-8	basic
1736	2022-10-11 07:56:16.157759+00	Yassin kamel	dr.marwah.shahin@gmail.com	+201010119036	ELS	6-8	basic
1737	2022-10-11 08:00:00.640211+00	رقيه محمد مجدي عبدالغفار	mohamed.moga.1982@gmail.com	+201279005181	الحصري الازهريه لغات	6-8	basic
1738	2022-10-11 08:08:44.227965+00	Youssef mohamed refaat	eng.taghreed.2010@gmail.com	+201000445300	Skylight language school	6-8	basic
1739	2022-10-11 08:08:44.2904+00	Youssef mohamed refaat	eng.taghreed.2010@gmail.com	+201000445300	Skylight language school	6-8	basic
1740	2022-10-11 08:12:19.827779+00	John Samy Hanna	Samyhfj@gmail.com	+201004824608	SFS	6-8	basic
1741	2022-10-11 08:17:24.574984+00	Karim Farouq	farouq@toujourwear.com	+201112511249	Srour language school	6-8	basic
1742	2022-10-11 08:18:16.524866+00	Adm Amr Sakr	amr_sakr44@yahoo.com	+201001853928	Roaya	6-8	basic
1743	2022-10-11 09:13:15.894162+00	ياسين عبده عاشور عبدالحكيم سيد	abdo.safeway@gmail.com	+201279403845	Nour Elsafa school	6-8	basic
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	Scratch course	scratch-course
2	MIT app inventor Level	mit-app-inventor-level
3	MIT app inventor course	mit-app-inventor-course
4	Scratch course sessions steps	scratch-course-sessions-steps
6	scratch course	scratch-course_1
7	Python course	python-course
8	Artificial intelligence (AI) course	artificial-intelligence-ai-course
9	app inventor course	app-inventor-course
10	First program	first-program
11	Blockly course	blockly-course
12	HTML & CSS Course	html-css-course
13	JavaScript	javascript
14	JavaScript Course	javascript-course
15	Flask Course	flask-course
16	Flutter Course	flutter-course
17	#أقوى_محتوى_علمي_للأطفال_في_مصر	_____
18	STEM	stem
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	4	1
2	2	4	2
3	3	4	7
4	4	4	8
5	5	4	1
6	5	4	9
7	6	4	11
8	7	4	12
9	8	4	13
10	9	4	15
11	10	4	15
12	11	4	17
13	11	4	18
\.


--
-- Data for Name: wagtailadmin_admin; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailadmin_admin (id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_groupapprovaltask; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_groupapprovaltask (task_ptr_id) FROM stdin;
1
\.


--
-- Data for Name: wagtailcore_groupapprovaltask_groups; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_groupapprovaltask_groups (id, groupapprovaltask_id, group_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	1
2	1	2	1
3	1	1	2
4	1	2	2
5	1	1	6
6	1	2	6
7	1	1	7
8	1	2	7
9	1	1	9
10	1	2	9
\.


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
7	unlock	1	1
\.


--
-- Data for Name: wagtailcore_locale; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_locale (id, language_code) FROM stdin;
1	en
\.


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, locked_at, locked_by_id, translation_key, locale_id, alias_of_id) FROM stdin;
30	000100020001	3	0	Apply now in 3C Online Programming School	register	t	f	/home/register/		f		\N	\N	f	17	1	f	2022-07-22 14:18:23.010462+00	2021-05-15 21:55:37.375445+00	148	2022-07-22 14:18:23.03058+00	Apply now in 3C Online Programming School	\N	\N	430d01ae-4020-41cc-b2b3-5e14799ad0ca	1	\N
46	00010002	2	1	3Cschool	home	t	f	/home/		t		\N	\N	f	3	2	f	2021-12-07 06:08:44.368799+00	2021-12-07 06:08:44.383331+00	129	2021-12-07 06:08:44.383331+00	3Cschool	\N	\N	c3e5a48d-4555-4c73-99b0-d7e9cba2c6c1	1	\N
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root	\N	\N	dd73cafb-beee-4826-848f-8df0e02b8a29	1	\N
\.


--
-- Data for Name: wagtailcore_pagelogentry; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_pagelogentry (id, label, action, data_json, "timestamp", content_changed, deleted, content_type_id, page_id, revision_id, user_id) FROM stdin;
1	Courses	wagtail.create	""	2021-05-04 02:58:59.953259+00	t	f	12	4	\N	1
2	Courses	wagtail.publish	null	2021-05-04 02:58:59.995343+00	t	f	12	4	1	1
3	Memberships	wagtail.create	""	2021-05-04 02:59:47.372572+00	t	f	15	5	\N	1
4	Memberships	wagtail.publish	null	2021-05-04 02:59:47.412076+00	t	f	15	5	2	1
5	Blog	wagtail.create	""	2021-05-04 03:00:24.250255+00	t	f	8	6	\N	1
6	Blog	wagtail.publish	null	2021-05-04 03:00:24.29161+00	t	f	8	6	3	1
7	Register	wagtail.create	""	2021-05-04 03:04:08.746657+00	t	f	17	7	\N	1
8	Register	wagtail.publish	null	2021-05-04 03:04:08.791579+00	t	f	17	7	4	1
9	Register	wagtail.edit	""	2021-05-04 03:05:14.637924+00	t	f	17	7	5	1
10	Register	wagtail.publish	null	2021-05-04 03:05:14.682411+00	t	f	17	7	5	1
11	Scratch course	wagtail.create	""	2021-05-06 22:48:43.528803+00	t	f	13	8	\N	1
12	Scratch course	wagtail.edit	""	2021-05-06 22:49:53.059044+00	t	f	13	8	7	1
13	Scratch course	wagtail.edit	""	2021-05-06 22:50:44.433545+00	t	f	13	8	8	1
14	Scratch course	wagtail.publish	null	2021-05-06 22:50:44.473841+00	f	f	13	8	8	1
15	MIT app inventor Level	wagtail.create	""	2021-05-06 23:19:44.919307+00	t	f	13	9	\N	1
16	Scratch course	wagtail.edit	""	2021-05-06 23:21:00.157253+00	t	f	13	8	10	1
17	Scratch course	wagtail.edit	""	2021-05-06 23:21:15.279986+00	t	f	13	8	11	1
18	Scratch course	wagtail.publish	null	2021-05-06 23:21:15.322582+00	f	f	13	8	11	1
19	MIT app inventor Level	wagtail.edit	""	2021-05-06 23:21:27.429899+00	t	f	13	9	12	1
20	MIT app inventor Level	wagtail.publish	null	2021-05-06 23:21:27.469676+00	t	f	13	9	12	1
21	Scratch course	wagtail.edit	""	2021-05-06 23:23:11.745706+00	t	f	13	8	13	1
22	Scratch course	wagtail.edit	""	2021-05-06 23:23:23.430117+00	t	f	13	8	14	1
23	Scratch course	wagtail.publish	null	2021-05-06 23:23:23.470856+00	f	f	13	8	14	1
24	MIT app inventor course	wagtail.edit	""	2021-05-06 23:29:43.294805+00	t	f	13	9	15	1
25	MIT app inventor course	wagtail.edit	""	2021-05-06 23:30:12.170407+00	t	f	13	9	16	1
26	MIT app inventor course	wagtail.rename	{"title": {"old": "MIT app inventor Level", "new": "MIT app inventor course"}}	2021-05-06 23:30:12.212044+00	f	f	13	9	16	1
27	MIT app inventor course	wagtail.publish	{"title": {"old": "MIT app inventor Level", "new": "MIT app inventor course"}}	2021-05-06 23:30:12.213727+00	f	f	13	9	16	1
28	Scratch course	wagtail.move	{"source": {"id": 4, "title": "Courses"}, "destination": {"id": 4, "title": "Courses"}}	2021-05-06 23:32:55.363175+00	f	f	1	8	\N	\N
29	Scratch course	wagtail.move	{"source": {"id": 4, "title": "Courses"}, "destination": {"id": 4, "title": "Courses"}}	2021-05-06 23:32:59.784419+00	f	f	1	8	\N	\N
30	Scratch course1	wagtail.create	""	2021-05-07 03:34:03.191949+00	t	f	13	10	\N	1
31	Scratch course1	wagtail.edit	""	2021-05-07 03:35:02.228514+00	t	f	13	10	18	1
32	Scratch course1	wagtail.publish	null	2021-05-07 03:35:02.297035+00	f	f	13	10	18	1
33	Scratch course	wagtail.move	{"source": {"id": 4, "title": "Courses"}, "destination": {"id": 10, "title": "Scratch course1"}}	2021-05-07 03:37:52.313356+00	f	f	13	8	\N	1
34	Scratch course	wagtail.edit	""	2021-05-07 03:38:58.824346+00	t	f	13	10	19	1
35	Scratch course	wagtail.edit	""	2021-05-07 03:39:14.285968+00	t	f	13	10	20	1
36	Scratch course	wagtail.rename	{"title": {"old": "Scratch course1", "new": "Scratch course"}}	2021-05-07 03:39:14.326092+00	f	f	13	10	20	1
37	Scratch course	wagtail.publish	{"title": {"old": "Scratch course1", "new": "Scratch course"}}	2021-05-07 03:39:14.327664+00	f	f	13	10	20	1
38	Courses	wagtail.edit	""	2021-05-07 03:41:47.06107+00	t	f	12	4	21	1
39	Scratch course	wagtail.edit	""	2021-05-07 03:45:37.61908+00	t	f	13	8	22	1
40	Scratch course	wagtail.edit	""	2021-05-07 03:45:47.279588+00	t	f	13	8	23	1
41	Scratch course	wagtail.publish	null	2021-05-07 03:45:47.320914+00	f	f	13	8	23	1
42	All session steps in scratch course	wagtail.edit	""	2021-05-07 03:50:00.278463+00	t	f	13	8	24	1
43	All session steps in scratch course	wagtail.edit	""	2021-05-07 03:50:10.253391+00	t	f	13	8	25	1
44	All session steps in scratch course	wagtail.rename	{"title": {"old": "Scratch course", "new": "All session steps in scratch course"}}	2021-05-07 03:50:10.29654+00	f	f	13	8	25	1
45	All session steps in scratch course	wagtail.publish	{"title": {"old": "Scratch course", "new": "All session steps in scratch course"}}	2021-05-07 03:50:10.298193+00	f	f	13	8	25	1
46	All session steps in scratch course	wagtail.edit	""	2021-05-07 03:52:13.237081+00	t	f	13	8	26	1
47	All session steps in scratch course	wagtail.move	{"source": {"id": 10, "title": "Scratch course"}, "destination": {"id": 4, "title": "Courses"}}	2021-05-07 03:54:17.520914+00	f	f	13	8	\N	1
48	All session steps in scratch course	wagtail.edit	""	2021-05-07 03:55:49.93411+00	t	f	13	8	27	1
49	Scratch course	wagtail.delete	""	2021-05-07 03:58:28.769356+00	f	t	13	10	\N	1
50	scratch course	wagtail.edit	""	2021-05-07 04:00:22.251815+00	t	f	13	8	28	1
51	scratch course	wagtail.edit	""	2021-05-07 04:00:36.279189+00	t	f	13	8	29	1
52	scratch course	wagtail.rename	{"title": {"old": "All session steps in scratch course", "new": "scratch course"}}	2021-05-07 04:00:36.321429+00	f	f	13	8	29	1
53	scratch course	wagtail.publish	{"title": {"old": "All session steps in scratch course", "new": "scratch course"}}	2021-05-07 04:00:36.323012+00	f	f	13	8	29	1
54	MIT app inventor course	wagtail.edit	""	2021-05-07 04:05:46.292887+00	t	f	13	9	30	1
55	MIT app inventor course	wagtail.edit	""	2021-05-07 04:05:59.513463+00	t	f	13	9	31	1
56	MIT app inventor course	wagtail.publish	null	2021-05-07 04:05:59.55486+00	t	f	13	9	31	1
57	Python course	wagtail.create	""	2021-05-07 04:20:14.157811+00	t	f	13	11	\N	1
58	Python course	wagtail.edit	""	2021-05-07 04:21:05.793896+00	t	f	13	11	33	1
59	Python course	wagtail.edit	""	2021-05-07 04:21:39.257698+00	t	f	13	11	34	1
60	Python course	wagtail.publish	null	2021-05-07 04:21:39.296525+00	f	f	13	11	34	1
61	MIT app inventor course	wagtail.edit	""	2021-05-07 04:22:08.511534+00	t	f	13	9	35	1
62	MIT app inventor course	wagtail.edit	""	2021-05-07 04:22:26.749029+00	t	f	13	9	36	1
63	MIT app inventor course	wagtail.publish	null	2021-05-07 04:22:26.789848+00	f	f	13	9	36	1
64	scratch course	wagtail.edit	""	2021-05-07 04:22:53.818553+00	t	f	13	8	37	1
65	scratch course	wagtail.edit	""	2021-05-07 04:23:03.649361+00	t	f	13	8	38	1
66	scratch course	wagtail.publish	null	2021-05-07 04:23:03.692567+00	f	f	13	8	38	1
67	Python course	wagtail.edit	""	2021-05-07 04:37:49.334307+00	t	f	13	11	39	1
68	Python course	wagtail.edit	""	2021-05-07 04:38:11.675494+00	t	f	13	11	40	1
69	Python course	wagtail.publish	null	2021-05-07 04:38:11.716621+00	t	f	13	11	40	1
70	Python course	wagtail.edit	""	2021-05-07 04:40:05.53974+00	t	f	13	11	41	1
71	Python course	wagtail.edit	""	2021-05-07 04:41:54.050437+00	t	f	13	11	42	1
72	Python course	wagtail.edit	""	2021-05-07 04:42:08.416036+00	t	f	13	11	43	1
73	Python course	wagtail.publish	null	2021-05-07 04:42:08.457682+00	t	f	13	11	43	1
74	Artificial intelligence (AI) course	wagtail.create	""	2021-05-07 04:56:55.077335+00	t	f	13	12	\N	1
75	Artificial intelligence (AI) course	wagtail.edit	""	2021-05-07 04:57:07.695125+00	t	f	13	12	45	1
76	Artificial intelligence (AI) course	wagtail.publish	null	2021-05-07 04:57:07.734879+00	t	f	13	12	45	1
77	Home	wagtail.edit	""	2021-05-07 05:01:37.425191+00	t	f	3	3	46	1
78	Home	wagtail.edit	""	2021-05-07 05:01:45.718462+00	t	f	3	3	47	1
79	Home	wagtail.publish	null	2021-05-07 05:01:45.746416+00	t	f	3	3	47	1
80	Courses	wagtail.delete	""	2021-05-07 05:04:04.17918+00	f	t	12	4	\N	1
81	Memberships	wagtail.delete	""	2021-05-07 05:04:04.182077+00	f	t	15	5	\N	1
82	Blog	wagtail.delete	""	2021-05-07 05:04:04.18441+00	f	t	8	6	\N	1
83	Register	wagtail.delete	""	2021-05-07 05:04:04.186912+00	f	t	17	7	\N	1
84	Home	wagtail.delete	""	2021-05-07 05:04:04.189059+00	f	t	3	3	\N	1
85	home	wagtail.create	""	2021-05-07 08:13:52.594245+00	t	f	3	13	\N	1
86	home	wagtail.publish	null	2021-05-07 08:13:52.640423+00	t	f	3	13	48	1
87	Blog	wagtail.create	""	2021-05-07 08:17:51.476012+00	t	f	8	14	\N	1
88	Blog	wagtail.publish	null	2021-05-07 08:17:51.521058+00	t	f	8	14	49	1
89	Courses	wagtail.create	""	2021-05-07 08:18:05.323225+00	t	f	12	15	\N	1
90	Courses	wagtail.publish	null	2021-05-07 08:18:05.367995+00	t	f	12	15	50	1
91	Memberships	wagtail.create	""	2021-05-07 08:18:23.452423+00	t	f	15	16	\N	1
92	Memberships	wagtail.publish	null	2021-05-07 08:18:23.497855+00	t	f	15	16	51	1
93	Blog	wagtail.edit	""	2021-05-07 08:20:03.654054+00	t	f	8	14	52	1
94	Blog	wagtail.publish	null	2021-05-07 08:20:03.68839+00	t	f	8	14	52	1
95	Blog	wagtail.delete	""	2021-05-07 08:20:27.120266+00	f	t	8	14	\N	1
96	Blog	wagtail.create	""	2021-05-07 08:21:23.162098+00	t	f	8	17	\N	1
97	Blog	wagtail.publish	null	2021-05-07 08:21:23.205373+00	t	f	8	17	53	1
98	Register	wagtail.create	""	2021-05-08 03:22:03.123143+00	t	f	17	18	\N	1
99	Register	wagtail.edit	""	2021-05-08 03:22:13.464759+00	t	f	17	18	55	1
100	Register	wagtail.publish	null	2021-05-08 03:22:13.495926+00	f	f	17	18	55	1
101	Our programs	wagtail.edit	""	2021-05-08 03:24:29.892465+00	t	f	12	15	56	1
102	Our programs	wagtail.edit	""	2021-05-08 03:24:36.720256+00	t	f	12	15	57	1
103	Our programs	wagtail.rename	{"title": {"old": "Courses", "new": "Our programs"}}	2021-05-08 03:24:36.750748+00	f	f	12	15	57	1
104	Our programs	wagtail.publish	{"title": {"old": "Courses", "new": "Our programs"}}	2021-05-08 03:24:36.752379+00	f	f	12	15	57	1
105	home	wagtail.edit	""	2021-05-08 03:29:38.193983+00	t	f	3	13	58	1
106	home	wagtail.edit	""	2021-05-08 03:29:48.401074+00	t	f	3	13	59	1
107	home	wagtail.publish	null	2021-05-08 03:29:48.432498+00	t	f	3	13	59	1
108	home	wagtail.edit	""	2021-05-08 03:33:08.996023+00	t	f	3	13	60	1
109	home	wagtail.edit	""	2021-05-08 03:33:15.316244+00	t	f	3	13	61	1
110	home	wagtail.publish	null	2021-05-08 03:33:15.347386+00	f	f	3	13	61	1
111	First program	wagtail.create	""	2021-05-08 04:00:23.200098+00	t	f	13	19	\N	1
112	First program	wagtail.edit	""	2021-05-08 04:00:45.465861+00	t	f	13	19	63	1
113	First program	wagtail.publish	null	2021-05-08 04:00:45.50975+00	t	f	13	19	63	1
114	First program	wagtail.edit	""	2021-05-08 04:02:52.57481+00	t	f	13	19	64	1
115	First program	wagtail.edit	""	2021-05-08 04:03:49.26851+00	t	f	13	19	65	1
116	First program	wagtail.publish	null	2021-05-08 04:03:49.316029+00	f	f	13	19	65	1
117	First program	wagtail.edit	""	2021-05-08 04:07:01.227851+00	t	f	13	19	66	1
118	First program	wagtail.edit	""	2021-05-08 04:07:46.247788+00	t	f	13	19	67	1
119	First program	wagtail.publish	null	2021-05-08 04:07:46.295812+00	f	f	13	19	67	1
120	First program	wagtail.edit	""	2021-05-08 04:12:01.283836+00	t	f	13	19	68	1
121	First program	wagtail.edit	""	2021-05-08 04:12:15.019954+00	t	f	13	19	69	1
122	First program	wagtail.publish	null	2021-05-08 04:12:15.066385+00	f	f	13	19	69	1
123	Courses	wagtail.edit	""	2021-05-08 04:16:27.337464+00	t	f	12	15	70	1
124	Courses	wagtail.edit	""	2021-05-08 04:16:34.7053+00	t	f	12	15	71	1
125	Courses	wagtail.rename	{"title": {"old": "Our programs", "new": "Courses"}}	2021-05-08 04:16:34.736573+00	f	f	12	15	71	1
126	Courses	wagtail.publish	{"title": {"old": "Our programs", "new": "Courses"}}	2021-05-08 04:16:34.738207+00	f	f	12	15	71	1
127	First program	wagtail.edit	""	2021-05-08 04:29:41.889931+00	t	f	13	19	72	1
128	First program	wagtail.edit	""	2021-05-08 04:29:58.80297+00	t	f	13	19	73	1
129	First program	wagtail.publish	null	2021-05-08 04:29:58.852823+00	f	f	13	19	73	1
130	Python course	wagtail.create	""	2021-05-08 04:41:49.907219+00	t	f	13	20	\N	1
131	Python course	wagtail.edit	""	2021-05-08 04:42:04.64815+00	t	f	13	20	75	1
132	Python course	wagtail.publish	null	2021-05-08 04:42:04.688139+00	t	f	13	20	75	1
133	Artificial intelligence (AI) course	wagtail.create	""	2021-05-08 04:55:33.274592+00	t	f	13	21	\N	1
134	Artificial intelligence (AI) course	wagtail.edit	""	2021-05-08 04:55:42.802029+00	t	f	13	21	77	1
135	Artificial intelligence (AI) course	wagtail.publish	null	2021-05-08 04:55:42.847908+00	t	f	13	21	77	1
136	Blockly course	wagtail.create	""	2021-05-08 05:16:58.09984+00	t	f	13	22	\N	1
137	Blockly course	wagtail.edit	""	2021-05-08 05:17:12.224719+00	t	f	13	22	79	1
138	Blockly course	wagtail.publish	null	2021-05-08 05:17:12.265221+00	t	f	13	22	79	1
139	3 months membership	wagtail.create	""	2021-05-09 07:15:08.789369+00	t	f	16	23	\N	1
140	3 months membership	wagtail.edit	""	2021-05-10 03:48:08.38004+00	t	f	16	23	81	1
141	HTML & CSS Course	wagtail.create	""	2021-05-10 04:42:58.91985+00	t	f	13	24	\N	1
142	HTML & CSS Course	wagtail.edit	""	2021-05-10 04:43:23.206115+00	t	f	13	24	83	1
143	HTML & CSS Course	wagtail.publish	null	2021-05-10 04:43:23.246514+00	t	f	13	24	83	1
144	3 months Membership	wagtail.create	""	2021-05-15 16:07:08.896931+00	t	f	16	25	\N	1
145	3 months Membership	wagtail.publish	null	2021-05-15 16:07:08.94311+00	t	f	16	25	84	1
146	3 months Membership	wagtail.delete	""	2021-05-15 16:52:41.919801+00	f	t	16	25	\N	1
147	3 months membership	wagtail.edit	""	2021-05-15 16:52:56.292248+00	t	f	16	23	85	1
148	3 months membership	wagtail.publish	null	2021-05-15 16:52:56.322678+00	f	f	16	23	85	1
149	العالمية STEM ثري سي مؤسسة تعليمية مصرية تم اعتمادها من منظمة	wagtail.create	""	2021-05-15 18:57:15.202921+00	t	f	8	26	\N	1
150	6 months membership	wagtail.create	""	2021-05-15 19:31:06.170585+00	t	f	16	27	\N	1
151	one year membership	wagtail.create	""	2021-05-15 19:32:09.255523+00	t	f	16	28	\N	1
152	one year membership	wagtail.edit	""	2021-05-15 19:32:42.218923+00	t	f	16	28	89	1
153	6 months membership	wagtail.edit	""	2021-05-15 19:33:26.563346+00	t	f	16	27	90	1
154	6 months membership	wagtail.publish	null	2021-05-15 19:33:26.599146+00	f	f	16	27	90	1
155	one year membership	wagtail.edit	""	2021-05-15 19:33:39.908391+00	t	f	16	28	91	1
156	one year membership	wagtail.publish	null	2021-05-15 19:33:39.938318+00	f	f	16	28	91	1
157	3C Creative Children Community	wagtail.create	""	2021-05-15 19:39:37.237195+00	t	f	17	29	\N	1
158	3C Creative Children Community	wagtail.edit	""	2021-05-15 19:39:45.718032+00	t	f	17	29	93	1
159	3C Creative Children Community	wagtail.publish	null	2021-05-15 19:39:45.755315+00	f	f	17	29	93	1
160	3C Creative Children Community	wagtail.delete	""	2021-05-15 19:46:39.299618+00	f	t	17	29	\N	1
161	Register	wagtail.delete	""	2021-05-15 19:46:39.302499+00	f	t	17	18	\N	1
162	register	wagtail.create	""	2021-05-15 19:55:37.335069+00	t	f	17	30	\N	1
163	register	wagtail.publish	null	2021-05-15 19:55:37.406289+00	t	f	17	30	94	1
164	Register NOW	wagtail.edit	""	2021-05-15 19:56:04.441525+00	t	f	17	30	95	1
165	Register NOW	wagtail.rename	{"title": {"old": "register", "new": "Register NOW"}}	2021-05-15 19:56:04.500647+00	f	f	17	30	95	1
166	Register NOW	wagtail.publish	{"title": {"old": "register", "new": "Register NOW"}}	2021-05-15 19:56:04.502379+00	t	f	17	30	95	1
167	Register NOW	wagtail.edit	""	2021-05-15 19:57:20.970937+00	t	f	17	30	96	1
168	Register NOW	wagtail.publish	null	2021-05-15 19:57:21.028092+00	t	f	17	30	96	1
169	Register NOW	wagtail.edit	""	2021-05-15 19:58:07.200733+00	t	f	17	30	97	1
170	Register NOW	wagtail.publish	null	2021-05-15 19:58:07.255929+00	t	f	17	30	97	1
171	our programs	wagtail.edit	""	2021-05-15 20:02:09.954972+00	t	f	12	15	98	1
172	our programs	wagtail.rename	{"title": {"old": "Courses", "new": "our programs"}}	2021-05-15 20:02:09.988424+00	f	f	12	15	98	1
173	our programs	wagtail.publish	{"title": {"old": "Courses", "new": "our programs"}}	2021-05-15 20:02:09.990147+00	t	f	12	15	98	1
174	3 months membership	wagtail.edit	""	2021-05-16 15:24:10.528729+00	t	f	16	23	99	1
175	3 months membership	wagtail.publish	null	2021-05-16 15:24:10.562337+00	t	f	16	23	99	1
176	المؤسسة الأكثر خبرة في الشرق الأوسط تم اعتمادها من منظمة STEM	wagtail.create	""	2021-05-24 00:29:21.131088+00	t	f	8	31	\N	1
177	ليه تعلم طفلك برمجة في ثري سي ?!	wagtail.edit	""	2021-05-24 00:36:31.400647+00	t	f	8	31	101	1
178	ليه تعلم طفلك برمجة في ثري سي ?!	wagtail.edit	""	2021-05-24 00:36:36.822258+00	t	f	8	31	102	1
179	ليه تعلم طفلك برمجة في ثري سي ?!	wagtail.rename	{"title": {"old": "\\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u062e\\u0628\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0634\\u0631\\u0642 \\u0627\\u0644\\u0623\\u0648\\u0633\\u0637 \\u062a\\u0645 \\u0627\\u0639\\u062a\\u0645\\u0627\\u062f\\u0647\\u0627 \\u0645\\u0646 \\u0645\\u0646\\u0638\\u0645\\u0629 STEM", "new": "\\u0644\\u064a\\u0647 \\u062a\\u0639\\u0644\\u0645 \\u0637\\u0641\\u0644\\u0643 \\u0628\\u0631\\u0645\\u062c\\u0629 \\u0641\\u064a \\u062b\\u0631\\u064a \\u0633\\u064a ?!"}}	2021-05-24 00:36:36.855033+00	f	f	8	31	102	1
180	ليه تعلم طفلك برمجة في ثري سي ?!	wagtail.publish	{"title": {"old": "\\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u062e\\u0628\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0634\\u0631\\u0642 \\u0627\\u0644\\u0623\\u0648\\u0633\\u0637 \\u062a\\u0645 \\u0627\\u0639\\u062a\\u0645\\u0627\\u062f\\u0647\\u0627 \\u0645\\u0646 \\u0645\\u0646\\u0638\\u0645\\u0629 STEM", "new": "\\u0644\\u064a\\u0647 \\u062a\\u0639\\u0644\\u0645 \\u0637\\u0641\\u0644\\u0643 \\u0628\\u0631\\u0645\\u062c\\u0629 \\u0641\\u064a \\u062b\\u0631\\u064a \\u0633\\u064a ?!"}}	2021-05-24 00:36:36.856703+00	f	f	8	31	102	1
181	JavaScript Course	wagtail.create	""	2021-07-28 09:05:25.598596+00	t	f	13	32	\N	1
182	JavaScript Course	wagtail.edit	""	2021-07-28 09:06:26.148123+00	t	f	13	32	104	1
183	JavaScript Course	wagtail.publish	null	2021-07-28 09:06:26.193743+00	t	f	13	32	104	1
184	JavaScript Course	wagtail.edit	""	2021-07-28 09:08:45.408019+00	t	f	13	32	105	1
185	JavaScript Course	wagtail.publish	null	2021-07-28 09:08:45.453989+00	t	f	13	32	105	1
186	JavaScript Course	wagtail.edit	""	2021-07-28 09:10:16.083455+00	t	f	13	32	106	1
187	JavaScript Course	wagtail.publish	null	2021-07-28 09:10:16.132303+00	t	f	13	32	106	1
188	Flask Course	wagtail.create	""	2021-07-28 09:31:05.707316+00	t	f	13	33	\N	1
189	Flask Course	wagtail.edit	""	2021-07-28 09:32:16.873413+00	t	f	13	33	108	1
190	Flask Course	wagtail.publish	null	2021-07-28 09:32:16.912709+00	t	f	13	33	108	1
191	Flutter Course	wagtail.create	""	2021-07-28 10:28:38.595547+00	t	f	13	34	\N	1
192	Flutter Course	wagtail.edit	""	2021-07-28 10:28:59.099473+00	t	f	13	34	110	1
193	Flutter Course	wagtail.publish	null	2021-07-28 10:28:59.139751+00	t	f	13	34	110	1
194	Flutter Course	wagtail.edit	""	2021-07-28 10:33:26.309144+00	t	f	13	34	111	1
195	Flutter Course	wagtail.edit	""	2021-07-28 10:33:34.649332+00	t	f	13	34	112	1
196	Flutter Course	wagtail.publish	null	2021-07-28 10:33:34.689148+00	f	f	13	34	112	1
197	العالمية STEM ثري سي مؤسسة تعليمية مصرية تم اعتمادها من منظمة	wagtail.delete	""	2021-09-03 15:26:36.14585+00	f	t	8	26	\N	2
198	ليه تعلم طفلك برمجة في ثري سي ?!	wagtail.delete	""	2021-09-03 15:27:07.075502+00	f	t	8	31	\N	2
199	Blog	wagtail.delete	""	2021-09-03 15:34:30.839642+00	f	t	8	17	\N	2
200	Our Blog	wagtail.create	""	2021-09-03 15:35:49.798339+00	t	f	8	45	\N	2
201	Our Blog	wagtail.publish	null	2021-09-03 15:35:49.844417+00	t	f	8	45	113	2
202	Blog	wagtail.edit	""	2021-09-03 15:37:28.764417+00	t	f	8	45	114	2
203	Blog	wagtail.rename	{"title": {"old": "Our Blog", "new": "Blog"}}	2021-09-03 15:37:28.797336+00	f	f	8	45	114	2
204	Blog	wagtail.publish	{"title": {"old": "Our Blog", "new": "Blog"}}	2021-09-03 15:37:28.799003+00	t	f	8	45	114	2
205	Thanks!	wagtail.edit	""	2021-11-30 23:21:15.977317+00	t	f	3	13	115	1
206	Book	wagtail.edit	""	2021-11-30 23:22:10.066387+00	t	f	17	30	116	1
207	Book Now Your online Trial Session !	wagtail.edit	""	2021-11-30 23:24:48.167566+00	t	f	17	30	117	1
208	Book Now Your online Trial Session !	wagtail.edit	""	2021-11-30 23:25:18.605882+00	t	f	17	30	118	1
209	Book Now Your online Trial Session !	wagtail.edit	""	2021-11-30 23:31:18.022456+00	t	f	17	30	119	1
210	Welcome to 3C Coding for kids Get Your Trial Session For free  !	wagtail.edit	""	2021-11-30 23:33:33.930204+00	t	f	17	30	120	1
211	Welcome to 3C Coding for kids Get Your Trial Session For free  !	wagtail.edit	""	2021-11-30 23:36:57.86772+00	t	f	17	30	121	1
212	Welcome to 3C Coding for kids Get Your Trial Session For free !	wagtail.edit	""	2021-12-01 01:59:45.465399+00	t	f	17	30	122	1
213	Welcome to 3C Coding for kids Get Your Trial Session For free !	wagtail.edit	""	2021-12-01 01:59:51.955544+00	t	f	17	30	123	1
214	Welcome to 3C Coding for kids Get Your Trial Session For free !	wagtail.rename	{"title": {"old": "Register NOW", "new": "Welcome to 3C Coding for kids Get Your Trial Session For free !"}}	2021-12-01 01:59:52.006422+00	f	f	17	30	123	1
215	Welcome to 3C Coding for kids Get Your Trial Session For free !	wagtail.publish	{"title": {"old": "Register NOW", "new": "Welcome to 3C Coding for kids Get Your Trial Session For free !"}}	2021-12-01 01:59:52.008481+00	f	f	17	30	123	1
216	Home	wagtail.edit	""	2021-12-07 05:42:16.772759+00	t	f	3	13	124	2
217	Home	wagtail.rename	{"title": {"old": "home", "new": "Home"}}	2021-12-07 05:42:16.806129+00	f	f	3	13	124	2
218	Home	wagtail.publish	{"title": {"old": "home", "new": "Home"}}	2021-12-07 05:42:16.807911+00	t	f	3	13	124	2
219	Blog	wagtail.delete	""	2021-12-07 06:02:56.792042+00	f	t	8	45	\N	2
220	First program	wagtail.delete	""	2021-12-07 06:03:05.333585+00	f	t	13	19	\N	2
221	Python course	wagtail.delete	""	2021-12-07 06:03:05.336624+00	f	t	13	20	\N	2
222	Artificial intelligence (AI) course	wagtail.delete	""	2021-12-07 06:03:05.339043+00	f	t	13	21	\N	2
223	Blockly course	wagtail.delete	""	2021-12-07 06:03:05.341327+00	f	t	13	22	\N	2
224	HTML & CSS Course	wagtail.delete	""	2021-12-07 06:03:05.343591+00	f	t	13	24	\N	2
225	JavaScript Course	wagtail.delete	""	2021-12-07 06:03:05.34582+00	f	t	13	32	\N	2
226	Flask Course	wagtail.delete	""	2021-12-07 06:03:05.348098+00	f	t	13	33	\N	2
227	Flutter Course	wagtail.delete	""	2021-12-07 06:03:05.350352+00	f	t	13	34	\N	2
228	our programs	wagtail.delete	""	2021-12-07 06:03:05.352594+00	f	t	12	15	\N	2
229	3 months membership	wagtail.delete	""	2021-12-07 06:03:12.889302+00	f	t	16	23	\N	2
230	6 months membership	wagtail.delete	""	2021-12-07 06:03:12.892082+00	f	t	16	27	\N	2
231	one year membership	wagtail.delete	""	2021-12-07 06:03:12.894284+00	f	t	16	28	\N	2
232	Memberships	wagtail.delete	""	2021-12-07 06:03:12.896457+00	f	t	15	16	\N	2
233	Old Home	wagtail.edit	""	2021-12-07 06:03:28.949086+00	t	f	3	13	125	2
234	Old Home	wagtail.rename	{"title": {"old": "Home", "new": "Old Home"}}	2021-12-07 06:03:28.983678+00	f	f	3	13	125	2
235	Old Home	wagtail.publish	{"title": {"old": "Home", "new": "Old Home"}}	2021-12-07 06:03:28.985469+00	t	f	3	13	125	2
236	Home	wagtail.edit	""	2021-12-07 06:04:45.246845+00	t	f	3	13	126	2
237	Home	wagtail.rename	{"title": {"old": "Old Home", "new": "Home"}}	2021-12-07 06:04:45.283063+00	f	f	3	13	126	2
238	Home	wagtail.publish	{"title": {"old": "Old Home", "new": "Home"}}	2021-12-07 06:04:45.285219+00	t	f	3	13	126	2
239	Home_old	wagtail.edit	""	2021-12-07 06:06:40.004295+00	t	f	3	13	127	2
240	Home_old	wagtail.rename	{"title": {"old": "Home", "new": "Home_old"}}	2021-12-07 06:06:40.041005+00	f	f	3	13	127	2
241	Home_old	wagtail.publish	{"title": {"old": "Home", "new": "Home_old"}}	2021-12-07 06:06:40.042845+00	t	f	3	13	127	2
242	Home_old	wagtail.edit	""	2021-12-07 06:08:00.663119+00	t	f	3	13	128	2
243	Home_old	wagtail.publish	null	2021-12-07 06:08:00.704949+00	t	f	3	13	128	2
244	3Cschool	wagtail.create	""	2021-12-07 06:08:44.359089+00	t	f	3	46	\N	2
245	3Cschool	wagtail.publish	null	2021-12-07 06:08:44.405378+00	t	f	3	46	129	2
246	Welcome to 3C Coding for kids Get Your Trial Session For free !	wagtail.move	{"source": {"id": 13, "title": "Home_old"}, "destination": {"id": 46, "title": "3Cschool"}}	2021-12-07 06:09:57.210875+00	f	f	17	30	\N	2
247	Home_old	wagtail.delete	""	2021-12-07 06:10:07.530246+00	f	t	3	13	\N	2
248	Welcome to 3C Coding for kids Get Your Trial Session For free !	wagtail.edit	""	2021-12-07 06:11:31.173314+00	t	f	17	30	130	2
249	Welcome to 3C Coding for kids Get Your Trial Session For free !	wagtail.publish	null	2021-12-07 06:11:31.229886+00	t	f	17	30	130	2
250	Start now in 3C School Programs	wagtail.edit	""	2022-01-18 14:18:57.459431+00	t	f	17	30	131	1
251	Start now in 3C School Programs	wagtail.edit	""	2022-01-18 14:19:52.950924+00	t	f	17	30	132	1
252	Start now in 3C School Programs	wagtail.edit	""	2022-01-18 14:37:28.548154+00	t	f	17	30	133	1
253	Start now in 3C School Programs	wagtail.rename	{"title": {"old": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "new": "Start now in 3C School Programs"}}	2022-01-18 14:37:28.589763+00	f	f	17	30	133	1
254	Start now in 3C School Programs	wagtail.publish	{"title": {"old": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "new": "Start now in 3C School Programs"}}	2022-01-18 14:37:28.591473+00	f	f	17	30	133	1
255	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:50:19.933858+00	t	f	17	30	134	1
256	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:51:41.825464+00	t	f	17	30	135	1
257	Apply now in 3C Online Programming school	wagtail.rename	{"title": {"old": "Start now in 3C School Programs", "new": "Apply now in 3C Online Programming school"}}	2022-01-26 11:51:41.871967+00	f	f	17	30	135	1
258	Apply now in 3C Online Programming school	wagtail.publish	{"title": {"old": "Start now in 3C School Programs", "new": "Apply now in 3C Online Programming school"}}	2022-01-26 11:51:41.873795+00	t	f	17	30	135	1
259	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:52:45.800322+00	t	f	17	30	136	1
260	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:52:52.812027+00	t	f	17	30	137	1
261	Apply now in 3C Online Programming school	wagtail.publish	null	2022-01-26 11:52:52.852928+00	f	f	17	30	137	1
262	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:53:40.928778+00	t	f	17	30	138	1
263	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:53:46.694714+00	t	f	17	30	139	1
264	Apply now in 3C Online Programming school	wagtail.publish	null	2022-01-26 11:53:46.735738+00	f	f	17	30	139	1
265	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:56:12.27938+00	t	f	17	30	140	1
266	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:56:18.211657+00	t	f	17	30	141	1
267	Apply now in 3C Online Programming school	wagtail.publish	null	2022-01-26 11:56:18.253048+00	f	f	17	30	141	1
268	Apply now in 3C Online Programming school	wagtail.edit	""	2022-01-26 11:58:04.46362+00	t	f	17	30	142	1
269	Apply now in 3C Online Programming school	wagtail.publish	null	2022-01-26 11:58:04.519984+00	t	f	17	30	142	1
270	Apply now in 3C Online Programming School	wagtail.edit	""	2022-06-20 14:50:08.482559+00	t	f	17	30	143	1
271	Apply now in 3C Online Programming School	wagtail.rename	{"title": {"old": "Apply now in 3C Online Programming school", "new": "Apply now in 3C Online Programming School"}}	2022-06-20 14:50:08.58322+00	f	f	17	30	143	1
272	Apply now in 3C Online Programming School	wagtail.publish	{"title": {"old": "Apply now in 3C Online Programming school", "new": "Apply now in 3C Online Programming School"}}	2022-06-20 14:50:08.585228+00	t	f	17	30	143	1
273	Apply now in 3C Online Programming School	wagtail.edit	""	2022-06-20 14:51:01.744691+00	t	f	17	30	144	1
274	Apply now in 3C Online Programming School	wagtail.publish	null	2022-06-20 14:51:01.805295+00	t	f	17	30	144	1
275	Apply now in 3C Online Programming School	wagtail.edit	""	2022-06-20 14:51:59.081432+00	t	f	17	30	145	1
276	Apply now in 3C Online Programming School	wagtail.publish	null	2022-06-20 14:51:59.139928+00	t	f	17	30	145	1
277	Apply now in 3C Online Programming School	wagtail.edit	""	2022-06-20 14:52:24.612795+00	t	f	17	30	146	1
278	Apply now in 3C Online Programming School	wagtail.publish	null	2022-06-20 14:52:24.672528+00	t	f	17	30	146	1
279	Apply now in 3C Online Programming School	wagtail.edit	""	2022-07-22 14:17:29.628911+00	t	f	17	30	147	1
280	Apply now in 3C Online Programming School	wagtail.edit	""	2022-07-22 14:18:23.020633+00	t	f	17	30	148	1
281	Apply now in 3C Online Programming School	wagtail.publish	null	2022-07-22 14:18:23.063048+00	f	f	17	30	148	1
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
147	f	2022-07-22 14:17:29.613814+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming School", "draft_title": "Apply now in 3C Online Programming School", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T21:55:37.375Z", "last_published_at": "2022-06-20T16:52:24.640Z", "latest_revision_created_at": "2022-06-20T16:52:24.603Z", "live_revision": 146, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
140	f	2022-01-26 11:56:12.270162+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:53:46.704Z", "latest_revision_created_at": "2022-01-26T11:53:46.685Z", "live_revision": 139, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 22, "sort_order": 7, "clean_name": "membership", "label": "membership System?", "field_type": "dropdown", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "2200,6000", "help_text": "please choose your membership", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
148	f	2022-07-22 14:18:23.010462+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming School", "draft_title": "Apply now in 3C Online Programming School", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T21:55:37.375Z", "last_published_at": "2022-06-20T16:52:24.640Z", "latest_revision_created_at": "2022-07-22T16:17:29.613Z", "live_revision": 146, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
134	f	2022-01-26 11:50:19.924853+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Start now in 3C School Programs", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-18T14:37:28.557Z", "latest_revision_created_at": "2022-01-18T14:37:28.539Z", "live_revision": 133, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": null, "sort_order": 7, "clean_name": "", "label": "membership ?!", "field_type": "multiselect", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "", "help_text": "please choose your membership", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
138	f	2022-01-26 11:53:40.91961+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:52:52.820Z", "latest_revision_created_at": "2022-01-26T11:52:52.802Z", "live_revision": 137, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 22, "sort_order": 7, "clean_name": "membership", "label": "membership ?!", "field_type": "multiselect", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "2200,6000", "help_text": "please choose your membership", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
129	f	2021-12-07 06:08:44.368799+00	{"pk": 46, "path": "00010002", "depth": 2, "numchild": 0, "translation_key": "c3e5a48d-4555-4c73-99b0-d7e9cba2c6c1", "locale": 1, "title": "3Cschool", "draft_title": "3Cschool", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": 2, "seo_title": "", "show_in_menus": true, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "body": ""}	\N	46	2
139	f	2022-01-26 11:53:46.685319+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:52:52.820Z", "latest_revision_created_at": "2022-01-26T11:53:40.919Z", "live_revision": 137, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 22, "sort_order": 7, "clean_name": "membership", "label": "membership ?!", "field_type": "multiselect", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "2200,6000", "help_text": "please choose your membership", "page": null}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
120	f	2021-11-30 23:33:33.919588+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Welcome to 3C Coding for kids Get Your Trial Session For free  !", "draft_title": "Book Now Your online Trial Session !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-11-30T23:31:18.013Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>start your child journey by amazing trial session !</p>", "thank_you_text": "", "thank_you_page": 13, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
117	f	2021-11-30 23:24:48.15575+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Book Now Your online Trial Session !", "draft_title": "Book", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-11-30T23:22:10.057Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p></p><embed alt=\\"STEM\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"11\\"/><p></p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
119	f	2021-11-30 23:31:18.013166+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Book Now Your online Trial Session !", "draft_title": "Book Now Your online Trial Session !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-11-30T23:25:18.595Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p></p><embed alt=\\"STEM\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"11\\"/><p></p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
144	f	2022-06-20 14:51:01.735398+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming School", "draft_title": "Apply now in 3C Online Programming School", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-06-20T14:50:08.524Z", "latest_revision_created_at": "2022-06-20T14:50:08.458Z", "live_revision": 143, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 23, "sort_order": 8, "clean_name": "program", "label": "Program", "field_type": "dropdown", "required": false, "choices": "Offline, Online", "default_value": "Offline", "help_text": "Preferred program", "page": 30}]}	\N	30	1
94	f	2021-05-15 19:55:37.346589+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "register", "draft_title": "register", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>3C Online registration form</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 19, "sort_order": 6, "clean_name": "membership_system", "label": "membership system ?", "field_type": "multiselect", "required": true, "choices": "3months membership, 6 months membership, one-year membership,", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 7, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
137	f	2022-01-26 11:52:52.802502+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:51:41.836Z", "latest_revision_created_at": "2022-01-26T11:52:45.791Z", "live_revision": 135, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 22, "sort_order": 7, "clean_name": "membership", "label": "membership ?!", "field_type": "multiselect", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "please choose your membership", "help_text": "please choose your membership", "page": null}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
97	f	2021-05-15 19:58:07.190905+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Register NOW", "draft_title": "Register NOW", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:57:20.996Z", "latest_revision_created_at": "2021-05-15T19:57:20.962Z", "live_revision": 96, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>3C Online registration form</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 7, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
116	f	2021-11-30 23:22:10.057266+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Book", "draft_title": "Register NOW", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-05-15T19:58:07.190Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>3C Online registration form</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 7, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
95	f	2021-05-15 19:56:04.432645+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Register NOW", "draft_title": "register", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:55:37.375Z", "latest_revision_created_at": "2021-05-15T19:55:37.346Z", "live_revision": 94, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>3C Online registration form</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 19, "sort_order": 6, "clean_name": "membership_system", "label": "membership system ?", "field_type": "multiselect", "required": true, "choices": "3months membership, 6 months membership, one-year membership,", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 7, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
133	f	2022-01-18 14:37:28.539047+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Start now in 3C School Programs", "draft_title": "Start now in 3C School Programs", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-12-07T06:11:31.198Z", "latest_revision_created_at": "2022-01-18T14:19:52.940Z", "live_revision": 130, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>Apply now</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
141	f	2022-01-26 11:56:18.202451+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:53:46.704Z", "latest_revision_created_at": "2022-01-26T11:56:12.270Z", "live_revision": 139, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 22, "sort_order": 7, "clean_name": "membership", "label": "membership System?", "field_type": "dropdown", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "2200,6000", "help_text": "please choose your membership", "page": null}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
123	f	2021-12-01 01:59:51.946278+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "draft_title": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-12-01T01:59:45.456Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>start your child journey by amazing trial session !</p>", "thank_you_text": "", "thank_you_page": 13, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
135	f	2022-01-26 11:51:41.816082+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-18T14:37:28.557Z", "latest_revision_created_at": "2022-01-26T11:50:19.924Z", "live_revision": 133, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": null, "sort_order": 7, "clean_name": "", "label": "membership ?!", "field_type": "multiselect", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "", "help_text": "please choose your membership", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
118	f	2021-11-30 23:25:18.595855+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Book Now Your online Trial Session !", "draft_title": "Book Now Your online Trial Session !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-11-30T23:24:48.155Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p></p><embed alt=\\"STEM\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"11\\"/><p></p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
131	f	2022-01-18 14:18:57.441342+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Start now in 3C School Programs", "draft_title": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-12-07T06:11:31.198Z", "latest_revision_created_at": "2021-12-07T06:11:31.163Z", "live_revision": 130, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>start your child journey by amazing trial session !</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
136	f	2022-01-26 11:52:45.791255+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:51:41.836Z", "latest_revision_created_at": "2022-01-26T11:51:41.816Z", "live_revision": 135, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 22, "sort_order": 7, "clean_name": "membership", "label": "membership ?!", "field_type": "multiselect", "required": true, "choices": "3-months membership (2950EGP Before - 2200EGP After) ,\\r\\nOne year Membership ( 9000 EGP Before - 6000EGP After )", "default_value": "please choose your membership", "help_text": "please choose your membership", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
121	f	2021-11-30 23:36:57.858044+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Welcome to 3C Coding for kids Get Your Trial Session For free  !", "draft_title": "Welcome to 3C Coding for kids Get Your Trial Session For free  !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-11-30T23:33:33.919Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>start your child journey by amazing trial session !</p>", "thank_you_text": "", "thank_you_page": 13, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
143	f	2022-06-20 14:50:08.458513+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming School", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:58:04.488Z", "latest_revision_created_at": "2022-01-26T11:58:04.454Z", "live_revision": 142, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": null, "sort_order": 8, "clean_name": "", "label": "Program", "field_type": "dropdown", "required": false, "choices": "Offline, Online", "default_value": "Offline", "help_text": "", "page": 30}]}	\N	30	1
96	f	2021-05-15 19:57:20.962035+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Register NOW", "draft_title": "Register NOW", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:56:04.468Z", "latest_revision_created_at": "2021-05-15T19:56:04.432Z", "live_revision": 95, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>3C Online registration form</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 19, "sort_order": 6, "clean_name": "membership_system", "label": "membership system ?", "field_type": "multiselect", "required": true, "choices": "3months membership, 6 months membership, one-year membership,", "default_value": "", "help_text": "please select membership system", "page": 30}, {"pk": 20, "sort_order": 7, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
122	f	2021-12-01 01:59:45.456013+00	{"pk": 30, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "draft_title": "Welcome to 3C Coding for kids Get Your Trial Session For free  !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-05-15T19:58:07.224Z", "latest_revision_created_at": "2021-11-30T23:36:57.858Z", "live_revision": 97, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>start your child journey by amazing trial session !</p>", "thank_you_text": "", "thank_you_page": 13, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
130	f	2021-12-07 06:11:31.163607+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "draft_title": "Welcome to 3C Coding for kids Get Your Trial Session For free !", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-12-01T01:59:51.966Z", "latest_revision_created_at": "2021-12-01T01:59:51.946Z", "live_revision": 123, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>start your child journey by amazing trial session !</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	2
145	f	2022-06-20 14:51:59.071816+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming School", "draft_title": "Apply now in 3C Online Programming School", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-06-20T14:51:01.772Z", "latest_revision_created_at": "2022-06-20T14:51:01.735Z", "live_revision": 144, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 23, "sort_order": 8, "clean_name": "program", "label": "Program", "field_type": "dropdown", "required": false, "choices": "Offline, Online", "default_value": "Preferred program", "help_text": "Preferred program", "page": 30}]}	\N	30	1
132	f	2022-01-18 14:19:52.940778+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Start now in 3C School Programs", "draft_title": "Start now in 3C School Programs", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": true, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2021-12-07T06:11:31.198Z", "latest_revision_created_at": "2022-01-18T14:18:57.441Z", "live_revision": 130, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "<p>Apply now</p>", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}, {"pk": 21, "sort_order": 7, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": null}]}	\N	30	1
142	f	2022-01-26 11:58:04.454135+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming school", "draft_title": "Apply now in 3C Online Programming school", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-01-26T11:56:18.220Z", "latest_revision_created_at": "2022-01-26T11:56:18.202Z", "live_revision": 141, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}]}	\N	30	1
146	f	2022-06-20 14:52:24.60318+00	{"pk": 30, "path": "000100020001", "depth": 3, "numchild": 0, "translation_key": "430d01ae-4020-41cc-b2b3-5e14799ad0ca", "locale": 1, "title": "Apply now in 3C Online Programming School", "draft_title": "Apply now in 3C Online Programming School", "slug": "register", "content_type": 17, "live": true, "has_unpublished_changes": false, "url_path": "/home/register/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-05-15T19:55:37.375Z", "last_published_at": "2022-06-20T14:51:59.107Z", "latest_revision_created_at": "2022-06-20T14:51:59.071Z", "live_revision": 145, "alias_of": null, "to_address": "", "from_address": "", "subject": "", "intro": "", "thank_you_text": "", "thank_you_page": null, "form_fields": [{"pk": 13, "sort_order": 0, "clean_name": "childs_name", "label": "child's name?", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 14, "sort_order": 1, "clean_name": "age", "label": "age", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 15, "sort_order": 2, "clean_name": "school", "label": "school?!", "field_type": "singleline", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 16, "sort_order": 3, "clean_name": "mobile_number", "label": "mobile number ?", "field_type": "number", "required": true, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 17, "sort_order": 4, "clean_name": "whats_app_number", "label": "whats app number ?", "field_type": "number", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 18, "sort_order": 5, "clean_name": "e_mail", "label": "e-mail ?", "field_type": "email", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 20, "sort_order": 6, "clean_name": "home_address", "label": "home address ?!", "field_type": "singleline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 21, "sort_order": 8, "clean_name": "any_suggestions", "label": "any suggestions ?!", "field_type": "multiline", "required": false, "choices": "", "default_value": "", "help_text": "", "page": 30}, {"pk": 23, "sort_order": 8, "clean_name": "program", "label": "Program", "field_type": "dropdown", "required": false, "choices": "Preferred program, Offline, Online", "default_value": "Preferred program", "help_text": "Preferred program", "page": 30}]}	\N	30	1
\.


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
4	3cschool.net	80	t	46	3cschool
\.


--
-- Data for Name: wagtailcore_task; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_task (id, name, active, content_type_id) FROM stdin;
1	Moderators approval	t	2
\.


--
-- Data for Name: wagtailcore_taskstate; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_taskstate (id, status, started_at, finished_at, content_type_id, page_revision_id, task_id, workflow_state_id, finished_by_id, comment) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflow; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_workflow (id, name, active) FROM stdin;
1	Moderators approval	t
\.


--
-- Data for Name: wagtailcore_workflowpage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_workflowpage (page_id, workflow_id) FROM stdin;
1	1
\.


--
-- Data for Name: wagtailcore_workflowstate; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_workflowstate (id, status, created_at, current_task_state_id, page_id, requested_by_id, workflow_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflowtask; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailcore_workflowtask (id, sort_order, task_id, workflow_id) FROM stdin;
1	0	1	1
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtaildocs_uploadeddocument; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtaildocs_uploadeddocument (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated, hash) FROM stdin;
1	https://www.youtube.com/watch?v=9ReqYOhcpuc&ab_channel=HazemElSeddiq	\N	video	<iframe width="200" height="113" src="https://www.youtube.com/embed/9ReqYOhcpuc?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	وعي ٢٠ | توعية عن الشهوة وأبعادها وضرورة فهم آثار الاستسلام لها على النفس والمجتمعات	Hazem El Seddiq	YouTube	https://i.ytimg.com/vi/9ReqYOhcpuc/hqdefault.jpg	200	113	2021-09-03 14:58:32.936509+00	ac3d2ae7fc604347449a01270db5c03c
\.


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
2	{"childs_name": "Mostafa Elasaar", "age": "7", "school": "privilege", "mobile_number": "1200713605", "whats_app_number": "1200713605", "e_mail": "mostafa.elaasar.mitapp@gmail.com", "home_address": "efkwjfw", "any_suggestions": "programer"}	2021-09-25 18:45:51.942674+00	30
3	{"childs_name": "Patrick Bassem Fouad", "age": "11", "school": "Rajac language school", "mobile_number": "1143942240", "whats_app_number": "1143942240", "e_mail": "feby.metry@gmail.com", "home_address": "Shobra misr", "any_suggestions": "He studied robots"}	2021-10-25 11:43:20.075009+00	30
4	{"childs_name": "hosaa", "age": "15", "school": "egyptuo", "mobile_number": "100", "whats_app_number": "1000", "e_mail": "hosamhosnyprof@gmail.com", "home_address": "caro", "any_suggestions": "no"}	2021-11-30 23:35:54.893983+00	30
5	{"childs_name": "Ahmed", "age": "15", "school": "cairo", "mobile_number": "1007450312", "whats_app_number": "10007450312", "e_mail": "hosamhosnyprof@gmail.com", "home_address": "hosamhosnyprof@gmail.com", "any_suggestions": "thx"}	2021-12-01 02:03:32.731581+00	30
6	{"childs_name": "Aml", "age": "11", "school": "HA", "mobile_number": "1274598759", "whats_app_number": "1274598759", "e_mail": "amlhossam1992@gmail.com", "home_address": "23 omer louran alex", "any_suggestions": "No"}	2021-12-01 02:04:41.586708+00	30
7	{"childs_name": "rf", "age": "25", "school": "r", "mobile_number": "1225956167", "whats_app_number": "1225956165", "e_mail": "saadelkheety@gmail.com", "home_address": "15, kedwetennemeery", "any_suggestions": "dd"}	2021-12-07 05:44:11.611126+00	30
8	{"childs_name": "rf", "age": "25", "school": "r", "mobile_number": "1225956167", "whats_app_number": null, "e_mail": "saadelkheety@gmail.com", "home_address": "15, kedwetennemeery", "any_suggestions": ""}	2021-12-07 06:12:22.858614+00	30
9	{"childs_name": "ahmed", "age": "9", "school": "cairo", "mobile_number": "1007450312", "whats_app_number": "1007450312", "e_mail": "hosamhosnyprof@gmail.com", "home_address": "cairo", "any_suggestions": "asf"}	2021-12-08 13:50:24.787668+00	30
10	{"childs_name": "rf", "age": "25", "school": "r", "mobile_number": "1225956167", "whats_app_number": null, "e_mail": "saadelkheety@gmail.com", "home_address": "15, kedwetennemeery", "any_suggestions": ""}	2021-12-18 11:17:17.712578+00	30
11	{"childs_name": "Hedie ahmed", "age": "12", "school": "Alfarouk language school", "mobile_number": "1156777119", "whats_app_number": "1156777119", "e_mail": "emy_koko@hotmail.com", "home_address": "Zahraa nasr city", "any_suggestions": ""}	2021-12-22 16:17:56.459666+00	30
12	{"childs_name": "Marwan Mohamed Kamal", "age": "12", "school": "NIS", "mobile_number": "1001673193", "whats_app_number": "1001673193", "e_mail": "mohamed.k.saadoun@gmail.com", "home_address": "9 hossam El-Deen Bassiouny, 9th distinct, Nasr City", "any_suggestions": "Quarter plan"}	2022-01-14 17:12:31.849538+00	30
13	{"childs_name": "aisha", "age": "6", "school": "princcesses", "mobile_number": "1111388997", "whats_app_number": "1111388997", "e_mail": "hazemlov8@gmail.com", "home_address": "asafra", "any_suggestions": ""}	2022-01-21 07:22:51.723869+00	30
14	{"childs_name": "Ismail", "age": "12", "school": "Essmet abd elmgayd", "mobile_number": "1155112199", "whats_app_number": "1155112199", "e_mail": "Ibr.mos39@gmail.com", "home_address": "Alsyof", "any_suggestions": ""}	2022-01-21 07:47:49.241254+00	30
15	{"childs_name": "Eyad Khaled moustafa hamdy", "age": "11", "school": "Harvard international school", "mobile_number": "1201666895", "whats_app_number": "1201666895", "e_mail": "engrehamsamir82@yahoo.com", "home_address": "\\u0639\\u0645\\u0627\\u0631\\u0647 \\u0627\\u0644\\u062c\\u0648\\u0647\\u0631\\u0647 \\u0646\\u0645\\u0648\\u0630\\u062c 9\\u0623 \\u0641\\u064a \\u0634\\u0627\\u0631\\u0639 \\u0627\\u062f\\u064a\\u0628 \\u0645\\u0639\\u0642\\u062f \\u0627\\u0645\\u0627\\u0645 \\u0645\\u0633\\u062c\\u062f \\u0627\\u0644\\u062e\\u064a\\u0631 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628 \\u0639 \\u0646\\u0627\\u0635\\u064a\\u0647 \\u0627\\u0644\\u0628\\u0646\\u0643 \\u0627\\u0644\\u0627\\u0647\\u0644\\u064a \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0625\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0629", "any_suggestions": ""}	2022-01-21 08:04:26.958436+00	30
16	{"childs_name": "Karla mohamed gamal", "age": "4.5", "school": "Princess", "mobile_number": "1220202098", "whats_app_number": "1220202098", "e_mail": "m.gamal.nbe2@gmail.com", "home_address": "Sedi beshr, alex", "any_suggestions": ""}	2022-01-21 08:10:18.581237+00	30
17	{"childs_name": "Gwairia Elsayed Massoud Mahmoud", "age": "12", "school": "Nebough", "mobile_number": "1099977159", "whats_app_number": "1099977159", "e_mail": "elsaied.massoud@pms.eg", "home_address": "\\u0627\\u0644\\u0645\\u0646\\u062f\\u0631\\u0647 \\u0642\\u0628\\u0644\\u064a \\u0634\\u0627\\u0631\\u0639 \\u0635\\u064a\\u062f\\u0644\\u064a\\u0629 \\u0646\\u0648\\u0631 \\u0645\\u062a\\u0641\\u0631\\u0639 \\u0645\\u0646 \\u0634\\u0627\\u0631\\u0639 \\u062f. \\u0627\\u0644\\u0646\\u0628\\u0648\\u064a \\u0627\\u0644\\u0645\\u0647\\u0646\\u062f\\u0633", "any_suggestions": ""}	2022-01-21 08:47:54.958903+00	30
18	{"childs_name": "Malek ayman magdy", "age": "3.5", "school": "No", "mobile_number": "1270882943", "whats_app_number": "1270882943", "e_mail": "ayman_desginer@gamil.com", "home_address": "\\u0643\\u0627\\u0645\\u0628\\u0634\\u064a\\u0632\\u0627\\u0631", "any_suggestions": "\\u0639\\u0627\\u064a\\u0632 \\u0627\\u0639\\u0631\\u0641 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0643\\u062a\\u0631"}	2022-01-21 13:44:54.048372+00	30
19	{"childs_name": "\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0627\\u062d\\u0645\\u062f \\u0627\\u0644\\u062a\\u0645\\u0627\\u0645\\u064a", "age": "6", "school": "K g 2", "mobile_number": "1021414711", "whats_app_number": "1220015865", "e_mail": "tmami2017@gmail.com", "home_address": "Alex", "any_suggestions": ""}	2022-01-21 14:21:25.943755+00	30
20	{"childs_name": "\\u0639\\u0645\\u0631\\u0648 \\u0645\\u0645\\u062f\\u0648\\u062d \\u0645\\u062d\\u0645\\u062f \\u0639\\u0628\\u062f \\u0627\\u0644\\u0645\\u0639\\u0637\\u064a", "age": "15", "school": "\\u0628\\u0631\\u064a\\u0644\\u064a\\u0627\\u0646\\u0633", "mobile_number": "1221503390", "whats_app_number": "1221503390", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-01-21 14:42:11.09466+00	30
21	{"childs_name": "Nour aldeen Ahmed elzarka", "age": "4.5", "school": "Nun", "mobile_number": "1550244456", "whats_app_number": "1550244456", "e_mail": "ahmedmelzarka@gmail.com", "home_address": "Siouf", "any_suggestions": ""}	2022-01-21 15:10:36.02811+00	30
22	{"childs_name": "Yousef ahmed", "age": "6", "school": "Eels", "mobile_number": "1098141080", "whats_app_number": "1098141080", "e_mail": "ahmedyousef2256@gmail.com", "home_address": "Moharem bik", "any_suggestions": ""}	2022-01-21 18:06:28.327523+00	30
23	{"childs_name": "Yhya mohmed", "age": "7", "school": "Fahmy abd elmged", "mobile_number": "1090927401", "whats_app_number": null, "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-01-21 23:37:50.579412+00	30
24	{"childs_name": "Roaa", "age": "8", "school": "Akls", "mobile_number": "1004017555", "whats_app_number": "1004017555", "e_mail": "eng.hend.mohammed2021@gmail.com", "home_address": "Moharm bek", "any_suggestions": ""}	2022-01-22 05:47:50.592123+00	30
25	{"childs_name": "Yassen mohamed", "age": "9", "school": "Eltamaiz Language School", "mobile_number": "1227545299", "whats_app_number": "1227545299", "e_mail": "biko.bmwe60@gmail.com", "home_address": "Elagamy elbitash", "any_suggestions": ""}	2022-01-22 10:04:27.937642+00	30
26	{"childs_name": "\\u0645\\u062d\\u0645\\u062f \\u0639\\u0628\\u062f \\u0627\\u0644\\u0641\\u062a\\u0627\\u062d", "age": "16", "school": "\\u0623\\u0648\\u0644\\u0649 \\u062b\\u0627\\u0646\\u0648\\u0649 \\u0639\\u0627\\u0645", "mobile_number": "1284100548", "whats_app_number": null, "e_mail": "", "home_address": "\\u0627\\u0644\\u0627\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0647 \\u0645\\u062d\\u0631\\u0645 \\u0628\\u0643", "any_suggestions": ""}	2022-01-22 12:27:13.279667+00	30
27	{"childs_name": "Malek Hesham", "age": "7", "school": "Als", "mobile_number": "1002092721", "whats_app_number": "1006533992", "e_mail": "nohamalekhisham@gmail.com", "home_address": "Tabarak building wabour El mayah", "any_suggestions": ""}	2022-01-22 14:12:40.646635+00	30
28	{"childs_name": "Anass", "age": "8", "school": "Wise Stars Language School", "mobile_number": "1278810098", "whats_app_number": "1224392644", "e_mail": "engykhorshed55@gmail.com", "home_address": "New Miami", "any_suggestions": ""}	2022-01-22 14:18:17.922709+00	30
29	{"childs_name": "\\u062c\\u0627\\u0646 \\u0628\\u0627\\u0633\\u0645 \\u0628\\u0627\\u0633\\u0645 \\u062c\\u0645\\u0627\\u0644", "age": "11", "school": "\\u0633\\u0627\\u0646 \\u062c\\u0628\\u0631\\u064a\\u0627\\u0644", "mobile_number": "1002839092", "whats_app_number": "1002839092", "e_mail": "karolendemian8@gmail.com", "home_address": "\\u0663\\u0667 \\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u062f\\u064a\\u0646 \\u0645\\u062a\\u0641\\u0631\\u0639 \\u0645\\u0646 \\u0647\\u062f\\u064a \\u0627\\u0644\\u0627\\u0633\\u0644\\u0627\\u0645 \\u0633\\u064a\\u062f\\u064a \\u0628\\u0634\\u0631 \\u0642\\u0628\\u0644\\u064a", "any_suggestions": "\\u0633\\u0643\\u0639\\u0631 \\u0648\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644"}	2022-01-22 15:03:35.070955+00	30
30	{"childs_name": "Hamza", "age": "9", "school": "EELS", "mobile_number": "1223411944", "whats_app_number": "1145448899", "e_mail": "dr.sally.kamal@gmail.com", "home_address": "Asafra", "any_suggestions": ""}	2022-01-22 16:06:53.268176+00	30
31	{"childs_name": "Omar", "age": "5", "school": "Sidi beshr", "mobile_number": "1004222970", "whats_app_number": "1004222970", "e_mail": "seif.saad2010@gmail.com", "home_address": "Sidi beshr", "any_suggestions": ""}	2022-01-22 16:19:23.285527+00	30
32	{"childs_name": "Tayem sameh faruq", "age": "8.6", "school": "Ali gad tagreby", "mobile_number": "1226724077", "whats_app_number": "1227421413", "e_mail": "", "home_address": "\\u0641\\u064a\\u0643\\u062a\\u0648\\u0631\\u064a\\u0627 \\u0627\\u0628\\u0631\\u0627\\u062c \\u0627\\u0644\\u0631\\u064a\\u0627\\u062f\\u0647", "any_suggestions": ""}	2022-01-22 17:34:38.323596+00	30
33	{"childs_name": "Malek eslam elsaid", "age": "8", "school": "Moharem bek", "mobile_number": "1278052450", "whats_app_number": "1278052450", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-01-22 19:49:11.141475+00	30
34	{"childs_name": "Adam Amr Ibramem Amer", "age": "8", "school": "\\u0645\\u0639\\u0627\\u0644\\u064a \\u0633\\u064a\\u062f\\u064a \\u0628\\u0634\\u0631 \\u0644\\u063a\\u0627\\u062a", "mobile_number": "1006211673", "whats_app_number": "1006211673", "e_mail": "amr0.amer9@gmail.com", "home_address": "6 39st., Gamal Abd El-nasser Ave., Vectoria.,Alexandria", "any_suggestions": ""}	2022-01-22 20:41:17.223681+00	30
35	{"childs_name": "\\u0627\\u062f\\u0645", "age": "7", "school": "\\u0627\\u062f\\u0645", "mobile_number": "1066644336", "whats_app_number": "1227540417", "e_mail": "ymn_kml@yahoo.com", "home_address": "", "any_suggestions": ""}	2022-01-22 22:50:50.555962+00	30
36	{"childs_name": "Tarek", "age": "7", "school": "\\u0633\\u0627\\u0646 \\u0641\\u0633\\u0627\\u0646 \\u062f\\u0649 \\u0628\\u0648\\u0644", "mobile_number": "1001872047", "whats_app_number": "1001872047", "e_mail": "mt8343790@gmail.com", "home_address": "\\u0639\\u0645\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0642\\u0636\\u0627\\u0647 \\u0627\\u0644\\u0644\\u064a \\u0647\\u064a \\u0639\\u0644\\u0649 \\u0645\\u062d\\u0648\\u0631 \\u0627\\u0644\\u0645\\u062d\\u0645\\u0648\\u062f\\u064a\\u0629", "any_suggestions": ""}	2022-01-23 04:24:13.441009+00	30
37	{"childs_name": "Bichoy", "age": "9", "school": "Saint marc", "mobile_number": "1224521289", "whats_app_number": null, "e_mail": "Dinaessamrizk306@gmail.com", "home_address": "El ebrahimia", "any_suggestions": ""}	2022-01-25 04:22:22.787946+00	30
38	{"childs_name": "Mahmoud", "age": "8", "school": "Bralince", "mobile_number": "1228889863", "whats_app_number": "1228889863", "e_mail": "eng.ah.nofal@gmail.com", "home_address": "Alex., Gamal abd el naser street,Almandra", "any_suggestions": ""}	2022-01-25 16:45:36.5621+00	30
39	{"childs_name": "Ahmed elyousfe", "age": "1146580304", "school": "\\u0627\\u0644\\u0627\\u0631\\u0645\\u0627\\u0646", "mobile_number": "1146580304", "whats_app_number": "1146580304", "e_mail": "elyousfeahmed@gmail.com", "home_address": "\\u0627\\u0644\\u0645\\u0647\\u0646\\u062f\\u0633\\u064a\\u0646", "any_suggestions": ""}	2022-01-26 14:10:27.756326+00	30
40	{"childs_name": "\\u0647\\u0627\\u062c\\u0631", "age": "11", "school": "\\u0627\\u0644\\u0643\\u0648\\u064a\\u062a\\u064a \\u0627\\u0644\\u0627\\u0632\\u0647\\u0631\\u064a", "mobile_number": "1148156017", "whats_app_number": "1148156017", "e_mail": "ahlam26298@gmail.com", "home_address": "\\u0627\\u0644\\u0642\\u0637\\u0627\\u0645\\u064a\\u0629", "any_suggestions": ""}	2022-01-26 14:37:02.917067+00	30
41	{"childs_name": "Adham hani", "age": "12", "school": "\\u0627\\u0644\\u062d\\u064a\\u0627\\u0629", "mobile_number": "1141705888", "whats_app_number": "1141705888", "e_mail": "amirads2000@yahoo.com", "home_address": "", "any_suggestions": ""}	2022-01-26 16:06:46.630773+00	30
42	{"childs_name": "Mohammad Ahmed Mohammad Salem", "age": "9", "school": "Talaea Modern Language School", "mobile_number": "1159892567", "whats_app_number": "1112626173", "e_mail": "eman777vo@gmail.com", "home_address": "Aenshams elsharkya", "any_suggestions": ""}	2022-01-26 17:32:43.1809+00	30
43	{"childs_name": "\\u0634\\u064a\\u0645\\u0627\\u0621 \\u0628\\u062f\\u0631", "age": "10", "school": "Pps", "mobile_number": "1019723405", "whats_app_number": null, "e_mail": "shoshobadr80@gmail.com", "home_address": "\\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646", "any_suggestions": ""}	2022-01-26 17:53:12.292755+00	30
44	{"childs_name": "Martin Emil", "age": "9", "school": "Skyline language school", "mobile_number": "1220284443", "whats_app_number": "1220284443", "e_mail": "Olylyo@hotmail.com", "home_address": "El rehab group 52 building 2", "any_suggestions": "Details pls"}	2022-01-26 17:54:45.559059+00	30
45	{"childs_name": "Moaz", "age": "10", "school": "College de la salle", "mobile_number": "1010390045", "whats_app_number": "1010390045", "e_mail": "rachahassanein6@gmail.com", "home_address": "Tagamo3", "any_suggestions": ""}	2022-01-26 18:25:36.576684+00	30
46	{"childs_name": "Mohamed Gaafar", "age": "6", "school": "Azhar", "mobile_number": "114530838", "whats_app_number": "1144530838", "e_mail": "mohamed.gaafar228@gmail.com", "home_address": "", "any_suggestions": ""}	2022-01-26 18:54:38.279928+00	30
47	{"childs_name": "Ahmed Haitham", "age": "11", "school": "Alkasr Alainy", "mobile_number": "1063326089", "whats_app_number": "1063326089", "e_mail": "haithameldersse@gmail.com", "home_address": "Alharam Giza", "any_suggestions": ""}	2022-01-26 19:54:23.826193+00	30
48	{"childs_name": "Yasein", "age": "12", "school": "\\u0637\\u0644\\u0627\\u0626\\u0639 \\u0627\\u0644\\u0635\\u0641\\u0648\\u0629", "mobile_number": "1095747492", "whats_app_number": "1095747492", "e_mail": "yaseinkhaled5@gmail.com", "home_address": "H", "any_suggestions": ""}	2022-01-26 21:12:23.205615+00	30
49	{"childs_name": "Hayat Ahmed Mahmoud", "age": "6", "school": "Home schooling", "mobile_number": "201066266998", "whats_app_number": "201066266998", "e_mail": "eng.ahmed18@gmail.com", "home_address": "32/33 Mgawra 32 - 10th of Ramadan City - Sharqeya", "any_suggestions": ""}	2022-01-26 23:37:23.429774+00	30
50	{"childs_name": "Kenzy waleed", "age": "12", "school": "Alsadaka", "mobile_number": "1029019029", "whats_app_number": "1029019029", "e_mail": "abushabaan2005@gmail.com", "home_address": "Obur city . Elshabab  70m", "any_suggestions": ""}	2022-01-27 00:44:38.845806+00	30
51	{"childs_name": "Mostafa", "age": "8", "school": "Belall", "mobile_number": "1028885105", "whats_app_number": "1028885105", "e_mail": "shabaan.magdy@gmail.com", "home_address": "Cairo", "any_suggestions": ""}	2022-01-27 02:18:42.768094+00	30
52	{"childs_name": "Chris", "age": "8", "school": "Elfrer.  Helioplis", "mobile_number": "1222392985", "whats_app_number": "1222392985", "e_mail": "Michaelmounir21@gmail.com", "home_address": "56 mostafa basha Street zatoun", "any_suggestions": ""}	2022-01-27 05:28:34.283653+00	30
53	{"childs_name": "Chris", "age": "8", "school": "Elfrer.  Helioplis", "mobile_number": "1222392985", "whats_app_number": "1222392985", "e_mail": "Michaelmounir21@gmail.com", "home_address": "56 mostafa basha Street zatoun", "any_suggestions": ""}	2022-01-27 05:28:55.855583+00	30
54	{"childs_name": "\\u0627\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u062f", "age": "10", "school": "\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a \\u0645\\u062f\\u0631\\u0633\\u0647 \\u062d\\u0643\\u0648\\u0645\\u064a\\u0647", "mobile_number": "1129999103", "whats_app_number": "1129999103", "e_mail": "memohassan2233@gmail.com", "home_address": "6 \\u0627\\u0643\\u062a\\u0648\\u0628\\u0631 \\u0627\\u0644\\u062d\\u064a \\u0627\\u0644\\u062d\\u0627\\u062f\\u064a \\u0639\\u0634\\u0631 \\u0639\\u0645\\u0627\\u064a\\u0631 \\u0627\\u0644\\u0628\\u0646\\u0643", "any_suggestions": "\\u0643\\u0646\\u062a \\u0645\\u062d\\u062a\\u0627\\u062c \\u0627\\u0639\\u0631\\u0641 \\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0647 \\u0643\\u0645"}	2022-01-27 07:11:53.945341+00	30
55	{"childs_name": "Ali hani", "age": "10", "school": "\\u0627\\u0644\\u062d\\u064a\\u0627\\u0629", "mobile_number": "1141705888", "whats_app_number": "1141705888", "e_mail": "amirads2000@yahoo.com", "home_address": "\\u062a\\u0627\\u0648\\u0646 \\u0641\\u064a\\u0648 \\u0643\\u0645\\u0628\\u0648\\u0646\\u062f", "any_suggestions": ""}	2022-01-27 10:25:15.109135+00	30
56	{"childs_name": "Ahmed Mohamed Ibrahim Khalifa", "age": "4.5", "school": "K1", "mobile_number": "1128060806", "whats_app_number": "1128060806", "e_mail": "khalifamohamed851@gmail.com", "home_address": "", "any_suggestions": ""}	2022-01-27 11:08:36.299393+00	30
57	{"childs_name": "Mohamed Hisham", "age": "7", "school": "sources of science", "mobile_number": "1095918030", "whats_app_number": "1110633365", "e_mail": "hishamtareq@gmail.com", "home_address": "", "any_suggestions": ""}	2022-01-27 12:24:09.507869+00	30
58	{"childs_name": "Ziad", "age": "14", "school": "Els", "mobile_number": "1066670706", "whats_app_number": "1066670706", "e_mail": "eman_ziad19@yahoo.com", "home_address": "\\u062d\\u0649 5 \\u0645\\u0646\\u0637\\u0642\\u0647 2 \\u0634\\u0627\\u0631\\u0639 8 \\u0641\\u064a\\u0644\\u0627 37 \\u0627\\u0644\\u062a\\u062c\\u0645\\u0639", "any_suggestions": ""}	2022-01-27 15:23:45.323442+00	30
59	{"childs_name": "Sara ibrahim", "age": "9", "school": "Home schooling", "mobile_number": "1029256732", "whats_app_number": "1029256732", "e_mail": "ibsara62@gmail.com", "home_address": "", "any_suggestions": ""}	2022-01-27 17:11:17.204131+00	30
60	{"childs_name": "Yassen yasser", "age": "13", "school": "Medel est", "mobile_number": "1142936390", "whats_app_number": null, "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-01-27 18:53:21.473096+00	30
61	{"childs_name": "islam", "age": "22", "school": "algeria", "mobile_number": "213775321582", "whats_app_number": null, "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-02-01 13:42:20.203496+00	30
62	{"childs_name": "islam", "age": "22", "school": "algeria", "mobile_number": "213775321581", "whats_app_number": null, "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-02-01 13:42:54.988878+00	30
63	{"childs_name": "islam", "age": "22", "school": "algeria", "mobile_number": "213775321582", "whats_app_number": "213775321582", "e_mail": "bozzoislam@gmail.com", "home_address": "algeria", "any_suggestions": ""}	2022-02-01 13:43:56.71048+00	30
64	{"childs_name": "Hamza khaled", "age": "8", "school": "DAIS", "mobile_number": "1097703098", "whats_app_number": "1097703098", "e_mail": "rana.noss@icloud.com", "home_address": "", "any_suggestions": ""}	2022-02-18 05:44:59.367455+00	30
65	{"childs_name": "Ragy Ramy", "age": "6", "school": "British Ramses School", "mobile_number": "1220073384", "whats_app_number": "1220073384", "e_mail": "rehamsoryal@gmail.com", "home_address": "", "any_suggestions": ""}	2022-03-21 18:29:55.770462+00	30
66	{"childs_name": "Sedra Marwan Saleh", "age": "6", "school": "Cardiff Modern International School", "mobile_number": "1097276351", "whats_app_number": "1097276351", "e_mail": "noha.alieldin@gmail.com", "home_address": "Shrouk city", "any_suggestions": ""}	2022-04-21 08:06:48.160064+00	30
67	{"childs_name": "Ali", "age": "11", "school": "\\u0637\\u0647 \\u0647\\u0645\\u0627\\u0645", "mobile_number": "1159409721", "whats_app_number": "1151166067", "e_mail": "asmaaashmawy1584@gmail.com", "home_address": "26\\u0627 \\u0644\\u0645\\u0633\\u0627\\u0643\\u0646 \\u0627\\u0644\\u0643\\u0648\\u064a\\u062a\\u064a\\u0647  \\u0623", "any_suggestions": ""}	2022-04-23 15:56:25.95723+00	30
68	{"childs_name": "Ali Maher", "age": "11", "school": "\\u0637\\u0647 \\u0647\\u0645\\u0627\\u0645", "mobile_number": "159409721", "whats_app_number": "1151166067", "e_mail": "asmaaashmawy1584@gmail.com", "home_address": "26\\u0627 \\u0644\\u0645\\u0633\\u0627\\u0643\\u0646 \\u0627\\u0644\\u0643\\u0648\\u064a\\u062a\\u064a\\u0647  \\u0623", "any_suggestions": ""}	2022-04-23 15:58:05.839628+00	30
69	{"childs_name": "Ali Maher", "age": "11", "school": "\\u0637\\u0647 \\u0647\\u0645\\u0627\\u0645", "mobile_number": "1159409721", "whats_app_number": "1151166067", "e_mail": "asmaaashmawy1584@gmail.com", "home_address": "26\\u0627 \\u0644\\u0645\\u0633\\u0627\\u0643\\u0646 \\u0627\\u0644\\u0643\\u0648\\u064a\\u062a\\u064a\\u0647  \\u0623", "any_suggestions": "No any \\r\\n\\r\\nthing"}	2022-04-23 16:06:20.68974+00	30
70	{"childs_name": "\\u062a\\u062a", "age": "11", "school": "2", "mobile_number": "12333333", "whats_app_number": "33333", "e_mail": "hosamhosnyprof@gmail.com", "home_address": "333", "any_suggestions": "333"}	2022-05-08 19:31:49.983604+00	30
71	{"childs_name": "Aser", "age": "8", "school": "Kg", "mobile_number": "1097267100", "whats_app_number": "1097267100", "e_mail": "amirazzam915@gmail.com", "home_address": "6 October  Dist. 2 Block 8 building No. 2691 St. Al Mohandes Samir Abdullah", "any_suggestions": ""}	2022-05-08 20:09:21.182763+00	30
72	{"childs_name": "Khadija waleed", "age": "11", "school": "Horas language school", "mobile_number": "1008989108", "whats_app_number": "1008989108", "e_mail": "marmooora.fci@gmail.com", "home_address": "Haram El giza", "any_suggestions": "Details"}	2022-05-08 22:15:32.804711+00	30
73	{"childs_name": "Celine  Ahmed", "age": "7", "school": "Tal3t 7arb primary school  Agoza", "mobile_number": "1154713524", "whats_app_number": "1228219930", "e_mail": "meroazora@gmail.com", "home_address": "", "any_suggestions": "Thanks"}	2022-05-08 22:49:03.655658+00	30
74	{"childs_name": "Yousef", "age": "12", "school": "Gamal abd elnaser", "mobile_number": "1117994633", "whats_app_number": "1117994633", "e_mail": "ahmed.zico1140@gmail.com", "home_address": "Elzawya El hamra,cairo", "any_suggestions": "No,"}	2022-05-08 23:19:19.577708+00	30
75	{"childs_name": "Malek Mohamed", "age": "10", "school": "Pioneers language school", "mobile_number": "1068411373", "whats_app_number": "1068411373", "e_mail": "rtalaat142@gmail.com", "home_address": "\\u0627\\u0644\\u062a\\u062c\\u0645\\u0639 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0643\\u0645\\u0628\\u0648\\u0646\\u062f \\u0627\\u0644\\u0628\\u0633\\u062a\\u0627\\u0646", "any_suggestions": ""}	2022-05-08 23:45:00.115842+00	30
76	{"childs_name": "Yassen mohamed", "age": "7", "school": "Ahmed bahgat language school", "mobile_number": "1270317222", "whats_app_number": "1270317222", "e_mail": "shimaamaree44@gmail.com", "home_address": "Mariota Faisal", "any_suggestions": "No"}	2022-05-09 13:33:03.334036+00	30
77	{"childs_name": "\\u0645\\u0627\\u0644\\u0643 \\u0627\\u064a\\u0645\\u0646", "age": "10", "school": "\\u0632\\u0647\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0627\\u0626\\u0646", "mobile_number": "1147191191", "whats_app_number": "1104347414", "e_mail": "passantmahmoud84@gmail.com", "home_address": "\\u0645\\u062f\\u064a\\u0646\\u0647 \\u0627\\u0643\\u062a\\u0648\\u0628\\u0631 \\u0627\\u0644\\u062d\\u064a \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639 \\u0645\\u062c\\u0627\\u0648\\u0631\\u0629 \\u0627\\u0648\\u0644\\u064a \\u0639\\u0646\\u0627\\u0631\\u0629 30", "any_suggestions": "\\u0644\\u0627"}	2022-05-09 14:53:17.488751+00	30
78	{"childs_name": "Mariam", "age": "7", "school": "Ips kafr el sheikh", "mobile_number": "1024442022", "whats_app_number": "1024442022", "e_mail": "Mtm_sm_mahmoud@hotmail.com", "home_address": "", "any_suggestions": ""}	2022-05-09 15:27:28.315096+00	30
79	{"childs_name": "Ali khaled", "age": "4", "school": "No", "mobile_number": "1064319507", "whats_app_number": "1064319507", "e_mail": "ayaalishanan@gmail.com", "home_address": "Fesal, giza", "any_suggestions": ""}	2022-05-09 15:46:24.915168+00	30
80	{"childs_name": "Hamza Yasser", "age": "8", "school": "Hotep International school", "mobile_number": "1115773778", "whats_app_number": "1115773778", "e_mail": "basmafouda2002@gmail.com", "home_address": "Nasr city beside Air Defense house", "any_suggestions": ""}	2022-05-09 16:36:29.460135+00	30
81	{"childs_name": "Jawad Mahmoud khallaf", "age": "8", "school": "Egyptian Nile School", "mobile_number": "1001754678", "whats_app_number": "1001754678", "e_mail": "drmkhallafpt@gmail.com", "home_address": "5th settlement New Cairo", "any_suggestions": "Thanks"}	2022-05-09 18:01:02.497927+00	30
82	{"childs_name": "Eyad", "age": "6", "school": "Alhoda", "mobile_number": "1028966906", "whats_app_number": "1028966906", "e_mail": "amr.alshazly@yahoo.com", "home_address": "62 g Pyramids gardens", "any_suggestions": ""}	2022-05-09 19:17:30.055438+00	30
83	{"childs_name": "Mohamed Yasser Mohamed", "age": "14", "school": "Taha hamam language school", "mobile_number": "1147621748", "whats_app_number": "1147621748", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-05-09 19:46:16.079681+00	30
84	{"childs_name": "\\u0645\\u0627\\u0632\\u0646 \\u0645\\u062d\\u0645\\u062f", "age": "8", "school": "Skills international school", "mobile_number": "12223906116", "whats_app_number": "1223906116", "e_mail": "eng_buny2009@yahoo.com", "home_address": "Alharam", "any_suggestions": ""}	2022-05-09 20:23:28.088893+00	30
85	{"childs_name": "\\u0645\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u0648\\u062f", "age": "6", "school": "\\u0639\\u0631\\u0628\\u064a", "mobile_number": "1003004244", "whats_app_number": null, "e_mail": "", "home_address": "\\u0627\\u0644\\u062a\\u062c\\u0645\\u0639 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633", "any_suggestions": ""}	2022-05-09 20:49:40.671022+00	30
86	{"childs_name": "Zyad Ibrahim abdelghafar abdelaziz", "age": "11", "school": "Omhat elmoumnen", "mobile_number": "1013160243", "whats_app_number": "1013160243", "e_mail": "ibr.elken010@gmail.com", "home_address": "3 street alrahmany Faisal maruotiai", "any_suggestions": ""}	2022-05-09 20:59:28.451401+00	30
87	{"childs_name": "Reem", "age": "9", "school": "Mls amircan", "mobile_number": "1027725051", "whats_app_number": "1027725051", "e_mail": "mohga.khattab@yahoo.com", "home_address": "", "any_suggestions": ""}	2022-05-09 21:17:27.297081+00	30
88	{"childs_name": "Ahmed Sherif", "age": "9", "school": "Future tec", "mobile_number": "1224915515", "whats_app_number": "1224915515", "e_mail": "whitegold.aa50@gmail.com", "home_address": "Sayed Afify", "any_suggestions": ""}	2022-05-09 21:25:30.942143+00	30
89	{"childs_name": "\\u0633\\u0645\\u0633\\u0645", "age": "10", "school": "5", "mobile_number": "1110902046", "whats_app_number": "1110902046", "e_mail": "smsm151198@gmail.com", "home_address": "", "any_suggestions": ""}	2022-05-09 21:44:34.992936+00	30
90	{"childs_name": "Moh Khaled", "age": "13", "school": "Egyptian languages school", "mobile_number": "1224159354", "whats_app_number": "1003123432", "e_mail": "nefertity2013@gmail.com", "home_address": "Nasr city", "any_suggestions": ""}	2022-05-09 23:06:15.735975+00	30
91	{"childs_name": "Mouhamed ahmed samir", "age": "14", "school": "5th District Distinguished Official Language School th District Distinguished Official Language School", "mobile_number": "1033029302", "whats_app_number": "1060003955", "e_mail": "ya006297@gmail.com", "home_address": "6 octobr", "any_suggestions": "No"}	2022-05-10 00:13:03.048786+00	30
92	{"childs_name": "\\u0623\\u0633\\u0631 \\u062d\\u0627\\u0632\\u0645", "age": "8", "school": "\\u0627\\u0644\\u062d\\u064a \\u0627\\u0644 \\u0661\\u0661", "mobile_number": "1010903803", "whats_app_number": "1010903803", "e_mail": "", "home_address": "\\u0627\\u0644\\u0634\\u064a\\u062e \\u0632\\u0627\\u064a\\u062f", "any_suggestions": "\\u0646\\u0641\\u0633\\u064a \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0633\\u0639\\u0627\\u0631 \\u0643\\u0648\\u064a\\u0633\\u0647 \\u0639\\u0644\\u0634\\u0627\\u0646 \\u0627\\u062d\\u0646\\u0627 \\u0646\\u0627\\u0633 \\u0639\\u0644\\u064a \\u0642\\u062f\\u0646\\u0627 \\u062c\\u062f\\u0627\\u0627\\u0627"}	2022-05-10 00:56:00.833747+00	30
93	{"childs_name": "\\u064a\\u0627\\u0645\\u0646", "age": "11", "school": "\\u0645\\u0646\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u0628\\u0644", "mobile_number": "1007202971", "whats_app_number": "1007202971", "e_mail": "farfosha1987@gmail.com", "home_address": "Mokattam", "any_suggestions": "\\u0639\\u0627\\u0648\\u0632\\u0629 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644"}	2022-05-10 03:55:10.527163+00	30
94	{"childs_name": "\\u0645\\u062d\\u0645\\u0648\\u062f \\u062a\\u0627\\u0645\\u0631 \\u0645\\u062d\\u0645\\u0648\\u062f", "age": "9", "school": "agyad", "mobile_number": "1144423396", "whats_app_number": "1144423396", "e_mail": "dina.mooda91@gmail.com", "home_address": "\\u0627\\u0644\\u0632\\u0647\\u0631\\u0627\\u0621", "any_suggestions": ""}	2022-05-10 04:50:40.94911+00	30
95	{"childs_name": "Mohab", "age": "7", "school": "Mhis", "mobile_number": "1101141991", "whats_app_number": "1101141991", "e_mail": "kholoud123.es@gmail.com", "home_address": "", "any_suggestions": ""}	2022-05-10 05:32:37.519416+00	30
96	{"childs_name": "\\u0643\\u064a\\u0631\\u0644\\u0633", "age": "10", "school": "Languge", "mobile_number": "1273810744", "whats_app_number": null, "e_mail": "roopycoptic@yahoo.com", "home_address": "", "any_suggestions": ""}	2022-05-10 06:41:39.804038+00	30
97	{"childs_name": "\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0645\\u062d\\u0645\\u062f", "age": "11", "school": "\\u0627\\u0644\\u0639\\u0645\\u0631\\u0627\\u0646 \\u0644\\u0644\\u063a\\u0627\\u062a", "mobile_number": "1061518884", "whats_app_number": "1061518884", "e_mail": "85hendgamal@gmail.com", "home_address": "", "any_suggestions": ""}	2022-05-10 06:44:20.666848+00	30
98	{"childs_name": "Youssef", "age": "12", "school": "Manara al qahara", "mobile_number": "1007450312", "whats_app_number": "1007450312", "e_mail": "ofasabry2000@gmail.com", "home_address": "\\u0645\\u062f\\u064a\\u0646\\u0647 \\u0646\\u0635\\u0631 \\u0634\\u0627\\u0631\\u0639 \\u062d\\u0627\\u0641\\u0638 \\u0631\\u0645\\u0636\\u0627\\u0646", "any_suggestions": ""}	2022-05-10 07:10:15.210868+00	30
99	{"childs_name": "Youssef", "age": "12", "school": "Manara al qahara", "mobile_number": "1007450312", "whats_app_number": "1007450312", "e_mail": "ofasabry2000@gmail.com", "home_address": "\\u0645\\u062f\\u064a\\u0646\\u0647 \\u0646\\u0635\\u0631 \\u0634\\u0627\\u0631\\u0639 \\u062d\\u0627\\u0641\\u0638 \\u0631\\u0645\\u0636\\u0627\\u0646", "any_suggestions": ""}	2022-05-10 07:10:23.302095+00	30
100	{"childs_name": "Hala", "age": "15", "school": "Winchester", "mobile_number": "1024441300", "whats_app_number": "1112633444", "e_mail": "alfatheg@hotmail.com", "home_address": "Zayed", "any_suggestions": "No"}	2022-05-10 07:52:15.186755+00	30
101	{"childs_name": "\\u064a\\u0627\\u0633\\u064a\\u0646 \\u0632\\u064a\\u0627\\u062f \\u0645\\u062d\\u0645\\u0648\\u062f", "age": "12", "school": "Brilliant mind school", "mobile_number": "1000651963", "whats_app_number": "100651963", "e_mail": "", "home_address": "El mokatm", "any_suggestions": ""}	2022-05-10 10:07:31.147457+00	30
102	{"childs_name": "\\u0645\\u0631\\u0648\\u0627\\u0646 \\u062a\\u0627\\u0645\\u0631 \\u0645\\u062d\\u0645\\u062f", "age": "8", "school": "\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062f\\u0642\\u0649", "mobile_number": "1118105877", "whats_app_number": null, "e_mail": "hodamohamedghareeb@gmail.com", "home_address": "2 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u062d\\u0627\\u062c \\u063a\\u0631\\u064a\\u0628 \\u0645\\u062a\\u0641\\u0631\\u0639 \\u0645\\u0646 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0628\\u0648\\u0647\\u0649 \\u0628\\u0627\\u0644\\u062a\\u0642\\u0627\\u0637\\u0639 \\u0645\\u0639 \\u0634\\u0627\\u0631\\u0639 \\u0632\\u0643\\u0649 \\u0645\\u0637\\u0631 \\u0627\\u0645\\u0628\\u0627\\u0628\\u0639", "any_suggestions": ""}	2022-05-10 10:51:43.744399+00	30
103	{"childs_name": "Yassin", "age": "8", "school": "Elserag language school", "mobile_number": "1222517314", "whats_app_number": "1222517317", "e_mail": "hamadawa.eng@gmail.com", "home_address": "7 El forqan st, bolaq eldakrory", "any_suggestions": ""}	2022-05-10 12:32:50.405712+00	30
104	{"childs_name": "eslam elhosayne muhammad", "age": "11", "school": "elwehda el arabia", "mobile_number": "1128336814", "whats_app_number": "1128336814", "e_mail": "hemobro16@gmail.com", "home_address": "55 muhammad abd elkrem st shoubr masr", "any_suggestions": ""}	2022-05-10 12:41:41.249961+00	30
105	{"childs_name": "Oday youssef mohamed", "age": "12", "school": "6primairy", "mobile_number": "1117845183", "whats_app_number": "1117845183", "e_mail": "", "home_address": "6\\u0627\\u0643\\u062a\\u0648\\u0628\\u0631 \\u0645\\u062f\\u064a\\u0646\\u0647 \\u0627\\u0644\\u0641\\u0631\\u062f\\u0648\\u0633 \\u0623\\u0645\\u0627\\u0645 \\u062f\\u0631\\u064a\\u0645 \\u0644\\u0627\\u0646\\u062f", "any_suggestions": ""}	2022-05-10 13:13:14.796918+00	30
106	{"childs_name": "Abdulrhman amr mahmoud", "age": "12", "school": "Harrods", "mobile_number": "1001505067", "whats_app_number": "1001505067", "e_mail": "amr.frahat.af@gmail.com", "home_address": "Elmokatam", "any_suggestions": ""}	2022-05-10 13:38:03.650295+00	30
107	{"childs_name": "Mohammad Yasser", "age": "11", "school": "Misr language school", "mobile_number": "1005240101", "whats_app_number": "1005240101", "e_mail": "raniayahiashash@hotmail.com", "home_address": "Sheikh zayed", "any_suggestions": "Do you have courses in video editing?"}	2022-05-10 15:15:48.979556+00	30
108	{"childs_name": "\\u0627\\u062d\\u0645\\u062f \\u0631\\u0627\\u0645\\u064a \\u062d\\u0633\\u0646", "age": "14", "school": "\\u0645\\u062f\\u0631\\u0633\\u0647 \\u062f\\u0627\\u0631 \\u0627\\u0644\\u0639\\u0644\\u0648\\u0645 \\u0627\\u0644\\u062d\\u062f\\u064a\\u062b\\u0647 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0647", "mobile_number": "1100167637", "whats_app_number": "1100167637", "e_mail": "aidamwafy85@gamil.com", "home_address": "30\\u0628\\u0631\\u062c \\u0627\\u0644\\u0647\\u062f\\u0649\\u061b \\u0627\\u0644\\u062c\\u0627\\u0645\\u0639\\u0647 \\u0632\\u0647\\u0631\\u0627\\u0621 \\u0645\\u062f\\u064a\\u0646\\u0647 \\u0646\\u0635\\u0631", "any_suggestions": ""}	2022-05-10 16:52:27.517228+00	30
109	{"childs_name": "\\u064a\\u0648\\u0633\\u0641 \\u0627\\u062d\\u0645\\u062f \\u0635\\u0644\\u0627\\u062d", "age": "11", "school": "\\u0637", "mobile_number": "103066492", "whats_app_number": "1023030626", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-05-10 16:57:37.887151+00	30
110	{"childs_name": "\\u064a\\u0648\\u0633\\u0641 \\u0627\\u062d\\u0645\\u062f \\u0635\\u0644\\u0627\\u062d", "age": "11", "school": "\\u0637", "mobile_number": "103066492", "whats_app_number": "1023030626", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-05-10 16:58:24.057852+00	30
111	{"childs_name": "Malak", "age": "10", "school": "Yls language school", "mobile_number": "1009335783", "whats_app_number": "1009335782", "e_mail": "ablahussiendoctor@gmail.com", "home_address": "\\u0628\\u0646\\u0641\\u0633\\u062c \\u0667 \\u0641\\u064a\\u0644\\u0627 \\u0661\\u0661 \\u062f\\u0648\\u0631 \\u062a\\u0627\\u0646\\u064a \\u0634\\u0642\\u0647 \\u0665", "any_suggestions": ""}	2022-05-10 17:31:52.649899+00	30
112	{"childs_name": "Hamza haitham", "age": "7", "school": "Santfatima school", "mobile_number": "1227676757", "whats_app_number": "1227676757", "e_mail": "haithamelhelw2@gmail.com", "home_address": "164 emtedad  Ramses 2 nasr city", "any_suggestions": ""}	2022-05-10 18:02:01.06411+00	30
113	{"childs_name": "Aly Essam", "age": "8", "school": "NIS", "mobile_number": "1020050989", "whats_app_number": "1020050989", "e_mail": "essam.nour@gmail.com", "home_address": "Obour City", "any_suggestions": ""}	2022-05-10 19:16:33.150786+00	30
114	{"childs_name": "Hana ahmed", "age": "14", "school": "Nes", "mobile_number": "1289863153", "whats_app_number": "1289863153", "e_mail": "Hana7star@gmail.com", "home_address": "6 october", "any_suggestions": ""}	2022-05-12 00:55:05.177776+00	30
115	{"childs_name": "\\u062d\\u0645\\u0632\\u0629 \\u0627\\u062d\\u0645\\u062f \\u062f\\u0633\\u0648\\u0642\\u064a", "age": "7", "school": "\\u0645\\u0646\\u064a\\u0633 \\u0644\\u0644\\u063a\\u0627\\u062a", "mobile_number": "1145925601", "whats_app_number": "1145925601", "e_mail": "", "home_address": "\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0646\\u0635\\u0631", "any_suggestions": ""}	2022-05-15 15:51:58.886924+00	30
116	{"childs_name": "\\u0639\\u0628\\u062f \\u0627\\u0644\\u0631\\u062d\\u0645\\u0646 \\u0645\\u062d\\u0645\\u062f \\u0639\\u0627\\u0637\\u0641", "age": "12", "school": "\\u0645\\u0639\\u0647\\u062f \\u0627\\u0644\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0632\\u0647\\u0631\\u064a", "mobile_number": "1022899745", "whats_app_number": "1022899745", "e_mail": "eman_ghoneim@yahoo.com", "home_address": "\\u0627\\u0644\\u0639\\u0628\\u0648\\u0631", "any_suggestions": ""}	2022-05-15 19:14:17.581665+00	30
117	{"childs_name": "Sara", "age": "12", "school": "Laros de leziah school", "mobile_number": "1001684581", "whats_app_number": "1001684581", "e_mail": "shassan@systemtechnique.com", "home_address": "Fisal giza", "any_suggestions": ""}	2022-05-26 08:50:01.789196+00	30
118	{"childs_name": "Sara", "age": "12", "school": "Laros de leziah school", "mobile_number": "1001684581", "whats_app_number": "1001684581", "e_mail": "shassan@systemtechnique.com", "home_address": "Fisal giza", "any_suggestions": ""}	2022-05-26 08:50:19.946748+00	30
119	{"childs_name": "Karim Mohamed Hany", "age": "13", "school": "Kenana Language School", "mobile_number": "1202960236", "whats_app_number": "1202960236", "e_mail": "aiabadrshafie@gmail.com", "home_address": "", "any_suggestions": ""}	2022-05-27 14:02:30.969486+00	30
120	{"childs_name": "\\u0628\\u0633\\u0645\\u0644\\u0647", "age": "16", "school": "\\u0627\\u0644\\u0627\\u0648\\u0631\\u0645\\u0627\\u0646", "mobile_number": "1553010722", "whats_app_number": "1283198895", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-05-28 09:32:57.148408+00	30
121	{"childs_name": "Mohammed", "age": "5", "school": "Kg2", "mobile_number": "1009708344", "whats_app_number": "1009708344", "e_mail": "mskin.ahmed123@gmail.com", "home_address": "\\u0627\\u0644\\u0627\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0647 \\u0627\\u0644\\u0639\\u062c\\u0645\\u064a \\u0627\\u0644\\u0647\\u0627\\u0646\\u0648\\u0641\\u064a\\u0644 \\u0634\\u0627\\u0631\\u0639 \\u0627\\u0644\\u0639\\u0648\\u0627\\u0645\\u064a", "any_suggestions": ""}	2022-05-31 01:52:52.635319+00	30
122	{"childs_name": "Hoor Ahmed Gaber", "age": "6", "school": "Nozha language school", "mobile_number": "1024900765", "whats_app_number": "1024900765", "e_mail": "Shaimaa_abz@yahoo.com", "home_address": "Ezis Cairo, Masr Esmailia road", "any_suggestions": ""}	2022-06-02 18:52:37.032095+00	30
123	{"childs_name": "\\u062d\\u0645\\u0632\\u0647 \\u0645\\u062d\\u0645\\u0648\\u062f \\u0633\\u0639\\u0641\\u0627\\u0646", "age": "12", "school": "\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633", "mobile_number": "1014590178", "whats_app_number": "1014590178", "e_mail": "hanaaelbehery@gmail.com", "home_address": "\\u0646\\u0648\\u0627\\u062c \\u0645\\u0631\\u0643\\u0632 \\u0637\\u0646\\u0637\\u0627", "any_suggestions": ""}	2022-06-05 04:13:21.765669+00	30
124	{"childs_name": "Nadeen Mohamed fathi", "age": "7", "school": "Naser government school", "mobile_number": "1060858213", "whats_app_number": "1151524540", "e_mail": "i2waffaa@gmail.com", "home_address": "Mansoura", "any_suggestions": ""}	2022-06-05 04:41:15.164315+00	30
125	{"childs_name": "Eyad allam", "age": "10", "school": "Paradise", "mobile_number": "1281120638", "whats_app_number": "1281120638", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-06-05 05:31:45.47032+00	30
126	{"childs_name": "Omar", "age": "11", "school": "Leaders school", "mobile_number": "1000070429", "whats_app_number": "1000070429", "e_mail": "maaaea@yahoo.com", "home_address": "Al narges 4 villas  306", "any_suggestions": ""}	2022-06-05 06:05:32.072392+00	30
127	{"childs_name": "Ahmed osama", "age": "13", "school": "Eleazar Elnmozagy school in banha", "mobile_number": "1003842582", "whats_app_number": "1003842582", "e_mail": "airoplane0555@gmail.com", "home_address": "Banha", "any_suggestions": ""}	2022-06-05 06:35:03.863318+00	30
128	{"childs_name": "Abdullah", "age": "16", "school": "Stem", "mobile_number": "1120410261", "whats_app_number": "1004346104", "e_mail": "mmadawy53@gmail.com", "home_address": "Hurghada", "any_suggestions": "Thanks"}	2022-06-05 06:37:25.31051+00	30
129	{"childs_name": "\\u0623\\u0635\\u0627\\u0644\\u0647 \\u0635\\u0627\\u0644\\u062d \\u0625\\u0628\\u0631\\u0627\\u0647\\u064a\\u0645 \\u0633\\u0627\\u0644\\u0645\\u0627\\u0646", "age": "15", "school": "\\u0627\\u0642\\u0637\\u064a\\u0647 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u064a\\u0647", "mobile_number": "1001242559", "whats_app_number": "1001242559", "e_mail": "saibr198@gmail.com", "home_address": "\\u0634\\u0645\\u0627\\u0644 \\u0633\\u064a\\u0646\\u0627\\u0621", "any_suggestions": "\\u0634\\u0643\\u0631\\u0627"}	2022-06-05 06:43:27.61573+00	30
130	{"childs_name": "Abdelrhman", "age": "11", "school": "\\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a\\u0647 \\u0635\\u0641 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633", "mobile_number": "1091909552", "whats_app_number": "1091909552", "e_mail": "", "home_address": "Elarish", "any_suggestions": ""}	2022-06-05 07:05:23.486495+00	30
131	{"childs_name": "Abdelrahman", "age": "11", "school": "\\u0645\\u0639\\u0647\\u062f \\u0646\\u0648\\u0631 \\u0627\\u0644\\u0627\\u0633\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0645\\u0648\\u0630\\u062c\\u064a", "mobile_number": "1024881448", "whats_app_number": "1024881448", "e_mail": "elbialyheba37@gmail.com", "home_address": "\\u062f\\u0645\\u064a\\u0627\\u0637 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0647", "any_suggestions": ""}	2022-06-05 07:51:12.882358+00	30
132	{"childs_name": "Ali Hazem", "age": "6", "school": "Lyc\\u00e9e Balzac", "mobile_number": "1000084708", "whats_app_number": "1000084708", "e_mail": "hammad.rania@gmail.com", "home_address": "5th Settlement", "any_suggestions": ""}	2022-06-05 08:30:54.724908+00	30
133	{"childs_name": "OmarSaleh", "age": "11", "school": "Alkami", "mobile_number": "1020316142", "whats_app_number": "1020316142", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-06-05 08:41:05.318268+00	30
134	{"childs_name": "OmarSaleh", "age": "11", "school": "Alkami", "mobile_number": "1020316142", "whats_app_number": "1020316142", "e_mail": "", "home_address": "Benisuef", "any_suggestions": ""}	2022-06-05 08:41:46.454348+00	30
135	{"childs_name": "OmarSaleh", "age": "11", "school": "Alkami", "mobile_number": "1020316142", "whats_app_number": "1020316142", "e_mail": "", "home_address": "Benisuef", "any_suggestions": "\\u0643\\u0645 \\u0633\\u0639\\u0631 \\u0627\\u0644\\u062a\\u062f\\u0631\\u064a\\u0628"}	2022-06-05 08:42:22.568816+00	30
136	{"childs_name": "\\u0646\\u0648\\u0631\\u0627\\u0646 \\u0639\\u0645\\u0627\\u062f", "age": "12", "school": "25\\u064a\\u0646\\u0627\\u064a\\u0631", "mobile_number": "1141406656", "whats_app_number": null, "e_mail": "emadabdalrahim12@gmail.com", "home_address": "\\u062d\\u064a25\\u064a\\u0646\\u0627\\u064a\\u0631", "any_suggestions": ""}	2022-06-05 08:58:16.75854+00	30
137	{"childs_name": "Youssef", "age": "6", "school": "Grn", "mobile_number": "1006671194", "whats_app_number": "1006671194", "e_mail": "jokeegy@gmail.com", "home_address": "New Assiut", "any_suggestions": ""}	2022-06-05 09:23:38.041446+00	30
138	{"childs_name": "\\u0627\\u0646\\u0633 \\u0633\\u064a\\u062f \\u0631\\u0645\\u0636\\u0627\\u0646", "age": "12", "school": "\\u0627\\u0644\\u0634\\u0647\\u064a\\u062f \\u064a\\u0627\\u0633\\u0631 \\u0643\\u0645\\u0627\\u0644 \\u062a\\u0645\\u0627\\u0645", "mobile_number": "1097319447", "whats_app_number": "1501014488", "e_mail": "anasalshak1@gmail.com", "home_address": "\\u0627\\u0644\\u0641\\u064a\\u0648\\u0645.\\u0627\\u0644\\u0639\\u0628\\u0648\\u062f\\u064a..\\u0627\\u0644\\u0645\\u0633\\u0644\\u0647", "any_suggestions": ""}	2022-06-05 10:24:20.778286+00	30
139	{"childs_name": "Yahia", "age": "9", "school": "Sidigaber SLS", "mobile_number": "1061030316", "whats_app_number": "1061030316", "e_mail": "mohammedeltawila@gmail.com", "home_address": "Alexandria", "any_suggestions": ""}	2022-06-05 10:32:39.243473+00	30
140	{"childs_name": "Esraa Badawy", "age": "14", "school": "Ramy helal school", "mobile_number": "1098100948", "whats_app_number": "1098100948", "e_mail": "sosoandmora@gmail.com", "home_address": "Fifth settlement", "any_suggestions": ""}	2022-06-05 10:34:49.857049+00	30
141	{"childs_name": "Ziad ehab", "age": "14", "school": "Nozha language school", "mobile_number": "1000350874", "whats_app_number": "1000350874", "e_mail": "emansharaf101@yahoo.com", "home_address": "", "any_suggestions": ""}	2022-06-05 11:43:54.059857+00	30
142	{"childs_name": "Shahd ElSayed Elgohary", "age": "12", "school": "Al azhar, tanta", "mobile_number": "1004301429", "whats_app_number": "1200007088", "e_mail": "elgoharys177@gmail.com", "home_address": "Tanta", "any_suggestions": "Call first would be great to discuss the opportunity"}	2022-06-05 12:23:05.695939+00	30
143	{"childs_name": "\\u0631\\u0642\\u064a\\u0629 \\u0645\\u062d\\u0645\\u062f \\u0645\\u0635\\u0637\\u0641\\u0649 \\u0639\\u0644\\u064a\\u0648\\u0629", "age": "13", "school": "\\u0627\\u0644\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u064a\\u0629 \\u0627\\u0644\\u0639\\u062c\\u0645\\u0649", "mobile_number": "1279321267", "whats_app_number": "1279321267", "e_mail": "huda_zead@yahoo.com", "home_address": "\\u0627\\u0644\\u0627\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0639\\u062c\\u0645\\u0649 \\u0623\\u0643\\u062a\\u0648\\u0628\\u0631", "any_suggestions": ""}	2022-06-05 16:02:12.937399+00	30
144	{"childs_name": "Manar \\u062d\\u0633\\u064a\\u0646", "age": "10", "school": "\\u0627\\u0644\\u0631\\u0642\\u0628\\u0629 \\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a\\u0629", "mobile_number": "1061852534", "whats_app_number": null, "e_mail": "omabdallahhussen@gmail.com", "home_address": "", "any_suggestions": ""}	2022-06-05 16:54:04.37123+00	30
145	{"childs_name": "\\u0639\\u0628\\u062f \\u0627\\u0644\\u0644\\u0647 \\u0645\\u062d\\u0645\\u062f \\u0639\\u0628\\u062f \\u0627\\u0644\\u0633\\u0644\\u0627\\u0645", "age": "14", "school": "\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0627\\u0644\\u062d\\u0649 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062a\\u062c\\u0631\\u0628\\u064a\\u0629", "mobile_number": "1280480303", "whats_app_number": "1024848511", "e_mail": "samahzakaria590@gmail.com", "home_address": "\\u0627\\u0644\\u062d\\u0649 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0634\\u064a\\u062e \\u0632\\u0627\\u064a\\u062f  \\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\\u0629", "any_suggestions": "\\u0627\\u0631\\u064a\\u062f \\u0645\\u0639\\u0631\\u0641\\u0629 \\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0648\\u0627\\u0639\\u064a\\u062f  \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629 \\r\\n\\u0648\\u0647\\u0644 \\u0628\\u0647\\u0627 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0648\\u0646 \\u0644\\u0627\\u064a\\u0646 \\u0627\\u0645 \\u0644\\u0627 \\r\\n\\u0648\\u0647\\u0644 \\u0628\\u0647\\u0627 \\u062a\\u062f\\u0631\\u064a\\u0628\\u0627\\u062a \\u0641\\u064a \\u0634\\u0631\\u0643\\u0627\\u062a \\u0645\\u0639\\u062a\\u0645\\u062f\\u0629"}	2022-06-05 17:29:51.265968+00	30
146	{"childs_name": "\\u0639\\u0628\\u062f \\u0627\\u0644\\u0644\\u0647 \\u0645\\u062d\\u0645\\u062f \\u0639\\u0628\\u062f \\u0627\\u0644\\u0633\\u0644\\u0627\\u0645", "age": "14", "school": "\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0627\\u0644\\u062d\\u0649 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u0627\\u0644\\u062a\\u062c\\u0631\\u0628\\u064a\\u0629", "mobile_number": "1280480303", "whats_app_number": "1024848511", "e_mail": "samahzakaria590@gmail.com", "home_address": "\\u0627\\u0644\\u062d\\u0649 \\u0627\\u0644\\u0627\\u0648\\u0644 \\u0627\\u0644\\u0634\\u064a\\u062e \\u0632\\u0627\\u064a\\u062f  \\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0631\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\\u0629", "any_suggestions": "\\u0627\\u0631\\u064a\\u062f \\u0645\\u0639\\u0631\\u0641\\u0629 \\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0648\\u0627\\u0639\\u064a\\u062f  \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629 \\r\\n\\u0648\\u0647\\u0644 \\u0628\\u0647\\u0627 \\u062f\\u0631\\u0648\\u0633 \\u0627\\u0648\\u0646 \\u0644\\u0627\\u064a\\u0646 \\u0627\\u0645 \\u0644\\u0627 \\r\\n\\u0648\\u0647\\u0644 \\u0628\\u0647\\u0627 \\u062a\\u062f\\u0631\\u064a\\u0628\\u0627\\u062a \\u0641\\u064a \\u0634\\u0631\\u0643\\u0627\\u062a \\u0645\\u0639\\u062a\\u0645\\u062f\\u0629"}	2022-06-05 17:30:11.154781+00	30
147	{"childs_name": "Yousef Mohamed", "age": "9", "school": "NIS", "mobile_number": "1000101601", "whats_app_number": "1000101601", "e_mail": "mhussien.khalil@gmail.com", "home_address": "El rehab", "any_suggestions": ""}	2022-06-11 22:26:19.918406+00	30
148	{"childs_name": "Ibrahim Ahmed", "age": "10", "school": "Jana Dan international school", "mobile_number": "1033656644", "whats_app_number": "1033656644", "e_mail": "manar_mahfouz@hotmail.com", "home_address": "Almanial - old cairo", "any_suggestions": ""}	2022-06-14 13:29:47.456089+00	30
149	{"childs_name": "Omar Ahmed", "age": "14", "school": "Nozha language school", "mobile_number": "1118099956", "whats_app_number": "1118099956", "e_mail": "muslama@gmail.com", "home_address": "Aghakhan El sahel, Cairo Egypt", "any_suggestions": ""}	2022-06-14 22:40:13.197439+00	30
150	{"childs_name": "Sara", "age": "11", "school": "Toukh Private School - National", "mobile_number": "1002132235", "whats_app_number": "1002132235", "e_mail": "securiteer@yahoo.com", "home_address": "Nasr City", "any_suggestions": "", "program": "Online"}	2022-06-21 18:50:30.211996+00	30
151	{"childs_name": "Yahia", "age": "13", "school": "Skyline", "mobile_number": "1557755558", "whats_app_number": "1557755558", "e_mail": "a_sma3il@hotmail.com", "home_address": "\\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0645\\u0646 \\u0627\\u0643\\u062a\\u0648\\u0628\\u0631", "any_suggestions": "", "program": "Offline"}	2022-06-21 20:32:11.047989+00	30
152	{"childs_name": "Fares yasser elkhateeb", "age": "6.5", "school": "Greenland", "mobile_number": "1025282088", "whats_app_number": "1025282088", "e_mail": "esraahalbas@gmail.com", "home_address": "Zayed", "any_suggestions": "Kids program", "program": "Offline"}	2022-06-26 21:30:21.161825+00	30
153	{"childs_name": "Ahmed sameh", "age": "9", "school": "Salah eldin schol", "mobile_number": "1002746862", "whats_app_number": "1002746862", "e_mail": "drsaeedlashen@yahoo.com", "home_address": "Dar elsalam cairo", "any_suggestions": "", "program": "Preferred program"}	2022-07-04 22:10:20.250026+00	30
154	{"childs_name": "Nadine", "age": "13", "school": "Orman trust language school", "mobile_number": "1229767355", "whats_app_number": "1229767355", "e_mail": "ahegeg@gmail.com", "home_address": "169 D, 20 Street In Front Of gardina Pharmcy", "any_suggestions": "", "program": "Online"}	2022-07-12 08:02:51.993144+00	30
155	{"childs_name": "OMAR AHMED ISMAIL", "age": "9", "school": "International public school October 3", "mobile_number": "1016167521", "whats_app_number": "1016167521", "e_mail": "shreen_taha@yahoo.com", "home_address": "133 G Hadayk Al Ahram", "any_suggestions": ""}	2022-07-23 23:52:56.163011+00	30
156	{"childs_name": "Ammar Hesham", "age": "8", "school": "Grad 3", "mobile_number": "96896638518", "whats_app_number": "96896638518", "e_mail": "razeeeef@gmail.com", "home_address": "", "any_suggestions": ""}	2022-07-24 01:17:45.745498+00	30
157	{"childs_name": "Ahmed Kareem", "age": "11", "school": "Futures language school", "mobile_number": "1150192330", "whats_app_number": "1150192330", "e_mail": "nargesdody597@gmail.com", "home_address": "Elsherouk city", "any_suggestions": ""}	2022-07-24 02:33:17.570858+00	30
158	{"childs_name": "\\u0645\\u0631\\u064a\\u0645 \\u0648\\u0627\\u0626\\u0644 \\u062d\\u0645\\u062f\\u064a \\u0627\\u062f\\u0631\\u064a\\u0633", "age": "9", "school": "\\u0627\\u0628\\u0646 \\u0639\\u0637\\u0627\\u0621 \\u0627\\u0644\\u0644\\u0647", "mobile_number": "1156415143", "whats_app_number": "1149787136", "e_mail": "enast71@gmail.com", "home_address": "\\u0663\\u0660 \\u0634 \\u0645\\u062d\\u0645\\u0648\\u062f \\u0639\\u0628\\u062f \\u0627\\u0644\\u0644\\u0647 \\u0645\\u062a\\u0641\\u0631\\u0639 \\u0645\\u0646 \\u0634 \\u062a\\u0631\\u0639\\u0647 \\u0639\\u0628\\u062f \\u0627\\u0644\\u0639\\u0627\\u0644 \\u0631\\u0642\\u0645 \\u0661 \\u0627\\u0644\\u0639\\u0634\\u0631\\u064a\\u0646 \\u0641\\u064a\\u0635\\u0644", "any_suggestions": ""}	2022-07-24 04:44:58.83444+00	30
159	{"childs_name": "Mohamed", "age": "12", "school": "Elnahda School", "mobile_number": "1229391544", "whats_app_number": "1229391544", "e_mail": "a.latif@act.eg", "home_address": "5 tayseer street queen nazli Faisal.", "any_suggestions": ""}	2022-07-24 13:25:42.648995+00	30
160	{"childs_name": "\\u0645\\u062d\\u0645\\u062f \\u0647\\u0627\\u0646\\u064a \\u0645\\u062d\\u0645\\u062f \\u0639\\u0628\\u062f\\u0627\\u0644\\u0645\\u0646\\u0639\\u0645", "age": "11", "school": "\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633", "mobile_number": "1207132377", "whats_app_number": "1207132377", "e_mail": "mohamedhany99000@gmail.com", "home_address": "\\u0634\\u0628\\u0631\\u0627 \\u0627\\u0644\\u062e\\u064a\\u0645\\u0647 \\u062b\\u0627\\u0646\\u064a \\u0627\\u0644\\u0642\\u0644\\u064a\\u0648\\u0628\\u064a\\u0647", "any_suggestions": ""}	2022-07-24 13:29:23.75997+00	30
161	{"childs_name": "Ameli", "age": "8", "school": "Masters", "mobile_number": "1110009585", "whats_app_number": "1110009585", "e_mail": "dr.samah.kamal.vip@gmail.com", "home_address": "Zayed", "any_suggestions": ""}	2022-07-24 14:14:53.309441+00	30
162	{"childs_name": "Abdallah mohamef", "age": "13", "school": "Geel 2000", "mobile_number": "1066885449", "whats_app_number": "1066885449", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-07-24 14:32:31.780477+00	30
163	{"childs_name": "Ahmed elmaddah ibrahim", "age": "12", "school": "Fadl modern school", "mobile_number": "1098234550", "whats_app_number": "1098234550", "e_mail": "walatoto1@gmail.com", "home_address": "10 elshshid street eltwabk faisel elgiza", "any_suggestions": ""}	2022-07-24 15:15:39.233649+00	30
164	{"childs_name": "Ahmed elmaddah ibrahim", "age": "12", "school": "Fadl modern school", "mobile_number": "1098234550", "whats_app_number": "1098234550", "e_mail": "walatoto1@gmail.com", "home_address": "10 elshshid street eltwabk faisel elgiza", "any_suggestions": ""}	2022-07-24 15:16:09.876972+00	30
165	{"childs_name": "Steven tamer", "age": "12", "school": "El salam", "mobile_number": "1288859279", "whats_app_number": "1288859279", "e_mail": "rashyne.2006@gmail.com", "home_address": "Hadaak October", "any_suggestions": ""}	2022-07-24 17:56:27.019748+00	30
166	{"childs_name": "\\u0647\\u0645\\u0633 \\u0633\\u0639\\u064a\\u062f", "age": "16", "school": "Fps", "mobile_number": "1150600919", "whats_app_number": "1116638333", "e_mail": "said_hussein2@yahoo.com", "home_address": "", "any_suggestions": "Details plz"}	2022-07-24 20:09:52.074581+00	30
167	{"childs_name": "Gudi Ayman Rashed", "age": "13", "school": "Osman Ahmed Osman", "mobile_number": "1006600668", "whats_app_number": "1006600668", "e_mail": "ayman16376@gmail.com", "home_address": "Sahl hamza-Haram-Giza", "any_suggestions": ""}	2022-07-24 23:09:44.837049+00	30
168	{"childs_name": "\\u0622\\u062f\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0645\\u0635\\u0637\\u0641\\u0649", "age": "4", "school": "\\u0644\\u0633\\u0647", "mobile_number": "1117863077", "whats_app_number": "1117863077", "e_mail": "shymwahmed@gmail.com", "home_address": "\\u0634 \\u0627\\u0644\\u0646\\u0648\\u0631 \\u0627\\u0644\\u0642\\u0648\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629/\\u0648\\u0631\\u0627\\u0642 \\u0627\\u0644\\u0639\\u0631\\u0628/\\u0627\\u0644\\u062c\\u064a\\u0632\\u0629", "any_suggestions": "\\u0644\\u0627"}	2022-07-25 00:18:55.818627+00	30
169	{"childs_name": "Omar", "age": "5", "school": "Brighton", "mobile_number": "1123862223", "whats_app_number": "1123862223", "e_mail": "eitos@hotmail.com", "home_address": "", "any_suggestions": ""}	2022-07-25 02:26:32.242199+00	30
170	{"childs_name": "Test", "age": "15", "school": "aef", "mobile_number": "1", "whats_app_number": "1", "e_mail": "caosyd@mailto.plus", "home_address": "sa", "any_suggestions": "as"}	2022-07-31 08:49:34.123104+00	30
171	{"childs_name": "Farid", "age": "7", "school": "Lycee Balzac", "mobile_number": "1006833314", "whats_app_number": "1006833314", "e_mail": "mnabillabib@gmail.com", "home_address": "3 Alnegma St, Heliopolis", "any_suggestions": ""}	2022-08-11 11:36:05.946533+00	30
172	{"childs_name": "\\u064a\\u0648\\u0633\\u0641 \\u0645\\u0635\\u0637\\u0641\\u064a", "age": "9", "school": "Maadi narmer school", "mobile_number": "1126597635", "whats_app_number": "1126597635", "e_mail": "eng_doaa2005@ymail.com", "home_address": "Maadi", "any_suggestions": "Gaming"}	2022-08-11 22:17:47.685914+00	30
173	{"childs_name": "Amir", "age": "8", "school": "Al Oriba school", "mobile_number": "1110207962", "whats_app_number": "1110207962", "e_mail": "", "home_address": "", "any_suggestions": ""}	2022-08-12 16:12:19.054455+00	30
174	{"childs_name": "Ahmed", "age": "11", "school": "MILS", "mobile_number": "1207775827", "whats_app_number": "1207775827", "e_mail": "mohamed_farag_1984@hotmail.com", "home_address": "Madinaty", "any_suggestions": ""}	2022-08-13 07:30:19.749592+00	30
175	{"childs_name": "0", "age": "0", "school": "0", "mobile_number": "0", "whats_app_number": "0", "e_mail": "mohfft5@gmail.com", "home_address": "0", "any_suggestions": "0"}	2022-08-14 01:31:31.525348+00	30
176	{"childs_name": "Marwan Mohamed Ahmed Abdallah", "age": "15", "school": "Manor House", "mobile_number": "1099937072", "whats_app_number": "1099937072", "e_mail": "marwanabdallah28@gmail.com", "home_address": "181, 2nd district, 2nd area, 5th settlement, New Cairo", "any_suggestions": ""}	2022-08-19 20:36:45.304173+00	30
177	{"childs_name": "Kinda Abdelshahid", "age": "8", "school": "Deutche school in Bab el Louk (DSB)", "mobile_number": "1278693447", "whats_app_number": "1278693447", "e_mail": "hananassad@hotmail.com", "home_address": "Heliopolis", "any_suggestions": "What if my daughter don\\u2019t know English?"}	2022-09-02 16:25:45.648967+00	30
178	{"childs_name": "eyad", "age": "11", "school": "...", "mobile_number": "1013652947", "whats_app_number": "1013652947", "e_mail": "eyadgaming469@gmail.com", "home_address": "...", "any_suggestions": ""}	2022-09-04 08:28:19.284719+00	30
179	{"childs_name": "eyad", "age": "11", "school": "...", "mobile_number": "1013652947", "whats_app_number": "1013652947", "e_mail": "eyadgaming469@gmail.com", "home_address": "...", "any_suggestions": ""}	2022-09-04 08:30:26.920151+00	30
180	{"childs_name": "atq", "age": "16", "school": "ptnk", "mobile_number": "767028964", "whats_app_number": "11111", "e_mail": "lisaquynhanh2903@gmail.com", "home_address": "123 abc", "any_suggestions": "no"}	2022-09-11 10:44:06.494448+00	30
181	{"childs_name": "Tareq", "age": "15", "school": "Future leaders", "mobile_number": "1022356340", "whats_app_number": "1022356340", "e_mail": "dr.Dinaomara00@gmail.com", "home_address": "Ordonia", "any_suggestions": ""}	2022-09-14 07:15:39.166573+00	30
182	{"childs_name": "Tareq", "age": "15", "school": "Future leaders", "mobile_number": "1022356340", "whats_app_number": "1022356340", "e_mail": "dr.Dinaomara00@gmail.com", "home_address": "Ordonia", "any_suggestions": ""}	2022-09-14 07:15:39.416387+00	30
183	{"childs_name": "Farida", "age": "9", "school": "City language school", "mobile_number": "1066601067", "whats_app_number": "1066601067", "e_mail": "bluedan21@gmail.com", "home_address": "6th of October", "any_suggestions": ""}	2022-09-15 08:27:55.802321+00	30
184	{"childs_name": "Youssef Mohamed koraiem", "age": "9", "school": "\\u0645\\u062f\\u0631\\u0633\\u0629 \\u062f\\u0645\\u0646\\u0647\\u0648\\u0631 \\u0627\\u0644\\u0631\\u0633\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0645\\u064a\\u0632\\u0629 \\u0644\\u063a\\u0627\\u062a", "mobile_number": "1274825320", "whats_app_number": "1274825320", "e_mail": "dr.omartalat@gmail.com", "home_address": "El Behaira - Damanhour - Pharmacists Syndicate", "any_suggestions": "He wants to register in game development track"}	2022-09-21 18:22:12.911863+00	30
185	{"childs_name": "Khaled Mohamed Khaled", "age": "7", "school": "Rajac american school", "mobile_number": "1211292607", "whats_app_number": "1211292607", "e_mail": "mohamed.k.soliman8890@gmail.com", "home_address": "Rehab - new cairo", "any_suggestions": ""}	2022-10-11 00:59:37.126236+00	30
186	{"childs_name": "Laila Mohamed Khaled", "age": "5", "school": "Rajac american school", "mobile_number": "1211292607", "whats_app_number": "1211292607", "e_mail": "mohamed.k.soliman8890@gmail.com", "home_address": "Rehab - New cairo", "any_suggestions": ""}	2022-10-11 01:00:57.782888+00	30
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
1	Scratch course	original_images/scratch1.png	400	289	2021-05-06 22:42:49.83988+00	\N	\N	\N	\N	1	27824	1	7344a3a0b20a4d127325b17715b90399d309c0aa
2	MIT app inventor Level	original_images/Mit_app_inventor.png	600	230	2021-05-06 23:01:49.653086+00	\N	\N	\N	\N	1	21008	1	b3ada103cae1c42d77e50145822366960b0d5355
3	Python course	original_images/Python_logo_and_wordmark.svg.png	1200	356	2021-05-07 04:11:05.689153+00	\N	\N	\N	\N	1	43576	1	5144d0d639e1fcbe593da3145023933ea4779ee6
4	Artificial intelligence (AI) course	original_images/gn.png	449	464	2021-05-07 04:55:33.418942+00	\N	\N	\N	\N	1	371253	1	6319b64d987487d65d1e27a9c1744afa6a71da80
5	Capture.PNG	original_images/Capture.PNG	710	235	2021-05-08 04:29:32.422261+00	\N	\N	\N	\N	1	65549	1	9bddfd7383999fe6bf3b4f5713da08224a847d6e
6	Blockly.svg	original_images/Blockly.png	246	80	2021-05-08 05:05:14.90222+00	\N	\N	\N	\N	1	6486	1	4495635398a3ab4eca685df16b6f62b9a1de0ff8
7	HTML & CSS Course	original_images/html_css.PNG	462	304	2021-05-10 04:19:38.539512+00	\N	\N	\N	\N	1	45511	1	f781c089f411a066d63b1ba0545bf6021b54cf2a
8	JavaScript	original_images/download.png	225	225	2021-07-28 08:53:11.59744+00	\N	\N	\N	\N	1	2167	1	dde1fcb20cc1aded44492a11a2c56c13930b29b1
9	Flask	original_images/download_1.png	359	140	2021-07-28 09:14:49.185442+00	\N	\N	\N	\N	1	7268	1	7151bba5308a047922804a4b1c682e2a79b7c858
10	Flutter	original_images/download_2.png	367	137	2021-07-28 10:15:44.46241+00	\N	\N	\N	\N	1	6130	1	f8a984c0ae18692bfd433fdb436d18ed30340636
11	STEM	original_images/185183089_23847330739990677_5097279844585002920_n.jpg	526	526	2021-07-28 10:40:43.649166+00	\N	\N	\N	\N	1	38610	1	e91d0cf0da4be21b373cef3b409090b887dadbd2
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
1	images/scratch1.max-165x165.png	165	119		max-165x165	1
2	images/scratch1.original.png	400	289		original	1
3	images/scratch1.max-800x600.png	400	289		max-800x600	1
4	images/Mit_app_inventor.max-165x165.png	165	63		max-165x165	2
5	images/Mit_app_inventor.original.png	600	230		original	2
6	images/Python_logo_and_wordmark.svg.max-165x165.png	165	48		max-165x165	3
7	images/Python_logo_and_wordmark.svg.original.png	1200	356		original	3
8	images/gn.max-165x165.png	159	165		max-165x165	4
9	images/gn.original.png	449	464		original	4
10	images/Capture.max-165x165.png	165	54		max-165x165	5
11	images/Capture.original.png	710	235		original	5
12	images/Blockly.max-165x165.png	165	53		max-165x165	6
13	images/Blockly.original.png	246	80		original	6
14	images/html_css.max-165x165.png	165	108		max-165x165	7
15	images/html_css.original.png	462	304		original	7
16	images/download.max-165x165.png	165	165		max-165x165	8
17	images/download.original.png	225	225		original	8
18	images/download_1.max-165x165.png	165	64		max-165x165	9
19	images/download_1.original.png	359	140		original	9
20	images/download_2.max-165x165.png	165	61		max-165x165	10
21	images/download_2.original.png	367	137		original	10
22	images/185183089_23847330739990677_5097279844585002.max-165x165.jpg	165	165		max-165x165	11
23	images/185183089_23847330739990677_5097279844585002.max-800x600.jpg	526	526		max-800x600	11
24	images/185183089_23847330739990677_509727984458500292.width-800.jpg	526	526		width-800	11
\.


--
-- Data for Name: wagtailimages_uploadedimage; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailimages_uploadedimage (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: cschool
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar) FROM stdin;
1	t	t	t	1			
2	t	t	t	2			
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 16, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 203, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cms_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.cms_blogcategory_id_seq', 1, true);


--
-- Name: cms_blogindexpagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.cms_blogindexpagetag_id_seq', 1, false);


--
-- Name: cms_coursepage_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.cms_coursepage_categories_id_seq', 21, true);


--
-- Name: cms_coursescategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.cms_coursescategory_id_seq', 2, true);


--
-- Name: cms_coursesindexpagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.cms_coursesindexpagetag_id_seq', 65, true);


--
-- Name: cms_formfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.cms_formfield_id_seq', 23, true);


--
-- Name: cms_postpage_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.cms_postpage_categories_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 53, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 51, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 166, true);


--
-- Name: offers_kid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.offers_kid_id_seq', 1743, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 18, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 13, true);


--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailadmin_admin_id_seq', 1, false);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_groupapprovaltask_groups_id_seq', 1, true);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 10, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 7, true);


--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_locale_id_seq', 1, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 46, true);


--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_pagelogentry_id_seq', 281, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 148, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 4, true);


--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_task_id_seq', 1, true);


--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_taskstate_id_seq', 1, false);


--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_workflow_id_seq', 1, true);


--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_workflowstate_id_seq', 1, false);


--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailcore_workflowtask_id_seq', 1, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);


--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtaildocs_uploadeddocument_id_seq', 1, false);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, true);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 186, true);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 11, true);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 24, true);


--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailimages_uploadedimage_id_seq', 1, false);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cschool
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cms_blogcategory cms_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogcategory
    ADD CONSTRAINT cms_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: cms_blogcategory cms_blogcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogcategory
    ADD CONSTRAINT cms_blogcategory_slug_key UNIQUE (slug);


--
-- Name: cms_blogindexpage cms_blogindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogindexpage
    ADD CONSTRAINT cms_blogindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: cms_blogindexpagetag cms_blogindexpagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogindexpagetag
    ADD CONSTRAINT cms_blogindexpagetag_pkey PRIMARY KEY (id);


--
-- Name: cms_coursepage_categories cms_coursepage_categorie_coursepage_id_coursescat_6c543a3d_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage_categories
    ADD CONSTRAINT cms_coursepage_categorie_coursepage_id_coursescat_6c543a3d_uniq UNIQUE (coursepage_id, coursescategory_id);


--
-- Name: cms_coursepage_categories cms_coursepage_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage_categories
    ADD CONSTRAINT cms_coursepage_categories_pkey PRIMARY KEY (id);


--
-- Name: cms_coursepage cms_coursepage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage
    ADD CONSTRAINT cms_coursepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: cms_coursescategory cms_coursescategory_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursescategory
    ADD CONSTRAINT cms_coursescategory_pkey PRIMARY KEY (id);


--
-- Name: cms_coursescategory cms_coursescategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursescategory
    ADD CONSTRAINT cms_coursescategory_slug_key UNIQUE (slug);


--
-- Name: cms_coursesindexpage cms_coursesindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursesindexpage
    ADD CONSTRAINT cms_coursesindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: cms_coursesindexpagetag cms_coursesindexpagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursesindexpagetag
    ADD CONSTRAINT cms_coursesindexpagetag_pkey PRIMARY KEY (id);


--
-- Name: cms_formfield cms_formfield_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_formfield
    ADD CONSTRAINT cms_formfield_pkey PRIMARY KEY (id);


--
-- Name: cms_formpage cms_formpage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_formpage
    ADD CONSTRAINT cms_formpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: cms_membershippage cms_membershippage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_membershippage
    ADD CONSTRAINT cms_membershippage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: cms_membershipsindexpage cms_membershipsindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_membershipsindexpage
    ADD CONSTRAINT cms_membershipsindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: cms_postpage_categories cms_postpage_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage_categories
    ADD CONSTRAINT cms_postpage_categories_pkey PRIMARY KEY (id);


--
-- Name: cms_postpage_categories cms_postpage_categories_postpage_id_blogcategory_c892e96b_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage_categories
    ADD CONSTRAINT cms_postpage_categories_postpage_id_blogcategory_c892e96b_uniq UNIQUE (postpage_id, blogcategory_id);


--
-- Name: cms_postpage cms_postpage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage
    ADD CONSTRAINT cms_postpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_homepage home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: offers_kid offers_kid_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.offers_kid
    ADD CONSTRAINT offers_kid_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailadmin_admin wagtailadmin_admin_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailadmin_admin
    ADD CONSTRAINT wagtailadmin_admin_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq UNIQUE (groupapprovaltask_id, group_id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprovaltask_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprovaltask_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupapprovaltask wagtailcore_groupapprovaltask_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapprovaltask_pkey PRIMARY KEY (task_ptr_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_locale wagtailcore_locale_language_code_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_language_code_key UNIQUE (language_code);


--
-- Name: wagtailcore_locale wagtailcore_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_translation_key_locale_id_9b041bad_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_translation_key_locale_id_9b041bad_uniq UNIQUE (translation_key, locale_id);


--
-- Name: wagtailcore_pagelogentry wagtailcore_pagelogentry_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pagelogentry_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_task wagtailcore_task_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflow wagtailcore_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflow
    ADD CONSTRAINT wagtailcore_workflow_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowpage wagtailcore_workflowpage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflowpage_pkey PRIMARY KEY (page_id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_current_task_state_id_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_current_task_state_id_key UNIQUE (current_task_state_id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq UNIQUE (workflow_id, task_id);


--
-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_uploadeddocument wagtaildocs_uploadeddocument_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploadeddocument_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_hash_c9bd8c9a_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_hash_c9bd8c9a_uniq UNIQUE (hash);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_uploadedimage wagtailimages_uploadedimage_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_uploadedimage_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: cms_blogcategory_slug_54646400_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_blogcategory_slug_54646400_like ON public.cms_blogcategory USING btree (slug varchar_pattern_ops);


--
-- Name: cms_blogindexpagetag_content_object_id_d19b7fe5; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_blogindexpagetag_content_object_id_d19b7fe5 ON public.cms_blogindexpagetag USING btree (content_object_id);


--
-- Name: cms_blogindexpagetag_tag_id_a591021e; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_blogindexpagetag_tag_id_a591021e ON public.cms_blogindexpagetag USING btree (tag_id);


--
-- Name: cms_coursepage_categories_coursepage_id_ba0d490f; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_coursepage_categories_coursepage_id_ba0d490f ON public.cms_coursepage_categories USING btree (coursepage_id);


--
-- Name: cms_coursepage_categories_coursescategory_id_5d98c61c; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_coursepage_categories_coursescategory_id_5d98c61c ON public.cms_coursepage_categories USING btree (coursescategory_id);


--
-- Name: cms_coursepage_header_image_id_f3b9236b; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_coursepage_header_image_id_f3b9236b ON public.cms_coursepage USING btree (header_image_id);


--
-- Name: cms_coursescategory_slug_aff7980b_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_coursescategory_slug_aff7980b_like ON public.cms_coursescategory USING btree (slug varchar_pattern_ops);


--
-- Name: cms_coursesindexpagetag_content_object_id_037b70ea; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_coursesindexpagetag_content_object_id_037b70ea ON public.cms_coursesindexpagetag USING btree (content_object_id);


--
-- Name: cms_coursesindexpagetag_tag_id_f62a3abd; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_coursesindexpagetag_tag_id_f62a3abd ON public.cms_coursesindexpagetag USING btree (tag_id);


--
-- Name: cms_formfield_page_id_0c959edf; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_formfield_page_id_0c959edf ON public.cms_formfield USING btree (page_id);


--
-- Name: cms_formpage_thank_you_page_id_2e18e1d1; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_formpage_thank_you_page_id_2e18e1d1 ON public.cms_formpage USING btree (thank_you_page_id);


--
-- Name: cms_membershippage_header_image_id_d4051599; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_membershippage_header_image_id_d4051599 ON public.cms_membershippage USING btree (header_image_id);


--
-- Name: cms_postpage_categories_blogcategory_id_c4c42f68; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_postpage_categories_blogcategory_id_c4c42f68 ON public.cms_postpage_categories USING btree (blogcategory_id);


--
-- Name: cms_postpage_categories_postpage_id_4db311a4; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_postpage_categories_postpage_id_4db311a4 ON public.cms_postpage_categories USING btree (postpage_id);


--
-- Name: cms_postpage_header_image_id_4b967bf7; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX cms_postpage_header_image_id_4b967bf7 ON public.cms_postpage USING btree (header_image_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: unique_in_progress_workflow; Type: INDEX; Schema: public; Owner: cschool
--

CREATE UNIQUE INDEX unique_in_progress_workflow ON public.wagtailcore_workflowstate USING btree (page_id) WHERE ((status)::text = ANY ((ARRAY['in_progress'::character varying, 'needs_changes'::character varying])::text[]));


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea ON public.wagtailcore_groupapprovaltask_groups USING btree (groupapprovaltask_id);


--
-- Name: wagtailcore_groupapprovaltask_groups_group_id_2e64b61f; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_groupapprovaltask_groups_group_id_2e64b61f ON public.wagtailcore_groupapprovaltask_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_locale_language_code_03149338_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_locale_language_code_03149338_like ON public.wagtailcore_locale USING btree (language_code varchar_pattern_ops);


--
-- Name: wagtailcore_page_alias_of_id_12945502; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_alias_of_id_12945502 ON public.wagtailcore_page USING btree (alias_of_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_locale_id_3c7e30a6; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_locale_id_3c7e30a6 ON public.wagtailcore_page USING btree (locale_id);


--
-- Name: wagtailcore_page_locked_by_id_bcb86245; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_locked_by_id_bcb86245 ON public.wagtailcore_page USING btree (locked_by_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagelogentry_action_c2408198; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagelogentry_action_c2408198 ON public.wagtailcore_pagelogentry USING btree (action);


--
-- Name: wagtailcore_pagelogentry_action_c2408198_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagelogentry_action_c2408198_like ON public.wagtailcore_pagelogentry USING btree (action varchar_pattern_ops);


--
-- Name: wagtailcore_pagelogentry_content_changed_99f27ade; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagelogentry_content_changed_99f27ade ON public.wagtailcore_pagelogentry USING btree (content_changed);


--
-- Name: wagtailcore_pagelogentry_content_type_id_74e7708a; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagelogentry_content_type_id_74e7708a ON public.wagtailcore_pagelogentry USING btree (content_type_id);


--
-- Name: wagtailcore_pagelogentry_page_id_8464e327; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagelogentry_page_id_8464e327 ON public.wagtailcore_pagelogentry USING btree (page_id);


--
-- Name: wagtailcore_pagelogentry_revision_id_8043d103; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagelogentry_revision_id_8043d103 ON public.wagtailcore_pagelogentry USING btree (revision_id);


--
-- Name: wagtailcore_pagelogentry_user_id_604ccfd8; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagelogentry_user_id_604ccfd8 ON public.wagtailcore_pagelogentry USING btree (user_id);


--
-- Name: wagtailcore_pagerevision_approved_go_live_at_e56afc67; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagerevision_approved_go_live_at_e56afc67 ON public.wagtailcore_pagerevision USING btree (approved_go_live_at);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtailcore_task_content_type_id_249ab8ba; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_task_content_type_id_249ab8ba ON public.wagtailcore_task USING btree (content_type_id);


--
-- Name: wagtailcore_taskstate_content_type_id_0a758fdc; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_taskstate_content_type_id_0a758fdc ON public.wagtailcore_taskstate USING btree (content_type_id);


--
-- Name: wagtailcore_taskstate_finished_by_id_13f98229; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_taskstate_finished_by_id_13f98229 ON public.wagtailcore_taskstate USING btree (finished_by_id);


--
-- Name: wagtailcore_taskstate_page_revision_id_9f52c88e; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_taskstate_page_revision_id_9f52c88e ON public.wagtailcore_taskstate USING btree (page_revision_id);


--
-- Name: wagtailcore_taskstate_task_id_c3677c34; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_taskstate_task_id_c3677c34 ON public.wagtailcore_taskstate USING btree (task_id);


--
-- Name: wagtailcore_taskstate_workflow_state_id_9239a775; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_taskstate_workflow_state_id_9239a775 ON public.wagtailcore_taskstate USING btree (workflow_state_id);


--
-- Name: wagtailcore_workflowpage_workflow_id_56f56ff6; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_workflowpage_workflow_id_56f56ff6 ON public.wagtailcore_workflowpage USING btree (workflow_id);


--
-- Name: wagtailcore_workflowstate_page_id_6c962862; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_workflowstate_page_id_6c962862 ON public.wagtailcore_workflowstate USING btree (page_id);


--
-- Name: wagtailcore_workflowstate_requested_by_id_4090bca3; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_workflowstate_requested_by_id_4090bca3 ON public.wagtailcore_workflowstate USING btree (requested_by_id);


--
-- Name: wagtailcore_workflowstate_workflow_id_1f18378f; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_workflowstate_workflow_id_1f18378f ON public.wagtailcore_workflowstate USING btree (workflow_id);


--
-- Name: wagtailcore_workflowtask_task_id_ce7716fe; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_workflowtask_task_id_ce7716fe ON public.wagtailcore_workflowtask USING btree (task_id);


--
-- Name: wagtailcore_workflowtask_workflow_id_b9717175; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailcore_workflowtask_workflow_id_b9717175 ON public.wagtailcore_workflowtask USING btree (workflow_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73 ON public.wagtaildocs_uploadeddocument USING btree (uploaded_by_user_id);


--
-- Name: wagtailembeds_embed_hash_c9bd8c9a_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailembeds_embed_hash_c9bd8c9a_like ON public.wagtailembeds_embed USING btree (hash varchar_pattern_ops);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailimages_uploadedimage_uploaded_by_user_id_85921689; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailimages_uploadedimage_uploaded_by_user_id_85921689 ON public.wagtailimages_uploadedimage USING btree (uploaded_by_user_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: cschool
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_blogindexpage cms_blogindexpage_page_ptr_id_1391b50a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogindexpage
    ADD CONSTRAINT cms_blogindexpage_page_ptr_id_1391b50a_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_blogindexpagetag cms_blogindexpagetag_content_object_id_d19b7fe5_fk_cms_postp; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogindexpagetag
    ADD CONSTRAINT cms_blogindexpagetag_content_object_id_d19b7fe5_fk_cms_postp FOREIGN KEY (content_object_id) REFERENCES public.cms_postpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_blogindexpagetag cms_blogindexpagetag_tag_id_a591021e_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_blogindexpagetag
    ADD CONSTRAINT cms_blogindexpagetag_tag_id_a591021e_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_coursepage_categories cms_coursepage_categ_coursepage_id_ba0d490f_fk_cms_cours; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage_categories
    ADD CONSTRAINT cms_coursepage_categ_coursepage_id_ba0d490f_fk_cms_cours FOREIGN KEY (coursepage_id) REFERENCES public.cms_coursepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_coursepage_categories cms_coursepage_categ_coursescategory_id_5d98c61c_fk_cms_cours; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage_categories
    ADD CONSTRAINT cms_coursepage_categ_coursescategory_id_5d98c61c_fk_cms_cours FOREIGN KEY (coursescategory_id) REFERENCES public.cms_coursescategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_coursepage cms_coursepage_header_image_id_f3b9236b_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage
    ADD CONSTRAINT cms_coursepage_header_image_id_f3b9236b_fk_wagtailim FOREIGN KEY (header_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_coursepage cms_coursepage_page_ptr_id_10cd0c0e_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursepage
    ADD CONSTRAINT cms_coursepage_page_ptr_id_10cd0c0e_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_coursesindexpagetag cms_coursesindexpage_content_object_id_037b70ea_fk_cms_cours; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursesindexpagetag
    ADD CONSTRAINT cms_coursesindexpage_content_object_id_037b70ea_fk_cms_cours FOREIGN KEY (content_object_id) REFERENCES public.cms_coursepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_coursesindexpage cms_coursesindexpage_page_ptr_id_ea679fc5_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursesindexpage
    ADD CONSTRAINT cms_coursesindexpage_page_ptr_id_ea679fc5_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_coursesindexpagetag cms_coursesindexpagetag_tag_id_f62a3abd_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_coursesindexpagetag
    ADD CONSTRAINT cms_coursesindexpagetag_tag_id_f62a3abd_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_formfield cms_formfield_page_id_0c959edf_fk_cms_formpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_formfield
    ADD CONSTRAINT cms_formfield_page_id_0c959edf_fk_cms_formpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES public.cms_formpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_formpage cms_formpage_page_ptr_id_889a9b49_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_formpage
    ADD CONSTRAINT cms_formpage_page_ptr_id_889a9b49_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_formpage cms_formpage_thank_you_page_id_2e18e1d1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_formpage
    ADD CONSTRAINT cms_formpage_thank_you_page_id_2e18e1d1_fk_wagtailcore_page_id FOREIGN KEY (thank_you_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_membershippage cms_membershippage_header_image_id_d4051599_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_membershippage
    ADD CONSTRAINT cms_membershippage_header_image_id_d4051599_fk_wagtailim FOREIGN KEY (header_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_membershippage cms_membershippage_page_ptr_id_693e41a9_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_membershippage
    ADD CONSTRAINT cms_membershippage_page_ptr_id_693e41a9_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_membershipsindexpage cms_membershipsindex_page_ptr_id_bf56ac30_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_membershipsindexpage
    ADD CONSTRAINT cms_membershipsindex_page_ptr_id_bf56ac30_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_postpage_categories cms_postpage_categor_blogcategory_id_c4c42f68_fk_cms_blogc; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage_categories
    ADD CONSTRAINT cms_postpage_categor_blogcategory_id_c4c42f68_fk_cms_blogc FOREIGN KEY (blogcategory_id) REFERENCES public.cms_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_postpage_categories cms_postpage_categor_postpage_id_4db311a4_fk_cms_postp; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage_categories
    ADD CONSTRAINT cms_postpage_categor_postpage_id_4db311a4_fk_cms_postp FOREIGN KEY (postpage_id) REFERENCES public.cms_postpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_postpage cms_postpage_header_image_id_4b967bf7_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage
    ADD CONSTRAINT cms_postpage_header_image_id_4b967bf7_fk_wagtailimages_image_id FOREIGN KEY (header_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_postpage cms_postpage_page_ptr_id_dd397763_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.cms_postpage
    ADD CONSTRAINT cms_postpage_page_ptr_id_dd397763_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco FOREIGN KEY (groupapprovaltask_id) REFERENCES public.wagtailcore_groupapprovaltask(task_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco FOREIGN KEY (task_ptr_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id FOREIGN KEY (alias_of_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id FOREIGN KEY (locale_id) REFERENCES public.wagtailcore_locale(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id FOREIGN KEY (locked_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagelogentry wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_task wagtailcore_task_content_type_id_249ab8ba_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_content_type_id_249ab8ba_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco FOREIGN KEY (page_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco FOREIGN KEY (workflow_state_id) REFERENCES public.wagtailcore_workflowstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id FOREIGN KEY (finished_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco FOREIGN KEY (current_task_state_id) REFERENCES public.wagtailcore_taskstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_page_id_6c962862_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_page_id_6c962862_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowpage wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user FOREIGN KEY (requested_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowtask wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowpage wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowtask wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_uploadeddocument wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_uploadedimage wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cschool
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

