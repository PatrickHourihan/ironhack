Rails.application.routes.draw do

  get '/' => 'site#home'

  get '/become_a_host' => 'site#becomeAHost'

  get '/help' => 'site#help'

  get '/sign_up' => 'site#signUp'

  get '/log_in' => 'site#logIn'

end
