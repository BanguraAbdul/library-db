/*
Basic Queries
Select all books by a specific author.
List members who joined in the last 6 months.
Show all overdue books (books where `return_date` is NULL and `due_date` is before today).
*/

--Select all books by a specific author.
SELECT * FROM books WHERE author='Chinua Achebe'; 

--List members who joined in the last 6 months.
SELECT * FROM members WHERE membership_date > CURRENT_DATE - INTERVAL '6 MONTHS';

--Show all overdue books (books where `return_date` is NULL and `due_date` is before today)
SELECT * FROM loans WHERE return_date is NULL;