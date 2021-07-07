Rails.application.routes.draw do
  devise_for :members, :controllers => { registrations: "registrations" }
  resources :posts
  resources :likes, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
end
