Rails.application.routes.draw do
  get '/' => 'general#home'
  post '/urls', :to => 'general#create'

end
