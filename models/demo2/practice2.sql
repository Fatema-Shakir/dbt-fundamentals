{{config(
    materialized="table"
)}}
with info as (

    select * from {{ ref('practice1') }}

),

subject as(
    
    select
        Id as student_id,
        CourseId,
        CourseName,
        Duration
        

    from "RAW"."PUBLIC"."Course
)

select * from subject