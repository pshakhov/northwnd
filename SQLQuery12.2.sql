
/* 12.2. �������� ������� ���������, ������ 
���� ���� �� ���� �� ��� ��������� � ������� */


SELECT LastName
FROM Employees AS e
WHERE EXISTS
  (
  SELECT LastName
   FROM Employees AS e
   WHERE e.City = 'London'
   );