TASK 1  
CREATE TABLE Sales (
    ProductID int PRIMARY KEY,
    Quantity int,
    UnitPrice decimal(10, 2)
);

INSERT INTO Sales (ProductID, Quantity, UnitPrice) VALUES (1, 10, 15.50);
INSERT INTO Sales (ProductID, Quantity, UnitPrice) VALUES (2, 5, 20.00);
INSERT INTO Sales (ProductID, Quantity, UnitPrice) VALUES (3, 8, 12.75);
INSERT INTO Sales (ProductID, Quantity, UnitPrice) VALUES (4, 12, 8.25);

SELECT ProductID, 
       Quantity * UnitPrice AS TotalRevenue
FROM Sales
ORDER BY TotalRevenue DESC;


------------------------------------------------------------------------------------------------------------------

TASK 2

CREATE TABLE Employees (
    Name varchar(255),
    Salary decimal(10, 2),
    Department varchar(255)
);

INSERT INTO Employees (Name, Salary, Department) VALUES ('Eli', 700, 'Satıs');
INSERT INTO Employees (Name, Salary, Department) VALUES ('Veli', 650, 'Satıs');
INSERT INTO Employees (Name, Salary, Department) VALUES ('Aydan', 500, 'Muhasib');
INSERT INTO Employees (Name, Salary, Department) VALUES ('Sevda', 800, 'Satış');
INSERT INTO Employees (Name, Salary, Department) VALUES ('Nermin', 900, 'IT');

SELECT Name, Salary, Department
FROM Employees
WHERE Department = 'Satıs' AND Salary > 600
ORDER BY Salary DESC;

-------------------------------------------------------------------------------------------------------------------

TASK 3

CREATE TABLE Books (
    Title varchar(255),
    Genre varchar(255),
    PublicationYear int
);

INSERT INTO Books (Title, Genre, PublicationYear) VALUES ('Cinayət və cəza', 'Roman', 2016);
INSERT INTO Books (Title, Genre, PublicationYear) VALUES ('Qürur və qərəz', 'Klassik ', 2018);
INSERT INTO Books (Title, Genre, PublicationYear) VALUES ('Yad', 'Tarix', 2014);
INSERT INTO Books (Title, Genre, PublicationYear) VALUES ('Qəzəb salxımları', 'Roman', 2019);
INSERT INTO Books (Title, Genre, PublicationYear) VALUES ('Yüz ilin tənhalığı', 'Hekayə', 2017);

SELECT Title, Genre, PublicationYear
FROM Books
WHERE PublicationYear > 2015
ORDER BY Genre ASC;

-------------------------------------------------------------------------------------------------------------------

TASK 4

CREATE TABLE Movies (
    Title varchar(255),
    ReleaseDate int,
    Rating decimal(3, 1)
);

INSERT INTO Movies (Title, ReleaseDate, Rating) VALUES ('A Beautiful Mind/Akıl', 1995, 8.2);
INSERT INTO Movies (Title, ReleaseDate, Rating) VALUES ('American Beauty', 2005, 7.5);
INSERT INTO Movies (Title, ReleaseDate, Rating) VALUES ('Godfather', 1998, 6.9);
INSERT INTO Movies (Title, ReleaseDate, Rating) VALUES ('Big Fish', 1992, 7.8);
INSERT INTO Movies (Title, ReleaseDate, Rating) VALUES ('Blade Runner', 2010, 7.3);

SELECT Title, ReleaseDate, Rating
FROM Movies
WHERE ReleaseDate < 2000
ORDER BY ReleaseDate ASC;

SELECT Title, ReleaseDate, Rating
FROM Movies
WHERE Rating > 7
ORDER BY Rating DESC;
