.open IntegrityTestDatabase.sqlite
.mode column
.mode box
CREATE TABLE IF NOT EXISTS Contacts(
  ContactID INTEGER PRIMARY KEY,
  FirstName TEXT NOT NULL,
  LastName TEXT NOT NULL,
  Email TEXT  CHECK (email LIKE '%@%'),
  Phone TEXT CHECK(length(Phone) >= 10));

CREATE TABLE IF NOT EXISTS Products(
        ProductID INTEGER PRIMARY KEY,
        ProductName TEXT NOT NULL,
        ListPrice DECIMAL(10,2) NOT NULL CHECK(ListPrice >= Discount AND ListPrice >= 0 AND Discount >= 0),
        Discount DECIMAL(10,2) NOT NULL);

CREATE TABLE IF NOT EXISTS Voter (
        VoterID INTEGER PRIMARY KEY CHECK(VoterID IN (101, 102, 103, 104, 105, 106)),
        Name TEXT NOT NULL,
        Age INTEGER NOT NULL CHECK(Age >= 18),
        DOB DATE NOT NULL);

INSERT INTO Contacts (ContactID,FirstName, LastName, Email, Phone) VALUES
  ('1','Jake', 'Adam', 'jake.adam@example.com', '1234567890'),
  ('2','Grace', 'Aitken', 'grace.aitken@example.com', '1234567890'),
  ('3','Wilbur', 'Summerson', 'wilbur.summerson@example.com', '0987654321'),
  ('4','Tom', 'Bettridge', 'tom.betridge@example.com','098765400567');

INSERT INTO Products (ProductName, ListPrice, Discount) VALUES
  ('Product A', 100.00, 10.00),
  ('Product B', 50.00, 5.00);

INSERT INTO Voter (VoterID,Name, Age, DOB) VALUES
  ('101','Alice Johnson', 30, '1993-05-15'),
  ('106','Bob Brown', 45, '1978-11-22');
