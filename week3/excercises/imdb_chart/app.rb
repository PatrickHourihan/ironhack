require("imdb")
require_relative("lib/movies-chart")

trek_search = Imdb::Search.new("Star Trek")
diehard_search = Imdb::Search.new("Die Hard")
super_troopers_search = Imdb::Search.new("Super Troopers")
caddyshack_search = Imdb::Search.new("Caddyshack")
memento_search = Imdb::Search.new("Memento")
star_wars_search = Imdb::Search.new("Star Wars")


movies = []
movies.push(trek_search.movies[0])
movies.push(diehard_search.movies[0])
movies.push(super_troopers_search.movies[0])
movies.push(caddyshack_search.movies[0])
movies.push(memento_search.movies[0])
movies.push(star_wars_search.movies[0])

my_chart = MoviesChart.new(movies)
my_chart.print_chart
puts "-------------"
my_chart.print_number
puts "\n"
my_chart.print_list

# movies.each do | movie | 
# 	puts "#{movie.title}: #{movie.rating}"
# end