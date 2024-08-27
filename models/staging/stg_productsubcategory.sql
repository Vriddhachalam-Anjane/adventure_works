with source as(

select * from {{ ref('productsubcategory')}}
)

select * EXCLUDE
    modifieddate
from
    source