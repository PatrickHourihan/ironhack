class SandwichIngredientController < ApplicationController

	def add
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)
		
		sandwich_ingredients = sandwich.ingredients

		render json: sandwich.to_json(:include => ingredients)

		# new_calories = sandwich.total_calories += ingredient.calories
		# sandwich.update(total_calores: new_calories)

		# showSandwiches = {
		# 	"sandwich" => sandwich,
		# 	"ingredients" => sandwich_ingredients
		# }

		# render json: showSandwiches
	end

end
