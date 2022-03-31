{{ config(materialized = 'table') }}
with degree as (
    
    select
        Id as studentid,
        CourseId,
        CourseName,
        Duration

    from "RAW"."PUBLIC"."Course"
)

select * from degree