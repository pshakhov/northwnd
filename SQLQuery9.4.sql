
/* 9.4.	Вывести все возможные комбинации записей из территорий
(TerritoryDescription) и регионов (RegionDescription */

SELECT t.TerritoryDescription, r.RegionDescription
FROM Territories AS t
CROSS JOIN 
Region AS r
GROUP BY TerritoryDescription, RegionDescription;