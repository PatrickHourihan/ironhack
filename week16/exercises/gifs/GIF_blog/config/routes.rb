Rails.application.routes.draw do
  # get '/posts/new' => 'posts#new'
  # post '/posts' => 'posts#create'
  # get '/posts' => 'posts#index'

  # root 'posts#home'
  get '/' => 'posts#home'

  post '/posts/:id/upvote' => 'posts#upvote'

  post '/posts/:id/downvote' => 'posts#downvote'

  resources :posts, only: [:index, :new, :create, :show, :destroy, :update] do
  end

end


