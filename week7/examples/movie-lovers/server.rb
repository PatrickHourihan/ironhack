require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require "imdb"
require_relative('lib/app')

enable(:sessions)

get "/" do
    erb :home
end

get "/search" do
    erb :search
end

post "/search" do
    @search = params[:search]
    @movies = MoviesSearch.new(@search)

    @filter_movies = @movies.filter

    @correct_movie = @filter_movies.sample

    erb :results
end