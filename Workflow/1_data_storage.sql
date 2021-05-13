-- combine csv files into one big csv to load into sqlite
-- # commandline
-- cat *.csv > combined.csv

-- go back to sqlite tab; load the big csv into sqlite
.mode csv
.import combined.csv
