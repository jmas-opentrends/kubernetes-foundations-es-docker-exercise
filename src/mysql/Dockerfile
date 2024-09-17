FROM mysql:8.3.0-oracle

ARG TEST=test

ENV MYSQL_ROOT_PASSWORD="${TEST}"

COPY . /docker-entrypoint-initdb.d/

#RUN chmod +x /docker-entrypoint-initdb.d/initDB.sh