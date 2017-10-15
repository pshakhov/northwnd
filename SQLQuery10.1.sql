/* 10.1.	��������� ���� ����������� ������� CompanyName � ������� Suppliers,
� ������� ��� ���� �� ������ �������� �� ������ (UnitsInStock � ������� Products ����� 0). 
������������ ��������� SELECT ��� ����� ������� � �������������� ��������� IN.
����� �� ������������ ������ ��������� IN �������� '=' ? 

����������: ��, �����*/


SELECT *
FROM
(SELECT s.CompanyName
FROM Suppliers AS s
JOIN
Products AS p
ON p.SupplierID = s.SupplierID
WHERE UnitsInStock IN ('0')) AS result
 

