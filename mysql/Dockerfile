FROM mysql:5.7

COPY mysql.cnf /etc/mysql/conf.d/
COPY cris2.sql /docker-entrypoint-initdb.d/
RUN mkdir /app
COPY create_insert_commands.sh /app/
COPY create_1_insert.sh /app/
RUN chmod -R 777 /app
