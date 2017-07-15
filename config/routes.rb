Rails.application.routes.draw do
  resource :main, only: [:index]
  resources :categories, only: [:show]

  root 'main#index'
end
