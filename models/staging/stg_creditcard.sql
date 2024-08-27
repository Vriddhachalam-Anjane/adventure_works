with source as(

select * from {{ ref('creditcard')}}
)

select * EXCLUDE
        modifieddate
from
    source