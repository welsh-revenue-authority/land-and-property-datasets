-- Table: public.land_transaction_tax_category

CREATE TABLE IF NOT EXISTS public."land_transaction_tax_category"
(
    id SERIAL PRIMARY KEY,
    name_en character varying COLLATE pg_catalog."default" NOT NULL,
	name_cy character varying COLLATE pg_catalog."default" NOT NULL,
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "documentation_url_en" character varying COLLATE pg_catalog."default",
    "documentation_url_cy" character varying COLLATE pg_catalog."default",
    "land_transaction_tax_band" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
)

-- Table: public.land_transaction_tax_rate

CREATE TABLE IF NOT EXISTS public."land_transaction_tax_rate"
(
    id SERIAL PRIMARY KEY,
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "lower_threshold" numeric(15,2),
    "upper_threshold" numeric(15,2),
    "rate" numeric(10,2),
    "land_transaction_tax_category" character varying COLLATE pg_catalog."default",
    "geography_id" character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
)

-- Table: public.use-class-part

-- DROP TABLE IF EXISTS public."use_class_part";

CREATE TABLE IF NOT EXISTS public."use_class_part"
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",
    name_en character varying COLLATE pg_catalog."default",
	name_cy character varying COLLATE pg_catalog."default",
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "use_class_part" character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
)

-- Table: public.use_class

-- DROP TABLE IF EXISTS public."use_class";

CREATE TABLE IF NOT EXISTS public."use_class"
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",
    "use_class" character varying COLLATE pg_catalog."default",
    "use_class_part" character varying COLLATE pg_catalog."default",
    name_en character varying COLLATE pg_catalog."default",
	name_cy character varying COLLATE pg_catalog."default",
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "usage_types_en" character varying COLLATE pg_catalog."default",
    "usage_types_cy" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
)