SELECT Department.name AS Department, Employee.name as Employee, Employee.salary AS Salary
FROM (
        SELECT *, DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS n
        FROM Employee
) AS Employee
JOIN Department ON Employee.departmentId = Department.id
WHERE n <= 3

