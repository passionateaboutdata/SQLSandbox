# Write your MySQL query statement below
Select 'bull' as word,
sum(content like '% bull %') as count from files
UNION
Select 'bear' as word,
sum(content like '% bear %') as count from files
