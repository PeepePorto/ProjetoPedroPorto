with 
    source as (
        select 
            /* Primary Key */
            stateprovinceid
            /* Foreign Key */
            , countryregioncode
            , stateprovincecode
            , name
            , territoryid
            --, isonlystateprovinceflag
            --, rowguid
            --, modifieddate
        from {{  source('erpprojeto20211106','person_stateprovince')  }}
    )

    select * from source