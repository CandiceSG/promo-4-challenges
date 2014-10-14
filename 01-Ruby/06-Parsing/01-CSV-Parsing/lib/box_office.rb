# Encoding: utf-8
require 'csv'


def most_successfull(number, max_year, file_name)
  movies = []
  csv_options = { col_sep: ',' }

  CSV.foreach(file_name, csv_options) do |row|
    movies << {
      name: row[0],
      year: row[1].to_i,
      earnings: row[2].to_i
    }
  end

  sorted_movies = movies.sort_by do |movie|
    - movie[:earnings]
  end

  movies_max_year = sorted_movies.select do |movie|
    movie[:year] < max_year
  end

  return movies_max_year.take(number)
end

  filepath = "/Users/candicesala/code/CandiceSG/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv"

p most_successfull(8, 1975, filepath)

# TODO: return the number most successfull movies max_year
