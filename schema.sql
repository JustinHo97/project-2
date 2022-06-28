/* gauthamp10 */
create table gauthamp (
    app_id serial primary key,
    app_name varchar,
    category varchar,
    rating float,
    rating_count float,
    installs varchar,
    free boolean,
    price float,
    content_rating varchar,
    ad_supported boolean,
    in_app_purchases boolean
);

/* neomatrix */
create table neomatrix (
    app varchar primary key,
    genre varchar,
    rating float,
    reviews int,
    installs float,
    type float,
    price float,
    content_rating varchar
);

/* UserReviews */
create table user_reviews (
    review_id serial primary key,
    app varchar,
    translated_review varchar,
    original_sentiment varchar 
);