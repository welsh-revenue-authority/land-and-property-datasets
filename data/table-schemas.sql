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

-- Table: public.collection_log
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

-- Table: public.ONSPD_MAY_2022_UK

-- DROP TABLE IF EXISTS public."ONSPD_MAY_2022_UK";

CREATE TABLE IF NOT EXISTS public."ONSPD_MAY_2022_UK"
(
    id integer SERIAL PRIMARY KEY,
    geom geometry(Point,4326),
    pcd character varying COLLATE pg_catalog."default",
    pcd2 character varying COLLATE pg_catalog."default",
    pcds character varying COLLATE pg_catalog."default",
    dointr integer,
    doterm integer,
    oscty character varying COLLATE pg_catalog."default",
    ced character varying COLLATE pg_catalog."default",
    oslaua character varying COLLATE pg_catalog."default",
    osward character varying COLLATE pg_catalog."default",
    parish character varying COLLATE pg_catalog."default",
    usertype boolean,
    oseast1m integer,
    osnrth1m integer,
    osgrdind integer,
    oshlthau character varying COLLATE pg_catalog."default",
    nhser character varying COLLATE pg_catalog."default",
    ctry character varying COLLATE pg_catalog."default",
    rgn character varying COLLATE pg_catalog."default",
    streg character varying COLLATE pg_catalog."default",
    pcon character varying COLLATE pg_catalog."default",
    eer character varying COLLATE pg_catalog."default",
    teclec character varying COLLATE pg_catalog."default",
    ttwa character varying COLLATE pg_catalog."default",
    pct character varying COLLATE pg_catalog."default",
    itl character varying COLLATE pg_catalog."default",
    statsward character varying COLLATE pg_catalog."default",
    oa01 character varying COLLATE pg_catalog."default",
    casward character varying COLLATE pg_catalog."default",
    park character varying COLLATE pg_catalog."default",
    lsoa01 character varying COLLATE pg_catalog."default",
    msoa01 character varying COLLATE pg_catalog."default",
    ur01ind character varying COLLATE pg_catalog."default",
    oac01 character varying COLLATE pg_catalog."default",
    oa11 character varying COLLATE pg_catalog."default",
    lsoa11 character varying COLLATE pg_catalog."default",
    msoa11 character varying COLLATE pg_catalog."default",
    wz11 character varying COLLATE pg_catalog."default",
    ccg character varying COLLATE pg_catalog."default",
    bua11 character varying COLLATE pg_catalog."default",
    buasd11 character varying COLLATE pg_catalog."default",
    ru11ind character varying COLLATE pg_catalog."default",
    oac11 character varying COLLATE pg_catalog."default",
    lat double precision,
    "long" double precision,
    lep1 character varying COLLATE pg_catalog."default",
    lep2 character varying COLLATE pg_catalog."default",
    pfa character varying COLLATE pg_catalog."default",
    imd integer,
    calncv character varying COLLATE pg_catalog."default",
    stp character varying COLLATE pg_catalog."default"
)

--UPDATE public.wales_postcode_points_ons_may2022 SET pcd2_clean=TRIM(REPLACE(pcd2,' ',''));
--UPDATE public.lr_transactions SET postcode_clean=TRIM(REPLACE(postcode,' ',''))

)