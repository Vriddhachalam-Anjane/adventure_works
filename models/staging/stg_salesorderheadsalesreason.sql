with source as(

select * from {{ ref('salesorderheadersalesreason')}}
)

select * EXCLUDE
    modifieddate
from
    source