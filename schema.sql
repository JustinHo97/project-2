/* gauthamp10 */
create table gauthamp (
    app_name varchar primary key,
    category varchar,
    rating float,
    rating_count int,
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
    installs int,
    type boolean,
    price float,
    content_rating varchar
);

/* UserReviews */
create table user_reviews (
    app varchar,
    foreign key (app) references neomatrix(app),
    translated_review varchar,
    original_sentiment varchar 
);