Rails.application.routes.draw do
  namespace :admin do
      resources :meets
      resources :my_unavailabilities
      get 'my_bookings' => 'meets#my_bookings', as: :my_bookings
      root to: 'meets#calendars'
    end

  resources :meets, except: [:edit, :update]

  get '/calendars', to: 'meets#calendars', as: 'calendars'
  get '/redirect', to: 'meets#redirect', as: 'redirect'
  get '/callback', to: 'meets#callback', as: 'callback'
  get 'my_bookings' => 'meets#my_bookings', as: :my_bookings
  get '/events/:calendar_id', to: 'meets#events', as: 'events', calendar_id: /[^\/]+/
  post '/events/:calendar_id', to: 'meets#new_event', as: 'new_event', calendar_id: /[^\/]+/ 

  devise_for :users

  root to: 'meets#calendars'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
