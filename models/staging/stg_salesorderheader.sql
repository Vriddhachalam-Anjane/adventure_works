with source as(

select * from {{ ref('salesorderheader')}}
)

select * EXCLUDE
    (
        rowguid,
        modifieddate
    )
from
    source