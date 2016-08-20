class SandwichesController < ApplicationController
  protect_from_forgery with: :null_session

	def index
		@sandwiches = Sandwich.all
		showSandwiches = @sandwiches[0].name + "\n" + @sandwiches[1].name + "\n" + @sandwiches[2].name
		render json: showSandwiches
	end

	def create 
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end 

	def show 
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich 
			render json: {error: "sandwich not found"},
				status: 404
			return
		end
		render json: sandwich.to_json({:include => :ingredients})
	end 

	def update 
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich 
			render json: {error: "sandwich not found"},
				status: 404
			return
		end 
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy 
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich 
			render json: {error: "sandwich not found"},
			status: 404
			return
		end
		sandwich.destroy
		render json: sandwich
	end

	private 

	def sandwich_params 
		params.require(:sandwich)
		.permit(
			:name, 
			:bread_type, 
		)
	end

end
