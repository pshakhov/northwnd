
/* 10.3. ������� ������� ���������, � ������� ���� ������ ����� 01.01.1997 �  01.03.1997.*/


SELECT e.LastName
FROM Employees AS e
WHERE e.EmployeeID IN
(
SELECT o.EmployeeID
FROM Orders AS o
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1997-03-01'
);





