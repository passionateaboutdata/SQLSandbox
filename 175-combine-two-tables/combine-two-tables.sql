# Write your MySQL query statement below
Select firstName,lastName, city, state from Person left join Address 
ON
Person.personId = Address.personid