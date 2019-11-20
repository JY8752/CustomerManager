Rails.application.routes.draw do
  # resources :orders
  # resources :customers
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :orders, only: [:new, :index, :create]
  post '/orders/save', to: 'orders#save', as: 'save_order'
  resources :customers, only: [:create]
  get '/customers/:id', to: 'customers#new', as: 'new_customer'
  # get '/customers/:id', to: 'sessions#next', as: 'customers'
  # post '/orders/:id', to: 'sessions#confirm'
  
  namespace :admin do
    resources :users
  end
  
  root to: 'top#index'
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
