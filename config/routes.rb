Rails.application.routes.draw do
  post '/api-keys', to: 'api_keys#create'
  delete '/api-keys', to: 'api_keys#destroy'
  get '/api-keys', to: 'api_keys#index'

  patch '/votes/:id', to: 'votes#update'
  post '/votes', to: 'votes#create'
  delete '/votes', to: 'votes#destroy'
  get '/votes', to: 'votes#index'
  get '/votes/:id', to: 'votes#show'
  
  post '/locations', to: 'locations#create'
  delete '/locations', to: 'locations#destroy'
  get '/locations', to: 'locations#index'
  get '/locations/:id', to: 'locations#show'
  patch '/locations/:id', to: 'locations#update'
  

  
end
