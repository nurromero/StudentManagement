-- V4__AddInstructor.sql

-- 1. Creating the Instructor table
CREATE TABLE Instructor (
    Id INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    HireDate DATE NOT NULL
);

-- 2. Add InstructorId column to Course
ALTER TABLE Course
ADD InstructorId INT NOT NULL;

-- 3. Add foreign key 
ALTER TABLE Course
ADD CONSTRAINT FK_Course_Instructor
FOREIGN KEY (InstructorId) REFERENCES Instructor(Id)
ON DELETE CASCADE;
