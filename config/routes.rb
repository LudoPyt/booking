Rails.application.routes.draw do
  namespace :admin do
      resources :meets
      resources :my_unavailabilities
      get 'my_bookings' => 'meets#my_bookings', as: :my_bookings
      root to: 'meets#index'
    end

resources :meets, except: [:edit, :update]


  get 'my_bookings' => 'meets#my_bookings', as: :my_bookings


  devise_for :users

  root to: 'meets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
