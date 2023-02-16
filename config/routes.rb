Rails.application.routes.draw do
  post '/api-keys', to: 'api_keys#create'
  delete '/api-keys', to: 'api_keys#destroy'
  get '/api-keys', to: 'api_keys#index'

  post '/votes', to: 'votes#create'
  get '/votes', to: 'votes#index'
  get '/votes/:id', to: 'votes#show'
  patch '/votes/:id', to: 'votes#update'
  delete '/votes/:id', to: 'votes#destroy'
  
  post '/locations', to: 'locations#create'
  get '/locations', to: 'locations#index'
  get '/locations/:id', to: 'locations#show'
  patch '/locations/:id', to: 'locations#update'
  delete '/locations/:id', to: 'locations#destroy'
  
  post '/users', to: 'users#create'
  get '/users', to: 'users#index'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  
end
