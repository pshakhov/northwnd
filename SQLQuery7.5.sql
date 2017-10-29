
/* 7.5.	�� ������� Employees ����� ��� ������� �������� ��� ������������, �.�. ���� �� ������ �������. 
��������� ������� � ������� 'User Name' (LastName) � 'Boss'. 
� �������� ������ ���� ��������� ����� �� ������� LastName. 
��������� �� ��� �������� � ���� �������? */

    SELECT e1.LastName AS [User Name], e2.LastName As Boss
    FROM Employees AS e1
    JOIN
    Employees AS e2
        ON e1.ReportsTo = e2.EmployeeID;
