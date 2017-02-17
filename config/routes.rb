Rails.application.routes.draw do
  resources :taluks
  resources :districts
  resources :rranges
  resources :zones
  resources :hoblis
  resources :vehicles
  resources :fire_stations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
