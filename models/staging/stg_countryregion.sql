with source as(

select * from {{ ref('countryregion')}}
)

select
    countryregioncode,
    name
from
    source