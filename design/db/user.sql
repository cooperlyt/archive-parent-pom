
/* Drop Tables */

DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS _user;




/* Create Tables */

CREATE TABLE role
(
	authority varchar(32) NOT NULL,
	name varchar(32) NOT NULL,
	PRIMARY KEY (authority)
) WITHOUT OIDS;


CREATE TABLE user_role
(
	username varchar(32) NOT NULL,
	authority varchar(32) NOT NULL
) WITHOUT OIDS;


CREATE TABLE _user
(
	username varchar(32) NOT NULL,
	password varchar(32) NOT NULL,
	name varchar(64) NOT NULL,
	enabled boolean NOT NULL,
	PRIMARY KEY (username)
) WITHOUT OIDS;



/* Create Foreign Keys */

ALTER TABLE user_role
	ADD FOREIGN KEY (authority)
	REFERENCES role (authority)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE user_role
	ADD FOREIGN KEY (username)
	REFERENCES _user (username)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



