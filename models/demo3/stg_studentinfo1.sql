{{ config(materialized = 'table') }}
with details1 as (select * from "RAW"."PUBLIC"."STUDENT_INFORMATION")
select Id,
      FirstName,
      LastName
from details