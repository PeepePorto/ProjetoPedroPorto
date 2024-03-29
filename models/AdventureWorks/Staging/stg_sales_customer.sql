with 
    source as (
        select
            /* Primary Key */
            customerid
            /* Foreign Key */
            , personid
            , storeid
            , territoryid
            --, accountnumber (não existe)
            --, rowguid (não necessária)
            --, modifieddate (não necessária)
        from {{  source('erpprojeto20211106','sales_customer')  }}
    )

    select * from source