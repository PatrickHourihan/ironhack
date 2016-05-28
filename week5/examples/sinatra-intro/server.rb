require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

users = { 
  josh: "swordfish",
  faraz: "password",
  patrick: "12345"
}

# session[:current_user] = faraz / josh
# Create a route to show a login form
  # Name / Password 
# Create another route to verify if the user is logged in or if the user's credentials are correct 
  # If they are correct show them their profile page 
    # Save the user into session 
  # If incorrect, send them back to the form

get "/" do
  erb :hi
end

get "/login" do 
  erb :login
end

post "/login" do 
  erb :login
end

post "/verify" do 
  @user = params[:user]
  @password = params[:password]

  if (users.has_key? @user.to_sym) && (users[@user.to_sym] == @password)
    
    session[:current_user] = @user
    redirect to("/users/#{@user}")
  else  
    redirect to("/login")
  end

end

post "/logout" do 
  session.clear
  redirect to("/login")
end


get "/users/:username" do 
  @username = params[:username]
  erb :welcome
end

get "/welcome" do 
  @greeting = "Welcome to your profile page #{@user}!"
  erb :welcome
end

get "/about" do 
  erb :about
end

get "/time" do 
  @time = Time.now
  erb :time
end

get "/pizza" do 
  @ingredients = ["pepperoni", "sausage", "peppers", "mushrooms", "cheese", "beef"]
  erb :pizza
end

get "/session_test/:text" do 
  text = params[:text]
  session[:saved_value] = text
end

get "/session_show/" do
  @my_text = session[:saved_value]
  erb :session_show
end

get "/hours/ago/:hours_ago" do 
  @hours = (params[:hours_ago].to_i) * 60 * 60
  @new_time = Time.now - @hours
  erb :ago
end

