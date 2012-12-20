UoSGeo::Application.routes.draw do
  resources :posts
  resources :qandas
  resources :users

  resources :sessions
  get 'register', to: 'users#new', as: 'register'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  
  match '/token/:token' => 'sessions#token', as: 'token'
  
  root :to => 'welcome#index'
end
