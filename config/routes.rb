Rails.application.routes.draw do
  resources :statistics
  resource :motors, only: [:show, :update]
  resources :humidities, only: [:index, :create]
  resources :temperatures, only: [:index, :create]
  resources :lights, only: [:index, :create]
end
