
/* 10.1. ��������� ���� ����������� ������� CompanyName � ������� Suppliers,
� ������� ��� ���� �� ������ �������� �� ������ (UnitsInStock � ������� Products ����� 0). 
������������ ��������� SELECT ��� ����� ������� � �������������� ��������� IN.
����� �� ������������ ������ ��������� IN �������� '=' ? 

����������: ��, �����*/
 

SELECT s.CompanyName 
FROM Suppliers as S
WHERE EXISTS
(
 SELECT *
 FROM Products AS p
 WHERE s.SupplierID = p.SupplierID AND p.UnitsInStock IN (0)
 );