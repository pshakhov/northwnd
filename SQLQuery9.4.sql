
/* 9.4.	������� ��� ��������� ���������� ������� �� ����������
(TerritoryDescription) � �������� (RegionDescription */

SELECT t.TerritoryDescription, r.RegionDescription
FROM Territories AS t
CROSS JOIN 
Region AS r
GROUP BY TerritoryDescription, RegionDescription;