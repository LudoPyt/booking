Rails.application.routes.draw do

resources :meets, except: [:edit, :update]

namespace :admin do
    resources :meets
    resources :my_unavailabilities
    get 'my_bookings' => 'meets#my_bookings', as: :my_bookings
  end

  get 'my_bookings' => 'meets#my_bookings', as: :my_bookings


  devise_for :users

  root to: 'meets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
