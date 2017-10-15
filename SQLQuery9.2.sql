/* 9.2.	������� �������� ���� ��������� � ������ �������, ��������� � ����. 
�������� �������� �������� ���� � ��� ������,
���� ��� ���� ��� �� ������ ������ */



SELECT p.ProductName AS [Product Name]
FROM Products AS p 
LEFT OUTER JOIN
[Order Details] AS od 
ON p.ProductID = od.ProductID 
GROUP BY p.ProductName;
