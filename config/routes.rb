Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # config/routes.rb

resources :tasks, only: [:index, :show, :create, :update, :destroy]
resources :projects, only: [:index, :show, :create, :update, :destroy]
resources :boards, only: [:index, :show, :create, :update, :destroy]


end
