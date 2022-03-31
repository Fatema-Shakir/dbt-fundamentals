with student2 as(
    
    SELECT *
        FROM student
        FULL JOIN student1
        USING (Id)
)

select * from student2

