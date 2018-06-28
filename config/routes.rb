Rails.application.routes.draw do

  get 'me/show'
  get 'me/new'
  get 'me/create'
  get 'me/edit'
  get 'me/update'
  get 'me/destroy'
  get 'meets/index'
  get 'meets/show'
  get 'meets/new'
resources :meets, except: [:edit, :update]

namespace :admin do
    resources :meets
    resources :me, except: [:index]
  end

  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
