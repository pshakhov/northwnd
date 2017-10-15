/* 5.3	Необходимо вывести всю информацию о сотруднике( таблица Employees), чья фамилия точно не известна (King или Kong).*/

SELECT *
FROM Employees
WHERE LastName LIKE 'K%ng';