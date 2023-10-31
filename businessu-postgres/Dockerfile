FROM postgres:latest

COPY 00_setup.sql /docker-entrypoint-initdb.d/
COPY skeleton.sql /docker-entrypoint-initdb.d/skeleton.sqldump
COPY restore.sh /docker-entrypoint-initdb.d/
