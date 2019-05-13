Rails.application.routes.draw do
    
  #ユーザー登録機能
  # root to: "toppages#index"
  root to: 'tasks#index'
  
  #ログイン機能
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  #ユーザー登録機能
  get "signup" , to: "users#new"
  resources :users, only: [:index, :show, :new, :create]
  
  #タスクリスト
  resources :tasks
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end  
    
    
    
  
