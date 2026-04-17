# MediaWarehouse 🎬📊

[cite_start]**MediaWarehouse** is an end-to-end Data Warehouse project designed to centralize, structure, and analyze large-scale audiovisual data[cite: 19, 21]. [cite_start]The project focuses on transforming raw data from **TMDB (The Movie Database)** into actionable business insights using the Microsoft BI stack and Python[cite: 21, 36].

## 🚀 Project Context
[cite_start]Modern enterprises generate vast volumes of data from varied sources that are often difficult to exploit[cite: 19]. [cite_start]This project creates a reliable platform to analyze trends, optimize content management, and facilitate the creation of decision-making reports specifically for movies and TV series[cite: 22].

## 🛠️ Tech Stack
- [cite_start]**Languages:** Python (Web Scraping & Data Extraction)[cite: 37, 61].
- [cite_start]**Database:** Microsoft SQL Server (SSMS)[cite: 66, 147].
- [cite_start]**ETL Engine:** SQL Server Integration Services (SSIS)[cite: 54, 129].
- [cite_start]**Analysis:** SQL Server Analysis Services (SSAS) for OLAP Cubes[cite: 50, 133].
- [cite_start]**Visualization:** Power BI & DAX (Data Analysis Expressions)[cite: 65, 141].

## 🏗️ Architecture & Process
[cite_start]The project follows a standard Business Intelligence workflow[cite: 42, 44]:
1.  [cite_start]**Extraction:** Data is collected via Python web scraping scripts and stored in CSV format[cite: 118, 121, 148].
2.  [cite_start]**Staging:** Raw data is loaded into a staging area in SQL Server without modification[cite: 126, 168].
3.  [cite_start]**Transformation (ETL):** Using SSIS, data is cleaned, normalized, and business rules are applied to ensure consistency[cite: 129, 131].
4.  [cite_start]**Loading:** Data is loaded into a Star Schema data warehouse[cite: 70, 130].
5.  [cite_start]**Analysis:** Creation of a multidimensional OLAP cube to generate automated aggregations (sums, averages, etc.)[cite: 133, 137].
6.  [cite_start]**Visualization:** Interactive dashboards in Power BI connected directly to the Data Warehouse[cite: 139, 142].

## 📊 Data Model (Star Schema)
[cite_start]The warehouse utilizes a **Star Schema** designed for high-performance analytical queries[cite: 70]:

### Fact Tables
- [cite_start]**FactMovies:** Includes measures such as `Budget`, `Revenue`, `UserScoreAverage`, `VoteCount`, `Popularity`, and `Runtime`[cite: 104, 105, 106, 110, 111, 235].
- [cite_start]**FactSeries:** Contains metrics for television content, including `UserScoreAverage` and `Popularity`[cite: 73, 81, 83].
- [cite_start]**FactContentGenre:** A bridge table linking content to various genres[cite: 265, 399].

### Dimension Tables
- [cite_start]**DimDate:** Detailed time breakdown (Year, Quarter, Month, Day, Weekends)[cite: 84, 92, 94, 98].
- [cite_start]**DimPerson:** Information on directors, creators, and actors[cite: 112, 114, 115].
- [cite_start]**DimLanguage:** Metadata for content languages[cite: 85, 205].
- [cite_start]**DimCertification:** Content ratings (e.g., PG, TV-MA)[cite: 71, 72, 202].
- [cite_start]**DimGenre & DimContentType:** Classification for multidimensional filtering[cite: 229, 232].

## 📈 Key Insights
[cite_start]The final Power BI dashboards provide visualizations on[cite: 151, 153, 154]:
- [cite_start]**Trend Analysis:** Evolution of the number of productions per year[cite: 154].
- [cite_start]**Seasonality:** Movie volume and average profitability by season[cite: 151].
- [cite_start]**Engagement:** Average popularity by period (Weekday vs. Weekend)[cite: 152].
- [cite_start]**Ranking:** Top 10 films per genre based on popularity and scores[cite: 153, 155].

---
