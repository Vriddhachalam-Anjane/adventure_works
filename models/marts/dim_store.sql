with store as(
select * from {{ ref('stg_store')}}
),
person as(
select * from {{ ref('stg_person') }}
)
select store.* exclude businessentityid, person.*
from store join person on store.businessentityid = person.businessentityid