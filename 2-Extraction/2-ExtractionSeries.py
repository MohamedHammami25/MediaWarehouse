import pandas as pd
import pyodbc
import numpy as np

# --- 1. Lire le CSV ---
csv_file = r'C:\Users\m5538\Desktop\Mohamed Hammami\Ing\1ère\S1\Entropot données\DW\2-Extraction\Series.csv'  # <-- ton fichier CSV
df = pd.read_csv(csv_file)

# --- 2. Nettoyage des colonnes ---

# Colonnes float
float_cols = ['user_score_average', 'popularity']
for col in float_cols:
    df[col] = pd.to_numeric(df[col].astype(str).str.replace(',', '.').str.strip(), errors='coerce').fillna(0).astype(float)

# Colonnes int
int_cols = ['vote_count', 'tv_id']
for col in int_cols:
    df[col] = pd.to_numeric(df[col].astype(str).str.strip(), errors='coerce').fillna(0).astype(int)

# Colonnes date
df['first_air_date'] = pd.to_datetime(df['first_air_date'], errors='coerce').dt.date

# Colonnes nvarchar
str_cols = ['category','name','original_language','genre_list','creator','certification_us','overview']
for col in str_cols:
    df[col] = df[col].fillna('').astype(str).str.strip()

# --- 3. Connexion SQL Server ---
conn = pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER=DESKTOP-UFGRP3H;'
    'DATABASE=MediaWarehouse;'
    'Trusted_Connection=yes;'
)
cursor = conn.cursor()

# --- 4. Requête d'insertion ---
sql = """
INSERT INTO staging.SeriesRaw (
    category, tv_id, name, first_air_date, original_language, genre_list, creator,
    certification_us, user_score_average, vote_count, popularity, overview
) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
"""

# --- 5. Insertion ligne par ligne ---
for _, row in df.iterrows():
    cursor.execute(sql,
        row['category'], row['tv_id'], row['name'], row['first_air_date'], row['original_language'],
        row['genre_list'], row['creator'], row['certification_us'], row['user_score_average'], 
        row['vote_count'], row['popularity'], row['overview']
    )

# --- 6. Valider et fermer ---
conn.commit()
cursor.close()
conn.close()

print("Import SeriesRaw terminé !")
