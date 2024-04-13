with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        product_id,
        purchse_price as purchse_price

    from source

)

select * from renamed
