with payment as(


    select * from{{ ref('stg_payment') }}
),

daily as( 

    select 
     
        created,
        count(*) as orderid

        {% for payment_status in ['success', 'fail'] %}

            sum(case when status = {{payment_status}} then 1 else 0 end) as {{payment_status}}_total {{',' if not loop.last }}

         {% endfor %}   




        from payment
        group by 1
),

select * from payment


/*with payments as (
select * from {{ ref('stg_payments') }}
),

aggregated as (
select
sum(amount) as total_revenue
from payments
where status = 'success'
)

select * from aggregated*/