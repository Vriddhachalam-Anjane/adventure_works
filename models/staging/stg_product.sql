with source as(

select * from {{ ref('product')}}
)

select * EXCLUDE
    (
        rowguid,
        modifieddate
    )
from
    source