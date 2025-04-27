# DDL COMMANDS: CREATE, ALTER, DROP
CREATE TABLE persons(
	id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(50),
    CONSTRAINT pk_persons PRIMARY KEY (id)
);

# Alter Command.

ALTER TABLE persons
	ADD COLUMN address VARCHAR(50),
	DROP COLUMN phone;

SELECT * FROM persons