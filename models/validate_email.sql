//validate email value.

with stud as(
    
    select
        EmailId       

            FROM  "RAW"."PUBLIC"."STUDENT_INFORMATION"
            WHERE EmailId NOT LIKE '%_.%_@__%.__%'
)

select * from stud