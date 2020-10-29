Rails.application.routes.draw do
  root "sessions#index"

  resources :offices, only: [:show]  do 
    resources :patients, only: [:index, :new, :create]
  end 
  get 'select' => "offices#select"
  post 'select' => "offices#show"

  resources :patients, except: [:index, :new, :create] do 
    resources :exercises, only: [:index, :new, :create]
  end 

  resources :exercises, except: [:index, :new, :create]
   
  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  get '/auth/:provider/callback' => "sessions#google"
  
  get 'signup' => "users#new"
  post 'signup' => "users#create"
  
  resources :users
end
