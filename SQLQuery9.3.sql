
/* 9.3.	������� ����� �������� (ContactName) � ��������� (LastName), ������� ����� � ����� ������. 
�������� ����� ��������, ���� ���� � �� ������ ��� ��������� � ��������. */

SELECT c.ContactName, e.LastName
FROM Customers AS c
FULL OUTER JOIN 
Employees AS e
ON c.City = e.City;
