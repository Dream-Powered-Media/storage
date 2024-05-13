docker build -t dpm_db_psql .
docker run -d -p 9000:5432 --name dpm_db_psql dpm_db_psql
