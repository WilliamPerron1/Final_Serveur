Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get '/game', to: 'game#index'
  get '/startgame', to: 'game#created'
  get '/editprofil', to: 'game#formedit'
  post '/editprofil', to: 'game#editprofil'

end
