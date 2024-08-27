with product as(
select * from {{ ref('stg_product')}}
),
product_category as(
select * from {{ ref('stg_productcategory') }}
),
product_subcategory as(
select * from {{ ref('stg_productsubcategory') }}
)
select
  product.* exclude productsubcategoryid,
  product_category.name as category_name,
  product_subcategory.name as subcategory_name
from product 
join product_subcategory 
  on product.productsubcategoryid = product_subcategory.productsubcategoryid 
join product_category 
  on product_category.productcategoryid = product_subcategory.productcategoryid