Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  namespace :admin do
    resources :users
  end
    #get 'ideas/index'
    #get 'ideas/show'
    #get 'ideas/new'
    #get 'ideas/edit'
  root 'ideas#index'  
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end