/*{{config(
    materialized="table"
)}}*/


with student as(
    --select * from "RAW"."PUBLIC"."STUDENT_INFORMATION"
    select
        Id as student_id,
        FirstName,
        LastName

    from "RAW"."PUBLIC"."STUDENT_INFORMATION"
)

select * from student

