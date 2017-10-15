
/* 11.2 �������� ������ ���� OrderID, ��� ������� ���������� ��������� 
�� ������ 10% �� �������� ������ ������ ������� �� �������. */

SELECT DISTINCT OrderID
  FROM [Order Details] as od
  WHERE 
    Quantity <= (SELECT AVG(Quantity)*.1 
                      FROM [Order Details] 
                      WHERE od.ProductID = ProductID)