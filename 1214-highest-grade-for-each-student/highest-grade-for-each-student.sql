# Write your MySQL query statement below

With cte as
(
Select row_number() over(partition by student_id order by grade desc , course_id asc) rk1, student_id,grade, course_id from enrollments
)
Select student_id, course_id, grade from cte where rk1 =1 order by student_id asc