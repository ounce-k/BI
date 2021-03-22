--Connect to created database
USE PublishingHouse;
GO

--Genre table
SET IDENTITY_INSERT Genre ON;

INSERT INTO Genre(GenreID,GenreName) VALUES(1,'Fantasy')
INSERT INTO Genre(GenreID,GenreName) VALUES(2,'Thriller')
INSERT INTO Genre(GenreID,GenreName) VALUES(3,'Romance')
INSERT INTO Genre(GenreID,GenreName) VALUES(4,'Horror')
INSERT INTO Genre(GenreID,GenreName) VALUES(5,'Science Fiction')

SET IDENTITY_INSERT Genre OFF;

--Author table
SET IDENTITY_INSERT Author ON;

INSERT INTO Author(AuthorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country) 
VALUES(1, 'Charolette','Ricce','(916) 381-6003','charolette.ricce@example.com', '1985-10-25' ,'107 River Dr. ','Sacramento','USA');
INSERT INTO Author(AuthorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country) 
VALUES(2, 'Lyndsey','Bean', NULL ,'lyndsey.bean@example.com', '1991-09-12' ,'769 Chat Rue ','Paris','France');
INSERT INTO Author(AuthorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country) 
VALUES(3, 'Latasha','Hays','(716) 986-3359','latasha.hays@example.com','1988-11-05' ,'7014 Manor Station Rd. ','New Yourk','USA');
INSERT INTO Author(AuthorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country) 
VALUES(4, 'Theo','Reese','(562) 215-2907','theo.reese@example.com', '2001-04-04' ,'8755 W. Wild Rose St. ','London','England');
INSERT INTO Author(AuthorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country) 
VALUES(5, 'Syreeta','Hendricks',NULL,'syreeta.hendricks@example.com','1997-06-13','193 Spruce Road ','Mahopac','USA');

SET IDENTITY_INSERT Author OFF;

--Publisher table
SET IDENTITY_INSERT Publisher ON;

INSERT INTO Publisher(PublisherID, PublisherName, Email, Address, City, Country) 
VALUES(1, 'Publishing House ABC', 'abc.house@example.com','853 Stonybrook Street ','Torrance', 'USA');
INSERT INTO Publisher(PublisherID, PublisherName, Email, Address, City, Country) 
VALUES(2, 'Samson & Co.', 'samson.co@example.com', '76 Devon Lane ','London', 'England');
INSERT INTO Publisher(PublisherID, PublisherName, Email, Address, City, Country) 
VALUES(3, 'Tiffany Publishers', 'tiffany.publish@example.com', '376 S. High Ridge St. ','Houston', 'Australia');
INSERT INTO Publisher(PublisherID, PublisherName, Email, Address, City, Country) 
VALUES(4, 'Kristy Collins', 'kristy.collins@example.com', '17 Random St. ','Sugar Land', 'USA');
INSERT INTO Publisher(PublisherID, PublisherName, Email, Address, City, Country) 
VALUES(5, 'Random House', 'random.house@example.com', '8538 Fairground St. ','Glendora', 'USA');

SET IDENTITY_INSERT Publisher OFF;

--Editor table
SET IDENTITY_INSERT Editor ON;

INSERT INTO Editor(EditorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country, ReportsTo)
VALUES(1,'Fabiola','Jackson','(831) 555-5554','fabiola.jackson@example.com','1987-09-01', '77 E. Liberty St. ','Brooklyn', 'USA', NULL);
INSERT INTO Editor(EditorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country, ReportsTo)
VALUES(2,'Mireya','Copeland','(831) 555-5555', 'mireya.copeland@example.com', '1999-08-12', '8996 Beechwood Ave. ','Washington', 'USA', 1);
INSERT INTO Editor(EditorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country, ReportsTo)
VALUES(3,'Genna','Serrano','(831) 555-5556', 'genna.serrano@example.com', '2001-09-07', '338 S. Holly Avenue ', 'New York', 'USA', 2);
INSERT INTO Editor(EditorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country, ReportsTo)
VALUES(4,'Virgie','Wiggins','(831) 555-5557','virgie.wiggins@example.com', '1971-03-11', '7137 Monroe Road ', 'Paris', 'France', 2);
INSERT INTO Editor(EditorID, FirstName, LastName, Phone, Email, BirthDate, Address, City, Country, ReportsTo)
VALUES(5,'Jannette','David', '(516) 379-4444','jannette.david@example.com', '1988-10-06', '7975 Harrison Rd. ', 'London', 'England', 3);

SET IDENTITY_INSERT Editor OFF;

--Store table
SET IDENTITY_INSERT Store ON;

INSERT INTO Store(StoreID, StoreName, Email, Address, City, Country)
VALUES(1, 'Devon books store', 'devon.books@example.com', '691 Devon Ave. ','Desoto', 'England');
INSERT INTO Store(StoreID, StoreName, Email, Address, City, Country)
VALUES(2, 'Huntington books store', 'huntington.books@example.com', '617 Sycamore Street ','Huntington', 'USA');
INSERT INTO Store(StoreID, StoreName, Email, Address, City, Country)
VALUES(3, 'Paris books store', 'paris.books@example.com','495 Sleepy Hollow Court ', 'Paris', 'France');

SET IDENTITY_INSERT Store OFF;

--Book table
SET IDENTITY_INSERT Book ON;

INSERT INTO Book(BookID, Title, ListPrice, Edition, DatePublished, GenreID, AuthorID, PublisherID, EditorID) 
VALUES (1, 'The Sword', 100.50, 50000, '2012-10-09', 1, 2, 3, 1);
INSERT INTO Book(BookID, Title, ListPrice, Edition, DatePublished, GenreID, AuthorID, PublisherID, EditorID) 
VALUES (2, 'Le Morte', 80.00, 10000, '2005-11-07', 2, 3, 1, 4);
INSERT INTO Book(BookID, Title, ListPrice, Edition, DatePublished, GenreID, AuthorID, PublisherID, EditorID)
VALUES (3, 'Alice''s Adventures ', 150.75, 20000, '2017-03-18', 5, 1, 4, 2);
INSERT INTO Book(BookID, Title, ListPrice, Edition, DatePublished, GenreID, AuthorID, PublisherID, EditorID) 
VALUES (4, 'All About Apples', 111.11, 15000, '2019-05-05', 3, 4, 5, 5);
INSERT INTO Book(BookID, Title, ListPrice, Edition, DatePublished, GenreID, AuthorID, PublisherID, EditorID) 
VALUES (5, 'Stranger', 99.00, 25000, '2015-08-03', 4, 5, 2, 3); 

SET IDENTITY_INSERT Book OFF;

--Stocks table
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(1, 1, 200);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(1, 2, 100);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(1, 3, 150);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(2, 1, 90);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(2, 2, 300);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(2, 3, 80);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(3, 1, 200);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(3, 2, 100);
INSERT INTO Stocks(BookID, StoreID, Quantity)
VALUES(3, 3, 50);
