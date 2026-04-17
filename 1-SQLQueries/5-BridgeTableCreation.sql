CREATE TABLE dw.BridgeContentGenre (
ContentGenreKey int identity(1,1) primary key,
ContentTypeKey int,
ContentId bigint, 
GenreKey int
);