
/* 9.3.	Вывести имена клиентов (ContactName) и продавцов (LastName), которые живут в одном городе. 
Выводить имена клиентов, даже если в их городе нет продавцов и наоборот. */

SELECT c.ContactName, e.LastName
FROM Customers AS c
FULL OUTER JOIN 
Employees AS e
ON c.City = e.City;
