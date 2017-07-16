Rails.application.routes.draw do
  devise_for :users
  resource :main, only: [:index]
  resources :categories, only: [:show]

  root 'main#index'
end
