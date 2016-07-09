Rails.application.routes.draw do

  get 'bid/create'

  get '/' => 'users#home'

    resources :users, only: [:index, :show, :create, :destroy, :new] do 

      resources :products, only: [:index, :show, :create, :destroy, :new] 
      	
    end

    resources :bids, only: [:create] do 

    end

end
