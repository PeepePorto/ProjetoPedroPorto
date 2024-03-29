{{ config(materialized='table') }}

with
    selected as (
        select  
            /* Primary Key */
            salesreasonid
            /* - */	
            , name	
            , reasontype
        from {{ ref('stg_sales_salesreason') }}
    )
    , transformed as (
        select
            row_number() over (order by salesreasonid) as salesreasonid_sk /* auto incremental - coluna de linhas pelo ID do motivo de venda */ 
            , *
        from selected
    )

    select * 
    from transformed