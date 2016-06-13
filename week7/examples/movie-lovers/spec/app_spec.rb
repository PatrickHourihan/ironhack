require_relative "../lib/app.rb"
require "spec_helper"


describe "Movies" do 

	before :each do 
		@movies = MoviesSearch.new("funny")
	end

	describe "#filter" do 
		it "only shows movies that have a poster" do 
			expect((@movies.filter).length).to eq(9)
		end
	end

end
