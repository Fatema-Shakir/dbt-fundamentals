{{config(
    materialized="table"
)}}


with student as(
    
    select
        Id as student_id,
        FirstName,
        LastName,
        DOB

    from "RAW"."PUBLIC"."STUDENT_INFORMATION
)

select * from studen




