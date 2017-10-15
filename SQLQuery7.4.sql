
/* 7.4.	����� ���� �����������, ������� ����� � ����� ������. 
� ������� ������������ ���������� ������� Customers c ����� - ��������������. 
��������� ������� CustomerID � City. ������ �� ������ ����������� ����������� ������. 
��� �������� �������� ������, ������� ����������� ������, ������� ����������� ����� ������ ���� � ������� Customers. 
��� �������� ��������� ������������ �������. */



SELECT DISTINCT c.CustomerID, c.City
FROM Customers AS c
WHERE EXISTS (SELECT c.City 
              FROM Customers AS c
              WHERE c.City=c.City
			  GROUP BY c.City);
			  