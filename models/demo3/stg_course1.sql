{{ config(materialized = 'table') }}
with degree1 as (
    
    select
        Id as studentid,
        CourseId,
        CourseName,
        Duration,
        {{ payment('Fees') }} as fees_paid
      
    from "RAW"."PUBLIC"."Course"
)

select * from degree