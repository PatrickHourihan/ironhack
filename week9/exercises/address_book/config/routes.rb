Rails.application.routes.draw do

  get '/' => 'site#home'
  # resources :contacts
  get '/contacts/new' => 'contacts#new'
  post '/contacts', :to => 'contacts#create'
  get '/contacts/:id' => 'contacts#show'


end
