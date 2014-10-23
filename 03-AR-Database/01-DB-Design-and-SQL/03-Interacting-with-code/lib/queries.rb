require 'sqlite3'

def number_of_rows(db, table_name)
  rows = db.execute "SELECT COUNT(*) FROM #{table_name}"
  p rows.join "\s"
  return (rows.join "\s").to_i # TODO: count number of rows in table table_name
end

def sorted_artists(db)
 array = db.execute "SELECT name FROM artists ORDER BY name ASC"
 p array.flatten # TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
array = db.execute "SELECT name FROM tracks WHERE name LIKE '%love%'" # TODO: return array of love songs
p array.flatten
end

def long_tracks(db, min_length)
 array = db.execute "SELECT name FROM TRACKS WHERE milliseconds > #{min_length} ORDER BY milliseconds ASC" # TODO: return tracks verifying: duration > min_length (minutes)
p array.flatten
end
