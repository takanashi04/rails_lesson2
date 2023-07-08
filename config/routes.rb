Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  post '/reservations/confirm', to: 'reservations#confirm'
  resources :rooms, :reservations

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
