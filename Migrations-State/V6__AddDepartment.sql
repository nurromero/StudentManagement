-- V6__AddDepartment.sql

CREATE TABLE Department (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL,
    Budget DECIMAL(18,2) NOT NULL,
    StartDate DATE NOT NULL,
    DepartmentHeadId INT NOT NULL,
    FOREIGN KEY (DepartmentHeadId) REFERENCES Instructor(Id) ON DELETE CASCADE
);
