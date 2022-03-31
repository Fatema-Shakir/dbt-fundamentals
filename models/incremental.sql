{{
    config(
        materialized='incremental'
    )
}}

-- select increase_count(Id)
select *
-- from "STUDENT_INFORMATION"
from "RAW"."JAFFLE_SHOP"."CUSTOMERS"

-- {% if is_incremental() %}

--   -- this filter will only be applied on an incremental run
--   where Id > (select * from {{ this }})

-- {% endif %}

/*select
    *,
    increase_count(Id)

from "STUDENT_INFORMATION"

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where Id > (select * from {{ this }})

{% endif %}*/