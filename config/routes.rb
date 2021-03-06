Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  resources :creations

  root to: 'pages#lesson_space'

  get '/sandbox', to: 'pages#sandbox'

  get '/lesson_space', to: 'pages#lesson_space'


  resources :pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
