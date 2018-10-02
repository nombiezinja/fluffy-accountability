Rails.application.routes.draw do

  root to:  "pages#home"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get '/dashboard', to: 'dashboard#show'

  resources :pairs
  
  resources :agreements
end
