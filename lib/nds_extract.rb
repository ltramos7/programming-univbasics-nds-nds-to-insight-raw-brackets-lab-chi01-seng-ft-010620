$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  director_index = 0
  hash = {}
  director_name = 0 
  while director_index < directors_database.length do
  
    movie_index = 0
    puts directors_database[director_index][:name]
  
    total = 0
    while movie_index < directors_database[director_index][:movies].length do 
      total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    puts total
    director_name = directors_database[director_index][:name]
    hash[director_name] = total
    director_index += 1
  end
  hash
end

directors_totals (directors_database)
