with mapping as(
    
    select 
    distinct(id),
    firstname,
    case
        WHEN gender = 'M'  THEN 1
        WHEN gender = 'F' THEN 0
   
    END as gender
            FROM  "RAW"."PUBLIC"."STUDENT_INFORMATION"
)
select * from mapping




/*select
  id, 
  name, 
  category,
  price,
  case 
    when category = 5 then 'Premium'
    when category = 4 then 'Gold'
    when category = 3 then 'Standard'
    when category <= 2 then 'Basic' 
    else 'unknown'
  end as quality_level
from products;*/

/*
SELECT CASE CAST([GenderIsMale] AS BIT)
    WHEN 1 THEN 'Male'
    WHEN 0 THEN 'Female'
    ELSE 'other string'
    --ELSE CONVERT(VARCHAR(50), [GenderIsMale]) -- if column is a numeric type
    --ELSE [GenderIsMale] -- if column is a string type
    --ELSE NULL
END;
*/