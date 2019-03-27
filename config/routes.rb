Rails.application.routes.draw do
  
  root 'pages#home'
  
  resources :users
  resources :stream_packages
  resources :channels
  
  get 'signup', to: 'users#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'channels', to: 'channels#index'
  get 'new_channels', to: 'channels#new'
  get 'packages', to: 'stream_packages#index'
  get 'new_packages', to: 'stream_packages#new'
  get 'home', to: 'pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  # get 'logout', to: 'sessions#destroy', as: 'logout'
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # get 'signin', to: 'signin#show', as: 'signin'
  #get 'home', to: 'home#show', as: 'home'
  #post 'home', to: 'home#show'
  get 'user/input', to: 'user#input'
  post 'user/recommendation', to: 'user#recommendation', as: 'recommendation'


end
