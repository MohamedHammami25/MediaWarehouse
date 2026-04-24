# MediaWarehouse 🎬📊

**MediaWarehouse** is an end-to-end Data Warehouse project designed to centralize, structure, and analyze large-scale audiovisual data. The project focuses on transforming raw data from **TMDB (The Movie Database)** into actionable business insights using the Microsoft BI stack and Python.

## 🚀 Project Context
Modern enterprises generate vast volumes of data from varied sources that are often difficult to exploit. This project creates a reliable platform to analyze trends, optimize content management, and facilitate the creation of decision-making reports specifically for movies and TV series.

## 🛠️ Tech Stack
- **Languages:** Python (Web Scraping & Data Extraction).
- **Database:** Microsoft SQL Server (SSMS).
- **ETL Engine:** SQL Server Integration Services (SSIS).
- **Analysis:** SQL Server Analysis Services (SSAS) for OLAP Cubes.
- **Visualization:** Power BI & DAX (Data Analysis Expressions).

## 🏗️ Architecture & Process
The project follows a standard Business Intelligence workflow:
1.  **Extraction:** Data is collected via Python web scraping scripts and stored in CSV format.
2.  **Staging:** Raw data is loaded into a staging area in SQL Server without modification.
3.  **Transformation (ETL):** Using SSIS, data is cleaned, normalized, and business rules are applied to ensure consistency.
4.  **Loading:** Data is loaded into a Star Schema data warehouse.
5.  **Analysis:** Creation of a multidimensional OLAP cube to generate automated aggregations (sums, averages, etc.).
6.  **Visualization:** Interactive dashboards in Power BI connected directly to the Data Warehouse.

## 📊 Data Model (Star Schema)
The warehouse utilizes a **Star Schema** designed for high-performance analytical queries:

### Fact Tables
- **FactMovies:** Includes measures such as `Budget`, `Revenue`, `UserScoreAverage`, `VoteCount`, `Popularity`, and `Runtime`.
- **FactSeries:** Contains metrics for television content, including `UserScoreAverage` and `Popularity`.
- **FactContentGenre:** A bridge table linking content to various genres.

### Dimension Tables
- **DimDate:** Detailed time breakdown (Year, Quarter, Month, Day, Weekends).
- **DimPerson:** Information on directors, creators, and actors.
- **DimLanguage:** Metadata for content languages.
- **DimCertification:** Content ratings (e.g., PG, TV-MA).
- **DimGenre & DimContentType:** Classification for multidimensional filtering.

## 📈 Key Insights
The final Power BI dashboards provide visualizations on:
- **Trend Analysis:** Evolution of the number of productions per year.
- **Seasonality:** Movie volume and average profitability by season.
- **Engagement:** Average popularity by period (Weekday vs. Weekend).
- **Ranking:** Top 10 films per genre based on popularity and scores.

---
