with merging as(
    
    SELECT *
        FROM "RAW"."PUBLIC"."STUDENT_INFORMATION"
        FULL JOIN "RAW"."PUBLIC"."Course"
        USING (Id)
)

select * from merging
