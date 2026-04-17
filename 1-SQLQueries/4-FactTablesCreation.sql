create table dw.FactMovies (
MovieKey int identity(1,1) primary key, 
MovieId bigint,
Title nvarchar(500),
DateKey int,
LanguageKey int,
DirectorKey int,
MainCast nvarchar(2000), 
UserScoreAverage float,
VoteCount int,
Popularity float,
Overview nvarchar(max),
Runtime int,
CertificationKey int,
Budget float,
Revenue float
);

create table dw.FactSeries (
SeriesKey int identity(1,1) primary key,
SeriesId bigint,
Title nvarchar(500),
DateKey int,
OriginalLanguageKey int,
Creatorkey int,
Certificationkey int,
UserScoreAverage float, 
VoteCount int,
Popularity float,
Overview nvarchar(max)
);

go

