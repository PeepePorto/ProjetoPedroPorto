with 
    source as (
        select
            /* Primary Key */
            salesorderid
            , salesreasonid
            --, businessentityid (não existe)
            --, modifieddate (não necessária)
        from {{  source('erpprojeto20211106','sales_salesorderheadersalesreason')  }}
    )

    select * from source