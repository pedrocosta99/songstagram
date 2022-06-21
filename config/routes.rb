Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'posts#index'

  get "home", to: "pages#home", as: "home"
  get "profile", to: "pages#profile", as: "profile"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
