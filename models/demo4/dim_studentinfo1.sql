{{ config( materialized='incremental') }}

with information as (

    select * from {{ ref('stg_studentinfo1')}}

),

subject as (

    select * from {{ ref('stg_course1') }}

),

joining_tables as (

    select
        information.Id,
        information.FirstName,
        information.LastName,
        subject.CourseID,
        subject.CourseName,
        subject.Duration

    from information

    left join subject 
    on information.Id =subject.studentid
   ),

final as ( select * from joining_tables
     {%if is_incremental() %}
                      where not exists (
       select joining_tables.Id
     from {{this}} as dstudentinfo, "RAW"."DBT_FSHAKIR"."STG_COURSE"
         where 
         dstudentinfo.CourseID = joining_tables.CourseID
             )
     {% endif %}
)  

select * from final
order by Id

