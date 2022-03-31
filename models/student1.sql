with student1 as(
    
    select
        DOB, 
        Gender, 
        EmailId
        
    from "RAW"."PUBLIC"."STUDENT_INFORMATION" 
)

select * from student1