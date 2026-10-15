USE CollegeDB;
CREATE VIEW StudentDetails AS
SELECT
    S.StudentName,
    C.CourseName,
    D.DepartmentName
FROM Student S
JOIN Enrollment E
    ON S.StudentID = E.StudentID
JOIN Course C
    ON E.CourseID = C.CourseID
JOIN Department D
    ON S.DepartmentID = D.DepartmentID;

SELECT * FROM StudentDetails;