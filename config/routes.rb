Rails.application.routes.draw do
  get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to:'toppages#index'
  
  get 'login', to:'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  
  get 'signup', to: 'members#new'
  resources :members, only: [:index, :show, :new, :create]
  
end
