/*
Joins
Display each loan with the member's full name and book title.
List all members who currently have borrowed books (no return date).
*/

--Display each loan with the member's full name and book title.
SELECT l.id AS "Loan ID", CONCAT(m.first_name, ' ', m.last_name) AS "full name"  FROM loans l
JOIN members m ON l.member_id=m.id;

--List all members who currently have borrowed books (no return date).
SELECT l.member_id, CONCAT(m.first_name, ' ', m.last_name) AS "full name"
FROM loans l
LEFT JOIN members m ON m.id=l.member_id;