/* 9.4.	Вывести все возможные комбинации записей из территорий
(TerritoryDescription) и регионов (RegionDescription */

SELECT t.TerritoryDescription, r.RegionDescription
FROM Territories AS t
FULL JOIN 
Region AS r
ON t.RegionID = r.RegionID
GROUP BY TerritoryDescription, RegionDescription;