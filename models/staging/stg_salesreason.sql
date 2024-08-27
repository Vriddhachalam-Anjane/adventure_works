with source as(

select * from {{ ref('salesreason')}}
)

select * EXCLUDE
    modifieddate
from
    source