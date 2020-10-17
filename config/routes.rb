Rails.application.routes.draw do
  resources :offices do 
    resources :patients, only: [:new, :create, :index]
  end 

  root "sessions#index"
  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  get 'signup' => "users#new"
  post 'signup' => "users#create"


  get '/auth/:provider/callback' => "sessions#google"
  resources :patients
  resources :users
end
