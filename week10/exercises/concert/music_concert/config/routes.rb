Rails.application.routes.draw do

  get '/' => 'concerts#home'

  get '/price' => 'concerts#price'

  resources :concerts do 
    resources :comments
  end

end
