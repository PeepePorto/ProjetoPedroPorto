with 
    source as (
        select
            /* Primary Key */
            salesreasonid
            /* - */	
            , name	
            , reasontype	
            --, modifieddate (não necessária)
        from {{  source('erpprojeto20211106','sales_salesreason')  }}
    )

    select * from source