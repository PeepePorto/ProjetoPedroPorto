{{ config(materialized='table') }}

with
    selected as (
        select  
            /* Primary Key */
            stateprovinceid
            /* Foreign Key */
            , countryregioncode
            , stateprovincecode
            , name
            , territoryid
        from {{ ref('stg_person_stateprovince') }}
    )
    , transformed as (
        select
            row_number() over (order by stateprovinceid) as stateprovinceid_sk /* auto incremental - coluna de linhas pelo ID da provincia&estado */ 
            , *
        from selected
    )

    select * 
    from transformed