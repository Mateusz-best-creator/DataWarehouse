use DateWarehouses_University;

DROP TABLE IF EXISTS SpecializationMemberAssociation;
DROP TABLE IF EXISTS Specialization;
DROP TABLE IF EXISTS Professor_Department;
DROP TABLE IF EXISTS Student_Department;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS FacultyMember;
DROP TABLE IF EXISTS Department;


CREATE TABLE Specialization 
(
	ID INT PRIMARY KEY,
	Name VARCHAR(30) UNIQUE,
	Study_Field VARCHAR(60)
);

CREATE TABLE FacultyMember
(
	University_ID INT PRIMARY KEY,
	First_Name Varchar(30),
	Last_Name Varchar(30),
	Email Varchar(50) UNIQUE,
	Publications_Count INT
);

ALTER TABLE FacultyMember
ADD CONSTRAINT POSITIVE_PUBLICATIONS CHECK (Publications_Count > 0);
ALTER TABLE FacultyMember
ADD CONSTRAINT CorrectID CHECK (LEN(University_ID) = 6);

CREATE TABLE SpecializationMemberAssociation
(
	Specialization_ID INT,
	Member_ID INT,
	PRIMARY KEY (Specialization_ID, Member_ID),
	FOREIGN KEY (Specialization_ID) REFERENCES Specialization(ID),
	FOREIGN KEY (Member_ID) REFERENCES FacultyMember(University_ID),
);

CREATE TABLE Student (	
	University_ID INT PRIMARY KEY,
    Enrollment_Year INT,
	FOREIGN KEY (University_ID) REFERENCES FacultyMember(University_ID) ON DELETE CASCADE
);

CREATE TABLE Professor (
	University_ID INT PRIMARY KEY,
    EmploymentStartDate Datetime,
    Degree VARCHAR(50),
	FOREIGN KEY (University_ID) REFERENCES FacultyMember(University_ID) ON DELETE CASCADE
);

CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50) UNIQUE,
    Location VARCHAR(20)
);


CREATE TABLE Student_Department (
    Student_ID INT,
    Department_ID INT,
    PRIMARY KEY (Student_ID, Department_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(University_ID) ON DELETE CASCADE,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID) ON DELETE CASCADE
);


CREATE TABLE Professor_Department (
    Professor_ID INT,
    Department_ID INT,
    PRIMARY KEY (Professor_ID, Department_ID),
    FOREIGN KEY (Professor_ID) REFERENCES Professor(University_ID) ON DELETE CASCADE,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID) ON DELETE CASCADE
);
