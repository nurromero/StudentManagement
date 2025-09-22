-- V7__ModifyCourseCredits.sql

ALTER TABLE Course
ALTER COLUMN Credits DECIMAL(5,2) NOT NULL;