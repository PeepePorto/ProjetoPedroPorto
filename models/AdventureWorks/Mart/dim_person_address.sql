{{ config(materialized='table') }}

with
    selected as (
        select  
            /* Primary Key */
            addressid
            /* Foreign Key */
            , stateprovinceid
            /* Unique Key */
            , addressline1
            , addressline2
            , city
            , postalcode
            , spatiallocation
        from {{ ref('stg_person_address') }}
    )
    , transformed as (
        select
            row_number() over (order by addressid) as addressid_sk /* auto incremental - coluna de linhas pelo endereço */ 
            , *
        from selected
    )

    select * 
    from transformed