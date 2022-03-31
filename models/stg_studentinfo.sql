{{ config(materialized = 'table') }}
with details as (select * from "RAW"."PUBLIC"."STUDENT_INFORMATION")
select Id,
      FirstName,
      LastName
from details