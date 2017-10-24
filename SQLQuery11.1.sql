

/* 11.1. ��������� ���� ���������, ������� ����� ����� 150 �������. 
������������ ��������� ��������������� SELECT. */


SELECT DISTINCT LastName
  FROM Employees AS e
  WHERE 
  (
  SELECT COUNT(OrderID)
                      FROM Orders AS o
                      WHERE o.EmployeeID = e.EmployeeID
					  ) >= 150;