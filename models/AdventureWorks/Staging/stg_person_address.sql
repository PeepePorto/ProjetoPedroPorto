with 
    source as (
        select
            /* Primary Key 1 */
            addressid
            /* Foreign Key */
            , stateprovinceid
            /* Unique Key */
            , addressline1
            , addressline2
            , city
            , postalcode
            , spatiallocation
            --, rowguid (não necessária)
            --, modifieddate (não necessária)
        from {{  source('erpprojeto20211106','person_address')  }}
    )

    select * from source