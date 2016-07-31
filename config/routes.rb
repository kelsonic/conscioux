Rails.application.routes.draw do

  root 'pages#home'

  get '/about', to: 'pages#about'

  resources :contacts, only: [:new, :create]

  resources :categories, except: [:destroy] do
    resources :products, except: [:index, :destroy] do
      resources :reviews
    end
  end

  devise_for :users, controllers: { registrations: 'registrations' }
  
  resources :profiles, only: [:show, :edit, :update]

  resources :posts

end
