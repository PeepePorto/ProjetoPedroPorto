{{ config(materialized='table') }}

with
    selected as (
        select  
            /* Primary Key */
            productid
            /* Unique Key */
            , name
            , productnumber
            , standardcost
            , listprice
            /* Foreign Key */
            , sellstartdate
            , sellenddate
        from {{ ref('stg_production_product') }}
    )
    , transformed as (
        select
            row_number() over (order by productid) as productid_sk /* auto incremental - coluna de linhas pelo ID do produto */ 
            , *
        from selected
    )

    select * 
    from transformed