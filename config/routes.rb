Rails.application.routes.draw do
  resources :offices do 
    resources :patients, only: [:index, :new, :create]
  end 
  root "sessions#index"
  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  get '/auth/:provider/callback' => "sessions#google"

  get 'signup' => "users#new"
  post 'signup' => "users#create"

  resources :patients
  resources :users
end
