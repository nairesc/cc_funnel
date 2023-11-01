with 

source as (

    select * from {{ source('raw', 'cc_funnel') }}

),

renamed as (

    select
        company,
        sector,
        date_lead,
        opportunity_date AS date_opportunity,
        date_customer,
        date_lost

    from source

)

select * from renamed
