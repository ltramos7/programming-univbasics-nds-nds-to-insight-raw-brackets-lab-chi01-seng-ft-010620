$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  director_index = 0
  while director_index < directors_database.length do
    puts "..."
    puts directors_database[director_index][:name]
    movie_index = 0
    total = 0
    while movie_index < directors_database[director_index][:movies].length do
      puts total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end  
    director_index += 1
  end
end

directors_totals
