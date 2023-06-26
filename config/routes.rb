Rails.application.routes.draw do
  get 'reservations/index'
  root 'home#index'
  devise_for :users
  post '/rooms/new', to:'rooms#create'
  resources :rooms
  resources :reservations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
