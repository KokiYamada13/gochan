Rails.application.routes.draw do
  root 'home#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users

  get 'text', to: 'topics#new'
  post 'text', to: 'topics#create'
  resources :topics

  get 'response', to: 'responses#new'
  resources :responses, only: [:new, :create]
end
