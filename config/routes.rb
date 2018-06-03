Rails.application.routes.draw do
  root to: 'toppages#index'
  get  'tasks/:id', to: 'tasks#edit'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'members#new'
  resources :members, only: [:index, :show, :new, :create]
  resources :tasks, only: [:create, :edit, :destroy, :update]
  
end

