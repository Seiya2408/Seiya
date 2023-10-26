Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fashions

  get 'fashions/new' => 'fashions#new'
  get '/fashions' => 'fashions#top'
  get 'maps/index'
  root to: 'fashions#index'
  resources :maps, only: [:index]
end
