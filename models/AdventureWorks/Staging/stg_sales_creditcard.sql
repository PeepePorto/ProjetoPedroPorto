with 
    source as (
        select
            /* Primary Key */
            creditcardid
            /* Unique Key */
            , cardtype
            , cardnumber
            --, expmonth
            --, expyear
            --, modifieddate
        from {{  source('erpprojeto20211106','sales_creditcard')  }}
    )

    select * from source