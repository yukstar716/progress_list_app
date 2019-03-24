Rails.application.routes.draw do
  # login/logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
    #get 'ideas/index'
    #get 'ideas/show'
    #get 'ideas/new'
    #get 'ideas/edit'
  root 'ideas#index'  
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end