Rails.application.routes.draw do
  resources :offices, only: [:show] 
  resources :offices do 
    resources :patients, only: [:index, :new, :create]
  end 
  resources :patients, except: [:index, :new, :create]

  
  get 'select' => "offices#select"
  post 'select' => "offices#show"
  
  root "sessions#index"
  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  get '/auth/:provider/callback' => "sessions#google"
  
  get 'signup' => "users#new"
  post 'signup' => "users#create"
  
  resources :exercises
  resources :users
end
