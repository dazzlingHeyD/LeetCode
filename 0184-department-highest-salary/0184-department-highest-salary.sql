SELECT Department
    , Employee
    , Salary
FROM (
    SELECT d.name Department
        , e.name Employee
        , e.salary Salary
        , DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) ran
    FROM Employee e, Department d
    WHERE e.departmentId = d.id
) s
WHERE ran = 1





