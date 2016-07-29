Rails.application.routes.draw do

  root 'pages#home'

  get '/about', to: 'pages#about'

  resources :contacts, only: [:new]

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  devise_for :users
  resources :profiles

  resources :posts

end
