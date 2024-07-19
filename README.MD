# Artists Database - MSSQL Server

I decided to implement a basic artist-album-songs-genre database.

Queries are separated by folders.
```create_queries``` includes all the queries required to create the tables, insert Mac Miller's discography for sample.
```display_queries``` includes some sample queries to visualize the data.

## Recent changes
✅ Artist Bios (One-to-one)
✅ Playlists

## Current TODO list
* Users model
* Classics attribute
* Model Constraints

P.S. Due to the multiple ideas, the diagram might be outdated, but will be updated once major changes are implemented.

## Database Diagram
Full diagram hosted and [available here](https://dbdiagram.io/d/6698141b8b4bb5230e9f71c8).
![DB Diagram](https://i.imgur.com/tsuE20T.png)

## Indexes

All tables use ID's as primary keys, which are indexed by default.
I just decided to add some indexes for columns that in my opinion might
be used more often separately.
They are in the ```5_indexes.sql``` file in ```display_queries``` folder.