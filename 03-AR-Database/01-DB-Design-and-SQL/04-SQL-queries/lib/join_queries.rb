require 'sqlite3'

def detailed_tracks(db)
  array = db.execute "SELECT t.name, alb.title, art.name
  FROM tracks t JOIN albums alb ON alb.id = t.album_id
  JOIN artists art ON art.id = alb.artist_id"
  return array
end

def stats_on(db, genre_name)
hash = {}
end

# For each genre of music, find the stats,
# i.e. the number of tracks and the average song length (in minutes).
# Tip: you have to use a GROUP BY statement with aggregate SQL functions such as COUNT and AVG.
# The method should return a Hash of statistics, for example:
def top_five_artists(db, genre_name)
 array = [] # TODO: return list of top 5 rock artists
end