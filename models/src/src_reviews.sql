with raw_review as (
select * from {{ source('airbnb', 'reviews') }}
)
select 
    Listing_ID,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from raw_review