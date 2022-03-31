with registration as(

        SELECT 
                Id,
                FirstName,
                CourseName,
                Fees
        FROM "RAW"."PUBLIC"."STUDENT_INFORMATION"
            INNER JOIN "RAW"."PUBLIC"."Course"
      USING (Id)
 
  
)
select * from registration

/*with registration as(
    
        SELECT 
                Id,
                FirstName
        FROM "RAW"."PUBLIC"."STUDENT_INFORMATION"
            INNER JOIN "RAW"."PUBLIC"."Course"
      USING (Id)

  GROUP BY CourseId
  
)

select * from registration*/
