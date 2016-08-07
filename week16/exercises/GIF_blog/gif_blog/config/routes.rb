Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'posts#home'

  get '/posts/' => 'posts#index'

  get '/posts/new' => 'posts#new'

  get 'posts/:id' => 'posts#show'

  post '/posts' => 'posts#create' 

  post 'posts/:id/upvote' => 'posts#upvote' 

  post 'posts/:id/downvote' => 'posts#downvote' 

end
