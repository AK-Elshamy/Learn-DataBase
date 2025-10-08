USE Library;
GO

SELECT DISTINCT Fname, Lname
From LibraryMembers;
GO

---
SELECT *
FROM LibraryMembers;

ALTER TABLE LibraryMembers
ADD city VARCHAR(30);
GO
---
UPDATE LibraryMembers
SET city = 'London'
WHERE member_id = 201;
SELECT *
FROM LibraryMembers;
GO
---
UPDATE LibraryMembers
SET city = 'Cairo'
WHERE member_id = 202;
UPDATE LibraryMembers
SET city = 'Cairo'
WHERE member_id = 203;
GO
SELECT *
FROM LibraryMembers;
---

INSERT INTO LibraryMembers
    (member_id, Fname, Lname, city, email)
VALUES
    (204, 'Ahmed', 'Ali', 'Cairo', 'ahmed.ali@example.com'),
    (205, 'Sara', 'Hassan', 'Alex', 'sara.hassan@example.com'),
    (206, 'John', 'Doe', 'London', 'john.doe@example.com'),
    (207, 'Clark', 'Kent', 'Metropolis', 'clark.kent@example.com'),
    (208, 'Bruce', 'Wayne', 'Gotham', 'bruce.wayne@example.com'),
    (209, 'Diana', 'Prince', 'Cairo', 'diana.prince@example.com');
GO
SELECT *
FROM LibraryMembers;
---



SELECT DISTINCT city
FROM LibraryMembers;
GO
---
SELECT COUNT(*) AS NumberOfMembers, city
FROM LibraryMembers
GROUP BY city;
GO
---
UPDATE LibraryMembers
SET city = 'Paris'
WHERE Fname = 'Alice';
SELECT *
FROM LibraryMembers
WHERE Fname = 'Alice';
GO
---
DELETE from LibraryMembers
WHERE member_id > 205;
SELECT *
FROM LibraryMembers;
GO
---
SELECT *
FROM LibraryMembers
WHERE city LIKE 'C%';
GO
---
USE Library;
GO

SELECT DISTINCT Fname, Lname
From LibraryMembers;
GO

---
SELECT *
FROM LibraryMembers;

ALTER TABLE LibraryMembers
ADD city VARCHAR(30);
GO
---
UPDATE LibraryMembers
SET city = 'London'
WHERE member_id = 201;
SELECT *
FROM LibraryMembers;
GO
---
UPDATE LibraryMembers
SET city = 'Cairo'
WHERE member_id = 202;
UPDATE LibraryMembers
SET city = 'Cairo'
WHERE member_id = 203;
GO
SELECT *
FROM LibraryMembers;
---

INSERT INTO LibraryMembers
    (member_id, Fname, Lname, city, email)
VALUES
    (204, 'Ahmed', 'Ali', 'Cairo', 'ahmed.ali@example.com'),
    (205, 'Sara', 'Hassan', 'Alex', 'sara.hassan@example.com'),
    (206, 'John', 'Doe', 'London', 'john.doe@example.com'),
    (207, 'Clark', 'Kent', 'Metropolis', 'clark.kent@example.com'),
    (208, 'Bruce', 'Wayne', 'Gotham', 'bruce.wayne@example.com'),
    (209, 'Diana', 'Prince', 'Cairo', 'diana.prince@example.com');
GO
SELECT *
FROM LibraryMembers;
---



SELECT DISTINCT city
FROM LibraryMembers;
GO
---
SELECT COUNT(*) AS NumberOfMembers, city
FROM LibraryMembers
GROUP BY city;
GO
---
UPDATE LibraryMembers
SET city = 'Paris'
WHERE Fname = 'Alice';
SELECT *
FROM LibraryMembers
WHERE Fname = 'Alice';
GO
---
DELETE from LibraryMembers
WHERE member_id > 205;
SELECT *
FROM LibraryMembers;
GO
---
SELECT *
FROM LibraryMembers
WHERE city LIKE 'C%';
GO
---
---
DELETE from Authors;
INSERT INTO Authors
    (author_id, first_name, last_name)
VALUES
    (103, 'John', 'Doe'),
    (105, 'Robert', 'Martin'),
    (106, 'Martin', 'Fowler'),
    (107, 'Kent', 'Beck'),
    (108, 'Erich', 'Gamma'),
    (109, 'Richard', 'Helm');
GO
SELECT *
FROM Authors;
----
INSERT INTO Books
    (book_id, author_id, title, published_year)
VALUES
    (301, 101, 'Clean Code', 2008),
    (302, 101, 'Clean Architecture', 2017),
    (303, 102, 'Refactoring', 2018),
    (304, 103, 'Test Driven Development', 2003),
    (305, 104, 'Design Patterns', 1994),
    (306, 105, 'Patterns of Enterprise Application Architecture', 2002);
GO
SELECT *
FROM Books;
---
INSERT INTO Borrowings
    (borrowing_id, member_id, book_id, borrow_date, return_date)
VALUES
    (401, 201, 301, '2025-10-01', '2025-10-10'),
    (402, 202, 302, '2025-10-05', '2025-10-15'),
    (403, 203, 303, '2025-10-07', '2025-10-17'),
    (404, 204, 304, '2025-10-09', '2025-10-19'),
    (405, 205, 305, '2025-10-10', '2025-10-20');
GO
SELECT *
FROM Borrowings;
---
