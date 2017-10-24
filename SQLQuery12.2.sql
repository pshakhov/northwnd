
/* 12.2. Выводить фамилии продавцов, только 
если хотя бы один из них проживает в Лондоне */


SELECT LastName
FROM Employees AS e
WHERE EXISTS
  (
  SELECT LastName
   FROM Employees AS e
   WHERE e.City = 'London'
   );