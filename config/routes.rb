Rails.application.routes.draw do
  post '/login' 
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources:users
end
