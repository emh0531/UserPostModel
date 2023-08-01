Rails.application.routes.draw do
  resources :users, only: [:create] #user can create posts
  resources :posts, only: [:create, :index] #posts can be created and indexed 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
