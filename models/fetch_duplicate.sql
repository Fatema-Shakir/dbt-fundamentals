//fetch duplicates value.

with stud as(
    
    select
        Id, count(Id)
        
         from "RAW"."PUBLIC"."STUDENT_INFORMATION"
         GROUP BY Id
         HAVING COUNT (Id)>1
)

select * from stud

