with 
    source as (
        select
            /* Primary Key */
            countryregioncode
            /* Unique Key */
            , name
            --, modifieddate
        from {{  source('erpprojeto20211106','person_countryregion')  }}
    )

    select * from source