with source as(

select * from {{ ref('salesorderdetail')}}
)

select * EXCLUDE
    (
        rowguid,
        modifieddate
    )
from
    source