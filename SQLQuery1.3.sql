
/* 1.3	Выбрать из таблицы Employees имена и фамилии всех сотрудников старше 50-ти  лет.
Напротив имени каждого сотрудника в колонке с названием “Age” вывести его возраст. */

SELECT *
FROM (
SELECT FirstName, DATEDIFF(YEAR,BirthDate,GETDATE()) AS Age, LastName
FROM Employees
) AS Aged
WHERE Age >= 50;

