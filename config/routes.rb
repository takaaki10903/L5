Rails.application.routes.draw do
  
  
  resources :users
  resources :tweets
  #resources :likes
  
  #root 'users#index'
  #root 'tweets#index'
  root 'top#main'
    
  post 'top/login'
    
  get  'top/main'
  get  'top/logout'
  get  'top/error'
  get 'top/rock'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
