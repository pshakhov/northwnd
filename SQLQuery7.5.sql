
/* 7.5.	�� ������� Employees ����� ��� ������� �������� ��� ������������, �.�. ���� �� ������ �������. 
��������� ������� � ������� 'User Name' (LastName) � 'Boss'. 
� �������� ������ ���� ��������� ����� �� ������� LastName. 
��������� �� ��� �������� � ���� �������? */

SELECT DISTINCT e.LastName AS [User Name], s.ContactName AS Boss
FROM Employees AS e, Suppliers AS s
WHERE e.ReportsTo = s.SupplierID;
