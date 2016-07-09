class ConcertsController < ApplicationController

	def home
		@today = Concert.concerts_today
		@this_month = Concert.concerts_this_month
	end

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist], 
			venue: params[:concert][:venue], 
			city: params[:concert][:city], 
			date: params[:concert][:date], 
			price: params[:concert][:price], 
			description: params[:concert][:description]
			)
		@concert.save

		redirect_to '/concerts/:id'
	end

	def index
		@concert = Concert.all
	end

	def show 
		@concert = Concert.find_by(id: params[:id])
		@comment = @concert.comments.new
		@comments = @concert.comments.all
	end

	def price
		@price = Concert.price(params[:price])
	end

end
