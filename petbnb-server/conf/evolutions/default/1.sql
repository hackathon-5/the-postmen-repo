# Users schema

# --- !Ups

CREATE TABLE app_user (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  created datetime DEFAULT NULL,
  updated datetime DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  usertype varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
);

# --- !Downs

DROP TABLE User;