Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'members#new'
  resources :members, only: [:index, :show, :new, :create]
  
  resources :tasks, only: [:create, :destroy]
end
