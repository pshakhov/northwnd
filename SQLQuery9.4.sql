/* 9.4.	������� ��� ��������� ���������� ������� �� ����������
(TerritoryDescription) � �������� (RegionDescription */

SELECT t.TerritoryDescription, r.RegionDescription
FROM Territories AS t
FULL JOIN 
Region AS r
ON t.RegionID = r.RegionID
GROUP BY TerritoryDescription, RegionDescription;