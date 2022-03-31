// calculate age

with age as(
    
        SELECT 

        AGE(NOW(), DOB) AS age

            FROM  "RAW"."PUBLIC"."STUDENT_INFORMATION"
            
)

select * from age
/*select datediff(year,'1991-03-16',getdate())*?

/*SELECT FLOOR((CAST (GetDate() AS INTEGER) - CAST(Date_of_birth AS INTEGER)) / 365.25) AS Age*?
/*where  datediff(year,'1980-04-02',getdate())*/ 

/*FLOOR((CAST (GetDate() AS INTEGER) - CAST(DOB AS INTEGER)) / 365.25) AS Age*/