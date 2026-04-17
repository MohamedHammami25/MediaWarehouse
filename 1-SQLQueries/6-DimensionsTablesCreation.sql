create table dw.DimCertification (
CertificationKey int identity(1,1) primary key, 
CertificationName nvarchar(50), 
Region nvarchar(50)
);

create table dw.DimLanguage (
LanguageKey int identity(1,1) primary key,
LanguageCode nvarchar(10),
LanguageName nvarchar(100)
);

create table dw.DimDate ( 
DateKey int primary key, 
FullDate date,
Day int,
Month int,
Year int,
Quarter int,
DayOfWeek int,
IsWeekend bit
);

create table dw.DimPerson (
Personkey int identity(1,1) primary key, 
PersonName nvarchar(500) not null,
PersonRole nvarchar(50) null,
SourcePersonId bigint null,
StartDate date null,
EndDate date null,
IsCurrent bit default 1
);

create table dw.DimContentType (
ContentTypeKey INT IDENTITY(1,1) PRIMARY KEY, 
ContentTypeName NVARCHAR(50)
);

create table dw.DimGenre (
Genrekey int identity(1,1) primary key, 
GenreName nvarchar(200) unique
);

go