
/* 11.3. ������� ���������, ������� ����������� ����� 5 ���������� */

SELECT DISTINCT LastName
  FROM Employees AS e
  WHERE 
  (SELECT DISTINCT (COUNT(TerritoryID))
                      FROM EmployeeTerritories AS et
                      WHERE e.EmployeeID = et.EmployeeID) >= 5;