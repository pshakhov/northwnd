
/* 8.2.	���������� ���������, ������� ����������� ������ 'Western' (������� Region). 
���������� ������� ������ ����������� ��� ����: 'LastName' �������� � 
�������� ������������� ���������� ('TerritoryDescription' �� ������� Territories). 
������ ������ ������������ JOIN � ����������� FROM. 
��� ����������� ������ ����� ��������� Employees � Territories ���� ������������ ����������� ��������� ��� ���� Northwind. */



SELECT e.LastName, t.TerritoryDescription
FROM Employees AS e
INNER JOIN
EmployeeTerritories AS et
ON e.EmployeeID = et.EmployeeID
INNER JOIN
Territories AS t
ON et.TerritoryID = t.TerritoryID
INNER JOIN
Region AS r
ON t.RegionID = r.RegionID
WHERE r.RegionDescription = 'Western'
ORDER BY e.LastName, t.TerritoryDescription;

              