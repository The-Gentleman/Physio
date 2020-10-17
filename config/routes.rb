Rails.application.routes.draw do
  root "sessions#index"
  resources :exercises
  resources :patients
  resources :offices
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
