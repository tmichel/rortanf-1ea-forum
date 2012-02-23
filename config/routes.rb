Forum::Application.routes.draw do
  root :to => "topics#index"
  resources :topics do
    resources :posts
  end
  
  get 'signup' => "users#new", :as => :signup
  post 'signup' => "users#create"
  
  get 'login' => "sessions#new", :as => :login
  post 'login' => "sessions#create"
  
  delete 'logout' => "sessions#destroy", :as => :logout
  
end
