
/* 7.4.	����� ���� �����������, ������� ����� � ����� ������. 
� ������� ������������ ���������� ������� Customers c ����� - ��������������. 
��������� ������� CustomerID � City. ������ �� ������ ����������� ����������� ������. 
��� �������� �������� ������, ������� ����������� ������, ������� ����������� ����� ������ ���� � ������� Customers. 
��� �������� ��������� ������������ �������. */

SELECT DISTINCT c1.CustomerID, c1.City
FROM Customers AS c1
INNER JOIN Customers AS c2
ON c2.City = c1.City
WHERE c2.CustomerID <> c1.CustomerID

/* SELECT City
FROM Customers
GROUP BY City
HAVING COUNT(City) > 1; */  