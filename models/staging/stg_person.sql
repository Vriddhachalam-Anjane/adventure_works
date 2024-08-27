with source as(

select * from {{ ref('person')}}
)

select * EXCLUDE
    (
        rowguid,
        modifieddate
    )
from
    source