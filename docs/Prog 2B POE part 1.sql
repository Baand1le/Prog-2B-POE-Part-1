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

CREATE TABLE Category (
	categoryID VARCHAR(20) PRIMARY KEY,
	eventID VARCHAR(20) NOT NULL REFERENCES Event(eventID),
	categoryName VARCHAR(50),
	ageGroup VARCHAR(30)
);

SELECT * FROM Category;

CREATE TABLE Enrollment(
    enrollmentID VARCHAR(20) PRIMARY KEY,
    participantID VARCHAR(20) NOT NULL,
    eventID VARCHAR(20) NOT NULL,
    categoryID VARCHAR(20) NOT NULL,
    enrollmentDate DATE,

    FOREIGN KEY (participantID) REFERENCES Users(userID),
    FOREIGN KEY (eventID) REFERENCES Event(eventID),
    FOREIGN KEY (categoryID) REFERENCES Category(categoryID)
);

SELECT * FROM Enrollment;

CREATE TABLE Result (
    resultID VARCHAR(20) PRIMARY KEY,
    enrollmentID VARCHAR(20) NOT NULL,
    finishTime TIME,
    finishPosition INT,

    FOREIGN KEY (enrollmentID) REFERENCES Enrollment(enrollmentID)
);

SELECT * FROM Result;