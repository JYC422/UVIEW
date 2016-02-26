Rails.application.routes.draw do
  root "users#index"
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :restaurants do
    resources :reviews, shallow: true
  end

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
