Rails.application.routes.draw do
  resource :motors, only: :show
  resources :humidities, only: [:index, :create]
  resources :temperatures, only: [:index, :create]
  resources :lights, only: [:index, :create] 
end
