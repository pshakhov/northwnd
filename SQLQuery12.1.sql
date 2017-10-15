
/* 12.1.	��������� ���� ���������� (������� Customers), 
������� �� ����� �� ������ ������ (��������� �� ������� Orders). 
������������ ��������������� SELECT � �������� EXISTS. */


SELECT ContactName
FROM Customers AS c
WHERE NOT EXISTS 
  (SELECT CustomerID
   FROM Orders AS o
   WHERE c.CustomerID = o.CustomerID);