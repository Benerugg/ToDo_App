Rails.application.routes.draw do
  resources :advanced_searches
  resources :todo_lists
  devise_for :users
  get 'home/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: "todo_lists#index"
    
 
    
end
