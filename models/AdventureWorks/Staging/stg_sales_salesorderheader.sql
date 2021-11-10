with 
    source as (
        select
            /* Primary Key */
            salesorderid
            --, businessentityid (não existe)
            /* Foreign Key */
            , revisionnumber
            , orderdate
            , duedate
            , shipdate
            , status 
            , purchaseordernumber
            , accountnumber
            , customerid
            , salespersonid
            , territoryid
            , billtoaddressid
            , shiptoaddressid
            , shipmethodid
            , creditcardid
            , subtotal
            , taxamt
            , freight
            , totaldue
            /* Unique Key */
            , purchaseordernumber
            , accountnumber
            --, salesordernumber (não existe)
            --, onlineorderflag (não necessária)
            --, creditcardapprovalcode (não necessária)
            --, currencyrateid (não necessária)
            --, comment (não necessária)
            --, rowguid (não necessária)
            --, modifieddate (não necessária)
        from {{  source('erpprojeto20211106','sales_salesorderheader')  }}
    )

    select * from source