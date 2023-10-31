pg_restore -Fc -s -O -d businessu_local /docker-entrypoint-initdb.d/skeleton.sqldump
pg_restore -Fc -a --disable-triggers -O -d businessu_local /docker-entrypoint-initdb.d/skeleton.sqldump
