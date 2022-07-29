-- Table: public.council_tax_band
DROP TABLE IF EXISTS public.council_tax_band;

CREATE TABLE IF NOT EXISTS public.council_tax_band
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",	
    name_en character varying COLLATE pg_catalog."default",
	name_cy character varying COLLATE pg_catalog."default",
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "lower_threshold" numeric(15,2),
    "upper_threshold" numeric(15,2),
    "documentation_url_en" character varying COLLATE pg_catalog."default",
    "documentation_url_cy" character varying COLLATE pg_catalog."default",
    "council_tax_band" character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
);

-- Table: public.council_tax_rate
DROP TABLE IF EXISTS public.council_tax_rate;

CREATE TABLE IF NOT EXISTS public.council_tax_rate
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",	
    council_tax_band character varying COLLATE pg_catalog."default",
    amount numeric(15,2),
    "geography_id" character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "documentation_url_en" character varying COLLATE pg_catalog."default",
    "documentation_url_cy" character varying COLLATE pg_catalog."default",
    "council_tax_rate" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
);


-- Table: public.land_transaction_tax_category
DROP TABLE IF EXISTS public.land_transaction_tax_category;

CREATE TABLE IF NOT EXISTS public."land_transaction_tax_category"
(
    id SERIAL PRIMARY KEY,
	"reference" character varying COLLATE pg_catalog."default",
    name_en character varying COLLATE pg_catalog."default" NOT NULL,
	name_cy character varying COLLATE pg_catalog."default" NOT NULL,
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "documentation_url_en" character varying COLLATE pg_catalog."default",
    "documentation_url_cy" character varying COLLATE pg_catalog."default",
    "land_transaction_tax_category" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
);


-- Table: public.land_transaction_tax_rate
DROP TABLE IF EXISTS public.land_transaction_tax_rate;

CREATE TABLE IF NOT EXISTS public."land_transaction_tax_rate"
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",	
	land_transaction_tax_threshold INTEGER,
	land_transaction_tax_rate INTEGER,
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "rate" numeric(10,2),
    "geography_id" character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
);

-- Table: public.land_transaction_tax_threshold
DROP TABLE IF EXISTS public.land_transaction_tax_threshold;

CREATE TABLE IF NOT EXISTS public.land_transaction_tax_threshold
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",	
	land_transaction_tax_threshold INTEGER,
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
    "lower_threshold" numeric(15,2),
    "upper_threshold" numeric(15,2),
    land_transaction_tax_category INTEGER,
    "organisation" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
);

-- Table: public.use-class-part
DROP TABLE IF EXISTS public."use_class_part";

CREATE TABLE IF NOT EXISTS public."use_class_part"
(
    id SERIAL PRIMARY KEY,
    "reference" character varying COLLATE pg_catalog."default",
    name_en character varying COLLATE pg_catalog."default",
	name_cy character varying COLLATE pg_catalog."default",
    description_en character varying COLLATE pg_catalog."default",
    description_cy character varying COLLATE pg_catalog."default",
	use_class_part character varying COLLATE pg_catalog."default",
    "organisation" character varying COLLATE pg_catalog."default",
    "start_date" date,
    "end_date" date
);

-- Table: public.use_class
DROP TABLE IF EXISTS public."use_class";

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
);

-- Table: public.lr_transactions
DROP TABLE IF EXISTS public.lr_transactions;

CREATE TABLE IF NOT EXISTS public.lr_transactions
(
    id SERIAL PRIMARY KEY,
	transaction_id character varying COLLATE pg_catalog."default",
	lr_property_address_id character varying COLLATE pg_catalog."default",
    paon character varying COLLATE pg_catalog."default",
	saon character varying COLLATE pg_catalog."default",
    street character varying COLLATE pg_catalog."default",
	town character varying COLLATE pg_catalog."default",
    county character varying COLLATE pg_catalog."default",
    postcode character varying COLLATE pg_catalog."default",
	amount INTEGER,
    transaction_date date,
    category character varying COLLATE pg_catalog."default",
	postcode_area character varying COLLATE pg_catalog."default",
	property_type character varying COLLATE pg_catalog."default",
	record_status character varying COLLATE pg_catalog."default",
	estate_type character varying COLLATE pg_catalog."default",
	new_build character varying COLLATE pg_catalog."default"
);
CREATE UNIQUE INDEX idx_transaction_id ON lr_transactions(transaction_id);

-- Table: public.lr_transactions
DROP TABLE IF EXISTS public.collection_log;

CREATE TABLE IF NOT EXISTS public.collection_log
(
    id SERIAL PRIMARY KEY,
	data_set character varying COLLATE pg_catalog."default",
	start_date date,
    end_date date,
	query_filter_value character varying COLLATE pg_catalog."default",
    results_count INTEGER,
    transaction_date date
);