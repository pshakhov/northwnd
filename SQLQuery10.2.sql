
/* 10.2 ������� ����� ������ ��� ��������,
������� �� ����� �� ������ ������. �� ������������ EXISTS.*/

SELECT c.ContactName
FROM Customers AS c
WHERE c.CustomerID NOT IN 
(
SELECT CustomerID
FROM Orders AS o
);
