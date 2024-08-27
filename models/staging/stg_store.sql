with source as(

select * from {{ ref('store')}}
)

select * EXCLUDE
    modifieddate
from
    source