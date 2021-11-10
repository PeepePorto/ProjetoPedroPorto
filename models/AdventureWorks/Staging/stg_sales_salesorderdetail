with 
    source as (
        select
            /* Primary Key */
            salesorderid
            , salesorderdetailid
            --, businessentityid (não existe)
            /* Foreign Key */
            , orderqty
            , productid
            , specialofferid
            , unitprice
            , unitpricediscount
            --, carriertrackingnumber (não necessária)
            --, linetotal (não existe)
            --, rowguid (não necessária)
            --, modifieddate (não necessária)
        from {{  source('erpprojeto20211106','sales_salesorderdetail')  }}
    )

    select * from source