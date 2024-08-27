with source as(

select * from {{ ref('productcategory')}}
)

select * EXCLUDE
    modifieddate
from
    source