CREATE DATABASE RaceDay;

USE RaceDay;

CREATE TABLE userRole (
	roleID INT PRIMARY KEY,
	roleType VARCHAR(30)
);

SELECT * FROM userRole;

CREATE TABLE Users (
	userID VARCHAR(20) PRIMARY KEY,
	roleID INT NOT NULL REFERENCES userRole(roleID),
	firstName VARCHAR(50),
	Surname VARCHAR(50),
	email VARCHAR(100)
);

SELECT * FROM Users;

CREATE TABLE Event (
	eventID VARCHAR(20) PRIMARY KEY,
	organizerID VARCHAR(20) NOT NULL REFERENCES Users(userID),
	Name VARCHAR(100),
	Description VARCHAR(255),
	[Date] DATE,
	Location VARCHAR(255),
	Distance VARCHAR(20),
	eventType VARCHAR(30)
);

SELECT * FROM Event;
