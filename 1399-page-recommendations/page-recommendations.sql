# Write your MySQL query statement below
Select distinct page_id as recommended_page from likes,friendship 
where
likes.user_id in (select GREATEST(user1_id,user2_id) from friendship where user1_id =1 or user2_id =1)
AND
page_id NOT in (select page_id from likes where user_id =1)
order by recommended_page