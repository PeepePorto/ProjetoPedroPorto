with 
    source as (
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
            --, productsubcategoryid (não necessária)
            --, productmodelid (não necessária)
            --, safetystocklevel (não necessária)
            --, reorderpoint (não necessária)
            --, size (não necessária)
            --, sizeunitmeasurecode (não necessária)
            --, weightunitmeasurecode (não necessária)
            --, weight (não necessária)
            --, daystomanufacture (não necessária)
            --, productline (não necessária)
            --, class (não necessária)
            --, style (não necessária)
            --, discontinueddate (não necessária)
            --, rowguid (não necessária)
            --, modifieddate (não necessária)
            --, makeflag (não necessária)
            --, finishedgoodsflag (não necessária)
            --, color (não necessária)
        from {{  source('erpprojeto20211106','production_product')  }}
    )

    select * from source