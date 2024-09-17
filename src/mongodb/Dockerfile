FROM mongodb/mongodb-community-server:7.0.5-ubuntu2204

COPY . /app/data/

COPY script.sh /docker-entrypoint-initdb.d/

USER myuser

CMD["chown -R myuser:myuser /docker-entrypoint-initdb.d/script.sh"]