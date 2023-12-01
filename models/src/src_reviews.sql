with src_reviews as (
    select * from {{ source('airbnb','reviews')}}
)

    select 
    date as review_date,
    reviewer_name,
    comments as review_texts,
    sentiment as review_sentiment
         from src_reviews