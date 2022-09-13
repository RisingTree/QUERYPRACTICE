	CREATE TABLE Borrower(
		BorrowerId int auto_increment,
        ClientId int, 
        BookID int,
        BorrowDate datetime, 
        PRIMARY KEY(BorrowerId), 
        FOREIGN KEY(ClientId) REFERENCES Client,
        FOREIGN KEY(BookId) REFERENCES Book
);
	CREATE TABLE Client(
		ClientId int auto_increment, ClientFirstName varchar(255), ClientLastName varchar(255),
        ClientDoB int, Occupation varchar(255),  PRIMARY KEY(ClientId)
);
	CREATE TABLE Book(
		BookId int auto_increment, BookTitle varchar(255), BookAuthor int, Genre varchar(255),
		PRIMARY KEY(BookId),
        FOREIGN KEY (BookAuthor) REFERENCES Author
);
	CREATE TABLE Author(
		AuthorId int, AuthorFirstName varchar(255), AuthorLastName varchar(255),    	      
	AuthorNationality varchar(255), PRIMARY KEY(AuthorId)
);

INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Sofia', 'Smith', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Maria', 'Brown', 'Brazil');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Elena', 'Martin', 'Mexico');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Zoe', 'Roy', 'France');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Sebastian', 'Lavole', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Dylan', 'Garcia', 'Spain');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Ian', 'Cruz', 'Mexico');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Lucas', 'Smith', 'USA');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Fabian', 'Wilson', 'USA');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Liam', 'Taylor', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('William', 'Thomas', 'Great Britain');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Logan', 'Moore', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Oliver', 'Martin', 'France');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Alysha', 'Thompson', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Isabelle', 'Lee', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Emily', 'Clark', 'USA');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('John', 'Young', 'China');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('David', 'Wright', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Thomas', 'Scott', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Helena', 'Adams', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Sofia', 'Carter', 'USA');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Liam', 'Parker', 'Canada');
INSERT INTO Author(AuthorFirstName , AuthorLastName, AuthorNationality)
VALUES ('Emily', 'Murphy', 'USA');


INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Build your database system', '1', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('The red wall', '2', 'Fiction');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('The perfect match', '3', 'Fiction');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Digital Logic', '4', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('How to be a great lawyer', '5', 'Law');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Manage successful negotiations', '6', 'Society');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Pollution today', '7', 'science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('A gray park', '2', 'Fiction');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('How to be rich in one year', '8', 'Humor');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Their bright fate', '9', 'Fiction');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Black lines', '10', 'Fiction');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('History of theater', '11', 'Literature');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Electrical transformers', '12', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Build your big data system', '1', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Right and left', '13', 'Children');

INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Programming using python', '1', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Computer networks', '14', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Performance evaluation', '15', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Daily exercise', '16', 'Well being');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('The silver uniform', '17', 'Fiction');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Industrial revolution', '18', 'History');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Green nature', '19', 'Well being');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Perfect football', '20', 'Well being');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('The chocolate love', '21', 'Humor');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Director and leader', '22', 'Society');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Play football every week', '20', 'Well being');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Maya the bee', '13', 'Children');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Perfect rugby', '20', 'Well being');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('The end', '23', 'Fiction');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Computer security', '1', 'Science');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Participate', '22', 'Society');
INSERT INTO Book(BookTitle ,BookAuthor, Genre)
VALUES ('Positive figures', '3', 'Fiction');


SELECT * FROM client;
SELECT ClientFirstName,ClientLastName,ClientDOB,Occupation FROM Client;
SELECT ClientFirstName,ClientLastName
FROM Client INNER JOIN Borrower ON Client.ClientId = Borrower.ClientID
WHERE (MONTH(Borrower.BorrowDate) = 3) AND (YEAR(Borrower.BorrowDate)=2018);
SELECT AuthorFirstName,AuthorLastName 
from Author 
INNER JOIN Book on Book.BookAuthor=Author.AuthorID 
INNER JOIN Borrower on Borrower.BookID=Book.BookID 
WHERE Year(BorrowDate)=2017 GROUP BY AuthorFirstName, AuthorLastName 
ORDER BY  count(*) DESC limit 5;
SELECT AuthorNationality FROM Author INNER JOIN Book ON Book.BookAuthor=Author.AuthorID INNER JOIN Borrower ON Borrower.BookID=Book.BookID WHERE Year(BorrowDate)>=2015 and Year(BorrowDate)<=2017 GROUP BY AuthorNationality limit 5;
SELECT BookTitle, COUNT(*) FROM Author INNER JOIN Book ON Book.BookAuthor=Author.AuthorID INNER JOIN Borrower ON Borrower.BookID=Book.BookID WHERE Year(BorrowDate)>=2015 and Year(BorrowDate)<=2017 GROUP BY BookTitle ORDER BY COUNT(*) DESC limit 5;
SELECT Book.Genre
FROM Borrower 
INNER JOIN Client ON Borrower.ClientID = Client.ClientId
INNER JOIN Book ON Borrower.BookId = Book.BookID
WHERE (Client.ClientDoB >= 1970 AND Client.ClientDoB <= 1980)
Group By Book.Genre desc limit 5;
SELECT  COUNT(Borrower.BookId) AS book, Client.Occupation
FROM Borrower 
INNER JOIN Client ON Borrower.ClientID = Client.ClientId 
where Year(Borrower.BorrowDate) = '2016' 
GROUP BY Client.Occupation ORDER BY book DESC;
SELECT Client.Occupation, avg(Book.BookId) FROM Borrower
inner join Client on Client.clientid  = borrower.clientid 
Inner Join book on book.bookid =borrower.BookId  GROUP By Client.Occupation;
SELECT Book.BookTitle, COUNT(Book.BookId)
FROM Book 
join Borrower on Book.BookId = Borrower.BookId
join Client on Borrower.ClientId = Client.ClientId 
GROUP BY Book.BookTitle
having COUNT(Book.BookId) > (SELECT COUNT(Client.ClientId) FROM Client)*0.2
ORDER BY COUNT(Book.BookTitle) DESC;
SELECT month(BorrowDate) 
FROM Borrower 
WHERE Year(BorrowDate)=2017 
GROUP BY month(BorrowDate) 
ORDER BY BorrowDate DESC;
SELECT BookTitle, avg(Books) FROM Borrower  GROUP BY BookTitle;
SELECT * 
FROM Client
WHERE Client.ClientDoB = (SELECT max(Client.ClientDoB) FROM Client) 
OR Client.ClientDoB = (SELECT min(Client.ClientDoB) FROM Client);
SELECT Author.AuthorFirstName, Author.AuthorLastName 
FROM Author
INNER JOIN Book On Book.bookauthor = author.authorid
WHERE Book.Genre > 1 AND Book.BookAuthor=Author.AuthorID;