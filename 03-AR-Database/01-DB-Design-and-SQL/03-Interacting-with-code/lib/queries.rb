require 'sqlite3'

def number_of_rows(db, table_name)
  rows = db.execute "SELECT COUNT(*) FROM #{table_name}"
  p rows.join "\s"
  return (rows.join "\s").to_i # TODO: count number of rows in table table_name
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  # TODO: return array of love songs
end

def long_tracks(db, min_length)
  # TODO: return tracks verifying: duration > min_length (minutes)
end
