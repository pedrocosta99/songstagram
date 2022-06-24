Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'posts#index'

  resources :likes, only: %i[create destroy]

  get "home", to: "pages#home", as: "home"
  get "profile", to: "pages#profile", as: "profile"
  get "about", to: "pages#about", as: "about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
