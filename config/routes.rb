Rails.application.routes.draw do
  devise_for :users
  root to: 'boats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:show, :index]
  get "my_boats", to: "boats#my_boats"


end
