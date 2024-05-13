docker build -t dpm_db_mongo .
docker run -d -p 27017:27017 --name dpm_db_mongo dpm_db_mongo
