-- Table: public.land-transaction-tax-category

CREATE TABLE IF NOT EXISTS public."land-transaction-tax-category"
(
    id SERIAL PRIMARY KEY,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    description character varying COLLATE pg_catalog."default",
    "documentation-url" character varying COLLATE pg_catalog."default",
    "land-transaction-tax-band" character varying COLLATE pg_catalog."default",
    "start-date" date,
    "end-date" date
)

-- Table: public.land-transaction-tax-rate

CREATE TABLE IF NOT EXISTS public."land-transaction-tax-rate"
(
    id SERIAL PRIMARY KEY,
 --   name character varying COLLATE pg_catalog."default" NOT NULL,
    "description" character varying,
    "lower-threshold" numeric(15,6),
    "upper-threshold" numeric(15,6),
    "rate" numeric(10,4),
    "land-transaction-tax-category" character varying COLLATE pg_catalog."default",
    "statistical-geography" character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "start-date" date,
    "end-date" date
)

-- Table: public.use-class-part

-- DROP TABLE IF EXISTS public."use-class-part";

CREATE TABLE IF NOT EXISTS public."use-class-part"
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",
    name character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "use-class-part" character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "start-date" date,
    "end-date" date
)

-- Table: public.use-class

-- DROP TABLE IF EXISTS public."use-class";

CREATE TABLE IF NOT EXISTS public."use-class"
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",
    "use-class" character varying COLLATE pg_catalog."default",
    "use-class-part" character varying COLLATE pg_catalog."default",
    name character varying COLLATE pg_catalog."default",
    "description" character varying COLLATE pg_catalog."default",
    "usage-types" character varying COLLATE pg_catalog."default",
    "start-date" date,
    "end-date" date
)