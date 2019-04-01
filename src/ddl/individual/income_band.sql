drop table if exists income_band_text;
create table income_band_text
(
    ib_income_band_sk         int,
    ib_lower_bound            int,
    ib_upper_bound            int
)
USING hive
OPTIONS(header "false", fileFormat "textfile", fieldDelim "|")
;
LOAD DATA LOCAL INPATH '${TPCDS_GENDATA_DIR}/income_band' INTO TABLE income_band_text
;
drop table if exists income_band;
create table income_band 
using parquet
as (select * from income_band_text)
;
drop table if exists income_band_text;
