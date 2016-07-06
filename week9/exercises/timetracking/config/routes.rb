Rails.application.routes.draw do

  get '/' => 'site#home'
  get '/contact' => 'site#contact'

  	resources :projects, only: [:index, :show, :new, :create] do 
  		resources :time_entries, except: [:show]
  	end
end
