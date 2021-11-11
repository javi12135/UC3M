--Find Fname, Minit and Lname of the employees whose supervisor is the employee with SSN 8886655555

-- Find the maximum salary of employees grouped by gender
SELECT MAX(Salaray), Sex

--Find the total number of hours worked in each project of the company
SELECT SUM(Hours), PNo

--FInd the SSN of the employees oredered by the number of hours worked in projects
SELECT ESSN, SUM(Hours)
FROM WORKS_ON
GROUP BY ESSN
ORDER BY SUM(Hours)

--How many projects has each department of the company?
SELECT COUNT(*), Dnum
FROM project
GROUP BY Dnum
