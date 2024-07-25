# Artists Database - MSSQL Server

A music library database, inspired by Spotify's music catalog.

Queries are separated by folders.  
```1_create_queries``` includes all the queries required to create the tables, insert Mac Miller's discography as an example,  
```2_procedures_and_functions``` includes procedures and functions to manage the database easier,  
```3_triggers``` includes triggers to add logic to the database,  
```4_display_queries``` includes some sample queries to visualize the data.

## Recent changes
✅ Listening history  
✅ Users model and user playlists  
✅ Stored procedures and functions  
✅ Classics attribute  
✅ Playlists  
✅ Artist Bios (One-to-one)  

## Database Diagram
Full diagram hosted and [available here](https://dbdiagram.io/d/6698141b8b4bb5230e9f71c8).
![DB Diagram](https://i.imgur.com/3eNkxpj.png)

## Indexes
All tables use ID's as primary keys, which are indexed by default.
I just decided to add some indexes for columns that in my opinion might
be used more often separately.
They are in the ```7_indexes.sql``` file in the ```1_create_queries``` folder.