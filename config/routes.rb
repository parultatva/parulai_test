Rails.application.routes.draw do
  devise_for :users
  # resources :channels
  root 'channels#index'
  get '/get_shows', to: 'channels#get_shows'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
