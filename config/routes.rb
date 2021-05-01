Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :show ]
end
