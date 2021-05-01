Rails.application.routes.draw do
  devise_for :users, :controllers { :sessions => "sessions" }
  root to: 'pages#home'
  resources :bikes
  get 'dashboard', to: 'bikes#dashboard', as: 'dashboard'
  get 'profile', to: 'users#profile', as: 'profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
