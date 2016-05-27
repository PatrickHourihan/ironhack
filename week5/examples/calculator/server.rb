# server.rb

require "sinatra"

get "/" do
  erb(:home)
end

get "/operate" do 
  erb(:operate)
end

post "/calculate_operate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f

  operation = params[:operation]

    if operation == "add" 
	  result = first + second
      "#{first} + #{second} = #{result}"

    elsif operation == "subtract" 
	  result = first - second
	  "#{first} - #{second} = #{result}"

	elsif operation == "multiply" 
  	  result = first * second
  	  "#{first} * #{second} = #{result}"

	elsif operation == "divide" 
  	  result = first / second
  	  "#{first} / #{second} = #{result}"
  	end
end

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  "#{first} + #{second} = #{result}"
end

get "/subtract" do 
  erb(:subtract)
end

post "/calculate_subtract" do 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first - second
  "#{first} - #{second} = #{result}"
end

get "/multiply" do 
  erb(:multiply)
end

post "/calculate_multiply" do 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first * second
  "#{first} * #{second} = #{result}"
end

get "/divide" do 
  erb(:divide)
end

post "/calculate_divide" do 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first / second
  "#{first} / #{second} = #{result}"
end