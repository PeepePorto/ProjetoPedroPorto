{{ config(materialized='table') }}

with
    selected as (
        select  
            /* Primary Key */
            customerid
            /* Foreign Key */
            , personid
            , storeid
            , territoryid
        from {{ ref('stg_sales_customer') }}
    )
    , transformed as (
        select
            row_number() over (order by customerid) as customerid_sk /* auto incremental - coluna de linhas pelo ID do cliente */ 
            , *
        from selected
    )

    select * 
    from transformed