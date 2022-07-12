-- Table: public.land-transaction-tax-category

CREATE TABLE IF NOT EXISTS public."land-transaction-tax-category"
(
    id SERIAL PRIMARY KEY,
    name_en character varying COLLATE pg_catalog."default" NOT NULL,
	name_cy character varying COLLATE pg_catalog."default" NOT NULL,
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "documentation-url_en" character varying COLLATE pg_catalog."default",
    "documentation-url_cy" character varying COLLATE pg_catalog."default",
    "land-transaction-tax-band" character varying COLLATE pg_catalog."default",
    "start-date" date,
    "end-date" date
)

-- Table: public.land-transaction-tax-rate

CREATE TABLE IF NOT EXISTS public."land-transaction-tax-rate"
(
    id SERIAL PRIMARY KEY,
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "lower-threshold" numeric(15,2),
    "upper-threshold" numeric(15,2),
    "rate" numeric(10,2),
    "land-transaction-tax-category" character varying COLLATE pg_catalog."default",
    "geography-id" character varying COLLATE pg_catalog."default",
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
    name_en character varying COLLATE pg_catalog."default",
	name_cy character varying COLLATE pg_catalog."default",
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
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
    name_en character varying COLLATE pg_catalog."default",
	name_cy character varying COLLATE pg_catalog."default",
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "usage-types_en" character varying COLLATE pg_catalog."default",
    "usage-types_cy" character varying COLLATE pg_catalog."default",
    "start-date" date,
    "end-date" date
)