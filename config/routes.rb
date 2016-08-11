Rails.application.routes.draw do
  get '/light', to: "lights#show" 
  put '/light', to: "lights#update" 
end
