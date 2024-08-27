with salesorderheader as(
select * from {{ ref('stg_salesorderheader')}}
),
salesorderdetail as(
select * from {{ ref('stg_salesorderdetail') }}
)
select
  salesorderheader.* exclude salesorderid,
  salesorderdetail.*,
from salesorderheader 
join salesorderdetail 
  on salesorderheader.salesorderid = salesorderdetail.salesorderid 