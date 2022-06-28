# Analyzing Google Play Apps to Identify Most Popular App Sectors
## ETL Project:
### Team Members
Fenny Patel, Justin Ho, Nikki Ryan, Parisa Charkhgary, Sidney Bowe

### Extract
ABOUT THE DATASETS
The three datasets that we used for the purpose of this project, gives any app-developing business an enormous potential to success. By working on these datasets we can study Android market. These datasets are chosen from Kaggle.
-	Google Playstore Dataset is a CSV file with 1,048,576 rows and 24 columns, the data was collected in June 2021
-	Extended google playstore user review has 64,296 rows and 33 columns
-	Extended google playstore has 64296 rows and 23 columns

| File Name  | Source | Format |
| ------------- | ------------- | ------------- |
| extended_googleplaystore.csv  | <ul><li> kaggle.com </li> <li> Google Play Store Apps Extended </li> <li> Based on the original dataset 'Google Play Store Apps' with more features</li></ul>  |CSV  |
| extended_googleplaystore_user_reviews.csv  | <ul><li>kaggle.com</li> <li>Google Play Store Apps Reviews (+110K Comment)</li><li>Web scraped data of over 110k reviews from different genres of Apps.</li></ul>|CSV  |
| Google-Playstore.csv  | <ul><li> kaggle.com </li> <li> Google Play Store Apps Google Play Store App data of 2.3 Million+ applications. </li></ul> |CSV  |
	
### Transformation
We would like to study these datasets in more depth to find out about the  App’s ratings, reviews, price, etc. Therefore we took steps to clean data by removing duplicates so we would work with more accurate data, removing columns that are not useful for the purpose of this analysis and work only with data from which useful insights can be drawn, and renaming columns.
| File Name | Data  Frame Name | Kept Columns | Renamed Columns |
| :---         |     ---      |   --- |          --- |
| extended_googleplaystore.csv   | clean_neo (removed 15 columns)| App, Genres (categorical), Rating, Reviews, Installs, Type, Price, Content Rating  |<ul><li>Genres (categorical)' changed to 'genre </li> <li>All other columns changed to lower case </li> <li>Spaces on columns names replaced with "_" </li></ul>
| extended_googleplaystore_user_reviews.csv    | clean_neo_reviews (removed 30 columns)| app,  translated_review, original_sentiment|<ul><li> All columns names changed to lower case. </li> <li>Spaces on columns names replaced with "_" </li></ul>
|Google-Playstore.csv |clean_gauthamp (removed 14 columns)|app_name, category, rating, rating_count, installs, free, price, content_rating, ad_supported, in_app_purchases|<ul><li> All columns names changed to lower case. </li> <li>Spaces on columns names replaced with "_" </li></ul>

### Load
This information will allow us to decide whether or not to charge for an app we are creating. This will allow us to also decide what updates we may want to include in our app, which genre and content rating our app should have, and how ratings and reviews would correlate with the success of our app.
| FinalDB: playstore_db | Table |
| :---    |:--- |
| PostgreSQL using SQLAlchemy   | neomatrix|
| PostgreSQL using SQLAlchemy |user_reviews|
| PostgreSQL using SQLAlchemy |guathamp|
