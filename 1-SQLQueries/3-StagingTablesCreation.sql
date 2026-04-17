create table staging.FilmsRaw ( 
category nvarchar(100), 
movie_id bigint,
name nvarchar(500), 
release_date date,
original_language nvarchar(10), 
genre_list nvarchar(1000),
director nvarchar(500),
main_cast nvarchar(2000),
user_score_average float,
vote_count int,
popularity float,
overview nvarchar(max),
runtime int null,
certification nvarchar(50) null,
budget float null,
revenue float null
);

create table staging.SeriesRaw (
category nvarchar(100),
tv_id bigint,
name nvarchar(500),
first_air_date date,
original_language nvarchar(10),
genre_list nvarchar(1000),
creator nvarchar(500),
certification_us nvarchar(50) null,
user_score_average float,
vote_count int,
popularity float,
overview nvarchar(MAX)
);

go