require "sinatra"

get "/" do
  "Hello Sinatra"
end

get "/hi" do 
  @greeting = "Hi, this is another route in my application"
  erb :hi 
end

get "/about" do 
  erb :about
end

get "/time" do 
  @time = Time.now
  erb :time
end

get "/pizza" do 
  @ingredients = ["pepperoni", "sausage", "peppers", "mushrooms"]
  erb :pizza
end

get "/users/:username" do 
  @username = params[:username]
  erb :profile
end

get "/hours/ago/:hours_ago" do 
  @hours = (params[:hours_ago].to_i) * 60 * 60
  @new_time = Time.now - @hours
  erb :ago
end

