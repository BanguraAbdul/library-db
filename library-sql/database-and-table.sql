--Create a `library` database.
CREATE DATABASE library
CREATE SCHEMA lib1;

/*
Create the following tables with appropriate datatypes and constraints:
	
 - `books` – `id`, `title`, `author`, `genre`, `published_date`, `stock`
 - `members` – `id`, `first_name`, `last_name`, `email`, `membership_date`
 - `loans` – `id`, `book_id`, `member_id`, `loan_date`, `due_date`, `return_date`
 - `late_fees` – `id`, `member_id`, `amount`, `reason`, `date_issued`
 
CONSTRAINT
Add a NOT NULL constraint to required fields.
Add a UNIQUE constraint on `members.email`.
Add a CHECK constraint to ensure `stock >= 0`.
Add a FOREIGN KEY constraint linking loans to books and members.
*/

SET sear_path TO lib1;

CREATE TABLE books(
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	author VARCHAR(50),
	genre VARCHAR(70),
	published_date DATE,
	stock INTEGER CHECK(stock>0)
);

CREATE TABLE members(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(200),
	membership_date DATE
);

CREATE TABLE loans(
	id SERIAL PRIMARY KEY,
	book_id INTEGER REFERENCES books(id),
	member_id INTEGER REFERENCES members(id),
	loan_date DATE NOT NULL,
	due_date DATE NOT NULL,
	return_date DATE
);


CREATE TABLE late_fees(
	id SERIAL PRIMARY KEY,
	member_id INTEGER REFERENCES members(id),
	amount NUMERIC(10, 2),
	reason VARCHAR(50),
	date_issued DATE
);

 
