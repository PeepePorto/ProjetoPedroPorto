{{ config(materialized='table') }}

with
    selected as (
        select  
            /* Primary Key */
            creditcardid
            /* Unique Key */
            , cardtype
            , cardnumber
        from {{ ref('stg_sales_creditcard') }}
    )
    , transformed as (
        select
            row_number() over (order by creditcardid) as creditcardid_sk /* auto incremental - coluna de linhas pelo ID do cartão */ 
            , *
        from selected
    )

    select * 
    from transformed