{{ config(materialized='table') }}

with
    selected as (
        select  
            /* Primary Key */
            countryregioncode
            /* Unique Key */
            , name
        from {{ ref('stg_person_countryregion') }}
    )
    , transformed as (
        select
            row_number() over (order by countryregioncode) as countryregioncode_sk /* auto incremental - coluna de linhas pelo código região&país */ 
            , *
        from selected
    )

    select * 
    from transformed