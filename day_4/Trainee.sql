CREATE DATABASE Library;
GO

USE Library;
GO


CREATE TABLE Authors
(
    author_id INT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),

    --- first constraint PK
    --- cons name type(attribute)
    CONSTRAINT author_pk PRIMARY KEY(author_id)
);

SELECT *
FROM Authors;



CREATE TABLE Books
(
    book_id INT,
    author_id INT,
    title VARCHAR(50) NOT NULL,
    published_year INT,

    --- first constraint pk
    --- second constraint foreign key
    --- third constraint check
    CONSTRAINT book_pk PRIMARY KEY(book_id),
    CONSTRAINT book_fk FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    CONSTRAINT chk_year CHECK (published_year BETWEEN 1990 AND 2025)
);

SELECT *
FROM Books;


--- Members Table
CREATE TABLE Members
(
    member_id INT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,

    --- first constraint Pk
    CONSTRAINT Member_pk PRIMARY KEY(member_id)

);

--- display current tables
SELECT name AS tableName
from sys.tables;


--- Borrowings Table
CREATE TABLE Borrowings
(
    borrowing_id INT,
    member_id INT,
    book_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE NOT NULL,

    --- three constraints 1pk, 2fk
    CONSTRAINT borrowing_pk PRIMARY KEY(borrowing_id),
    CONSTRAINT borrowing_book_fk FOREIGN KEY(book_id) REFERENCES Books(book_id),
    CONSTRAINT borrowing_member_fk FOREIGN KEY(member_id) REFERENCES Members(member_id)

);




--- Apply on Alter (add) Table 

ALTER TABLE Authors
ADD middle_name VARCHAR(20) NULL;


SELECT *
FROM Authors;

--- Apply on Alter (alter) table
ALTER TABLE Books
ALTER COLUMN title VARCHAR
(100) NOT NULL;


---- DROP COLUMN

ALTER TABLE Authors
DROP COLUMN middle_name;

SELECT *
from Authors;

----
--- drop constraint
ALTER TABLE Books
DROP CONSTRAINT chk_year;

SELECT *
FROM Books;

-----
--- rename table

EXEC sp_rename 'Members', 'LibraryMembers';
SELECT name AS tableName
FROM sys.tables;

----
--- rename column

EXEC sp_rename 'LibraryMembers.first_name','Fname','COLUMN';

EXEC sp_rename 'LibraryMembers.last_name', 'Lname', 'COLUMN';
SELECT *
FROM LibraryMembers;
