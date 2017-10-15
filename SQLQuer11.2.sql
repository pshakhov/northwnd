
/* 11.2 ѕолучить список всех OrderID, дл€ которых покупатели приобрели 
не больше 10% от среднего объЄма продаж каждого из товаров. */

SELECT DISTINCT OrderID
  FROM [Order Details] as od
  WHERE 
    Quantity <= (SELECT AVG(Quantity)*.1 
                      FROM [Order Details] 
                      WHERE od.ProductID = ProductID)