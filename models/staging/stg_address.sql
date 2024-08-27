with source as(

select * from {{ ref('address')}}
)

select
    addressid,
    CASE WHEN addressline2 is not null
        THEN concat(addressline1,', ',coalesce(addressline2,''))
        ELSE addressline1
    END AS address,
    city,
    stateprovinceid,
    postalcode
from
    source