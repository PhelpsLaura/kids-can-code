Rails.application.routes.draw do
  devise_for :users

  resources :creations

  root to: 'pages#show'

  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
