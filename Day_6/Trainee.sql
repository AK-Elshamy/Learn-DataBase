USE Library;
GO

SELECT name AS TableName
from sys.tables;
GO

SELECT *
FROM Authors;
GO
SELECT *
FROM Books;
GO
SELECT *
FROM Borrowings;
GO
SELECT *
FROM LibraryMembers ;
GO
------------
SELECT LibraryMembers.Fname, LibraryMembers.Lname, Books.title
FROM Borrowings
    INNER JOIN LibraryMembers ON Borrowings.member_id = LibraryMembers.member_id
    INNER JOIN Books ON Borrowings.book_id = Books.book_id;
GO
----
SELECT LibraryMembers.Fname, LibraryMembers.email, Books.title, Books.published_year
FROM Borrowings
    INNER JOIN LibraryMembers ON Borrowings.member_id = LibraryMembers.member_id
    INNER JOIN Books ON Borrowings.book_id = Books.book_id;
GO