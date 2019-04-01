drop table if exists inventory_text;
create table inventory_text
(
    inv_date_sk               int,
    inv_item_sk               int,
    inv_warehouse_sk          int,
    inv_quantity_on_hand      bigint
)
USING hive
OPTIONS(header "false", fileFormat "textfile", fieldDelim "|")
;
LOAD DATA LOCAL INPATH '${TPCDS_GENDATA_DIR}/inventory' INTO TABLE inventory_text
;
drop table if exists inventory;
create table inventory 
using parquet
as (select * from inventory_text)
;
drop table if exists inventory_text;
