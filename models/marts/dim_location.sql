with address as(
select * from {{ ref('stg_address')}}
),
state_province as(
select * from {{ ref('stg_stateprovince') }}
)
select address.* exclude stateprovinceid, state_province.*
from address join state_province on address.stateprovinceid = state_province.stateprovinceid