# Artists Database - MSSQL Server

I decided to implement a basic artist-album-songs-genre database.

Queries are separated by folders.
```1_create_queries``` includes all the queries required to create the tables, insert Mac Miller's discography as an example.
```2_procedures_and_functions``` includes procedures and functions to manage the database easier
```3_display_queries``` includes some sample queries to visualize the data.

## Recent changes
✅ Stored procedures and functions
✅ Classics attribute
✅ Playlists
✅ Artist Bios (One-to-one)

## Current TODO list
* Users model
* Listening history

P.S. Due to the multiple ideas, the diagram might be outdated, but will be updated once major changes are implemented.

## Database Diagram
Full diagram hosted and [available here](https://dbdiagram.io/d/6698141b8b4bb5230e9f71c8).
![DB Diagram](https://i.imgur.com/rjGFuFy.png)

## Indexes

All tables use ID's as primary keys, which are indexed by default.
I just decided to add some indexes for columns that in my opinion might
be used more often separately.
They are in the ```5_indexes.sql``` file in ```3_display_queries``` folder.