
/* 10.3. ������� ������� ���������, � ������� ���� ������ ����� 01.01.1997 �  01.03.1997.*/


SELECT LastName
FROM Employees AS e
WHERE EXISTS
(SELECT OrderDate
FROM Orders AS o
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-03-01');

 

