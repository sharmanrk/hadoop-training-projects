use handson_nasdaq;

--load data into the managed table tbl_nasdaq_daily_prices
load data inpath '' overwrite into table tbl_nasdaq_daily_prices;

--load data into the managed parquet table tbl_nasdaq_daily_prices 
insert overwrite table tbl_nasdaq_daily_prices_parquet select * from ext_nasdaq_daily_prices where `tdate` != 'date';

---- to load data into our new avro table from another previous table or the same column specification
insert overwrite table nasdaq_dividends_avro select * from nasdaq_dividends;

