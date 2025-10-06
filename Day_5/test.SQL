use Library;
go
SELECT name as tableName
from sys.tables;

SELECT *
FROM Authors;
SELECT *
FROM LibraryMembers;
SELECT *
from Books;
SELECT *
FROM Borrowings;
----

ALTER TABLE Authors
ADD temp_id INT IDENTITY(1, 100);
SELECT *
FROM Authors;

SELECT *
FROM Authors;

ALTER TABLE Authors
DROP COLUMN temp_id;

-----------------------------

INSERT INTO Authors
    (author_id, first_name, last_name)
VALUES
    (101, 'Robert', 'Martin'),
    (102, 'Martin', 'Fowler'),
    (103, 'Andy', 'Hunt'),
    (104, 'Erich', 'Gamma'),
    (105, 'Kent', 'Beck');

SELECT *
FROM Authors;

INSERT INTO Books
    (book_id,author_id,title,published_year )
VALUES
    (1, 101, 'Clean Code', 2008),
    (2, 101, 'Clean Architecture', 2017),
    (3, 102, 'Refactoring', 1999);

SELECT *
FROM Books;
----


INSERT INTO LibraryMembers
    (member_id,Fname,Lname, email)
VALUES
    (201, 'Alice', 'Johnson', 'alice@gmail.com'),
    (202, 'Bob', 'Smith', 'bob@yahoo.com'),
    (203, 'Charlie', 'Brown', 'charlie@hotmail.com');

SELECT *
FROM LibraryMembers;

INSERT INTO Borrowings
    (borrowing_id, member_id, book_id, borrow_date, return_date)
VALUES
    (301, 201, 1, '2025-10-01', '2025-10-10'),
    (302, 202, 3, '2025-10-02', '2025-10-12');

SELECT *
FROM Borrowings;
-------------------------

UPDATE Authors
SET first_name = 'Ahmed'
WHERE author_id = 101;
SELECT *
from Authors;

---
UPDATE Books
SET published_year = 2025
WHERE book_id = 1;
SELECT *
FROM Books;
---

UPDATE Authors
SET first_name = 'M. Martin'
WHERE author_id = 102;
SELECT *
FROM Authors;

---
UPDATE Books
set published_year = 2020
WHERE book_id = 2;
select *
FROM Books;
----

SELECT *
FROM LibraryMembers;

UPDATE LibraryMembers
SET email = 'alice.house@gmail.com'
WHERE member_id = 201;
SELECT *
FROM LibraryMembers;
---

SELECT *
FROM Borrowings;
UPDATE Borrowings
SET return_date = '2025-10-20'
WHERE book_id = 1;
SELECT *
FROM Borrowings;


----
USE Library;
SELECT *
from Authors;
DELETE FROM Authors
WHERE author_id = 105;
SELECT *
FROM Authors;
----
SELECT *
FROM Authors
WHERE author_id = 104;
---
SELECT *
FROM Borrowings
WHERE borrowing_id = 302;
---
SELECT *
FROM Books;
---
DELETE FROM Books
WHERE book_id = 2;
SELECT *
FROM Books;

---
select *
FROM Authors
WHERE author_id = 103;
DELETE FROM Authors
WHERE author_id = 103;
SELECT *
FROM Authors;
--------------------------------------

SELECT first_name, last_name
FROM Authors
WHERE author_id <= 102;
---
SELECT *
FROM Books
WHERE published_year > 2000 OR author_id = 102;



---
SELECT *
FROM LibraryMembers
WHERE Fname LIKE 'A%';
---
SELECT *
FROM Authors
WHERE first_name LIKE '%e';