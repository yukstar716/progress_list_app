Rails.application.routes.draw do
  get 'ideas/index'
  get 'ideas/show'
  get 'ideas/new'
  get 'ideas/edit'
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
