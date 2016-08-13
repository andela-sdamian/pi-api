Rails.application.routes.draw do
  get '/pump', to: "pumps#index" 
  put '/pump', to: "pumps#update"

  get '/fan', to: "fans#index" 
  put '/fan', to: "fans#update" 

  get '/heat', to: "heats#index" 
  put '/heat', to: "heats#update" 

  get '/motor', to: "motors#index" 
  put '/motor', to: "motors#update"

  post '/readings', to: "pis#create" 

  resources :crops, except: [:destroy]

  resources :settings, except: [:destroy]
  
  resources :statistics, except: [:destroy]

  resources :humidities, only: [:index, :create]

  resources :temperatures, only: [:index, :create]
  
  resources :lights, only: [:index, :create]

 
end
