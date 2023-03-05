GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'replicator' IDENTIFIED BY 'replpass';
GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT  ON *.* TO 'debezium' IDENTIFIED BY 'mysql';

# Create the database that we'll use to populate data and watch the effect in the binlog
CREATE DATABASE cris2;
GRANT ALL PRIVILEGES ON cris2.* TO 'mysql'@'%';

# Switch to this database
USE cris2;

# Create and populate our products using a single insert with many rows
CREATE TABLE cr_th_activo (
  name VARCHAR(255) NOT NULL,
  email varchar(255) not null,
  mobile_number VARCHAR(512),
  created_at timestamp default CURRENT_TIMESTAMP()
);

INSERT INTO cr_th_activo
VALUES ("John Smith","john.smith@email.com","9876543211", default),
       ("Tom Cruise","tom.cruise@gmail.com","9876543212", default),
       ("Jack Peterson","jack.peterson@gmail.com","9876543213", default),
       ("John Wick","john.wick@gmail.com","9876543214", default),
       ("Jason Bourne","jason.bourne@gmail.com","9876543215", default),
       ("Jack Reacher","jack.reacher@gmail.com","9876543216", default),
       ("James Bond","james.bond@gmail.com","9876543217", default),
       ("Punisher","punisher@gmail.com","9876543219", default);
       ("Terminator","terminator@gmail.com","9876543218", default),


