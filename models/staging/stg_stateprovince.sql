with source as(

select * from {{ ref('stateprovince')}}
)

select * EXCLUDE
    (
        rowguid,
        modifieddate
    )
from
    source