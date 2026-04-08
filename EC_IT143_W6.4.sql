USE AdventureWorks2022;
GO

SELECT *
FROM Person.Person
WHERE FirstName = 'John';
GO

CREATE NONCLUSTERED INDEX IX_Person_FirstName
ON Person.Person (FirstName);
GO

SELECT *
FROM Person.Person
WHERE FirstName = 'John';
GO

SELECT *
FROM Person.EmailAddress
WHERE EmailAddress LIKE '%gmail%';
GO

CREATE NONCLUSTERED INDEX IX_Email_EmailAddress
ON Person.EmailAddress (EmailAddress);
GO