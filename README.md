# IMDB Movies Insights — SQL + Tableau

## Overview
This project analyzes an IMDB movies dataset using SQL for data preparation and Tableau for interactive dashboards.

I explored:
- Trends in movie production and ratings over time
- Genre performance by rating and metascore
- Director ratings and number of movies
- The impact of runtime on movie ratings
- Differences in ratings across movie certificates

## Tools
- MySQL (SQL queries & data extraction)
- Tableau Public (dashboards & story)
- GitHub (version control & documentation)

## Data
Single table with the following columns:

- `title`
- `rating`
- `release_year`
- `certificate`
- `genre`
- `director`
- `metascore`
- `runtime`

Cleaned and exported datasets are in the datasets folder

## SQL
All SQL queries used to generate the analysis datasets are in: sql/imdb_queries.sql

## Dashboards (Tableau)
You can explore the interactive Tableau Story here:

[IMDB Tableau Dashboard](https://public.tableau.com/views/IMDBMovieDataAnalysis_17650716238700/IMDBMoviesDataset?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
 

The story contains 5 dashboards:
1. Movie Trends (movies per year & avg rating over time)
2. Genre Analysis
3. Director Performance
4. Runtime Insights
5. Certificates & Ratings

## Key Insights
- Movie production has increased over time while average ratings stayed relatively stable. There was a significan dip in the number of movies released in 2020 (COVID).
- Documentaries have the highest average rating and metascore across genres. 
- Long movies (>120 minutes) minutes tend to achieve the best ratings on average.
- R rated movies were the most released over the time period but G rated movies have the highest average rating.
  <img width="905" height="725" alt="Movie Trends" src="https://github.com/user-attachments/assets/8ea73b11-5a11-416a-a8dc-73de7b884d8b" />
  <img width="905" height="725" alt="Director Analysis" src="https://github.com/user-attachments/assets/a11b89a2-8588-4a5b-b36f-18c080e4101f" />
  <img width="905" height="727" alt="Genre analysis" src="https://github.com/user-attachments/assets/8f59e9e0-18d0-4d80-bf3a-acaf0a3800a0" />
<img width="906" height="727" alt="Movie Certificate Analysis" src="https://github.com/user-attachments/assets/62cab724-9b51-46d8-bad2-5c1cf732152c" />



