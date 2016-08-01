Rails.application.routes.draw do

  root 'pages#home'

  get '/about', to: 'pages#about'
  get '/contact', to: 'contacts#new'
  get '/request-review', to: 'pages#request_review'

  resources :contacts, only: [:create]

  resources :categories, except: [:destroy] do
    resources :products, except: [:index, :destroy] do
      resources :reviews
    end
  end

  devise_for :users, controllers: { registrations: 'registrations' }
  
  resources :profiles, only: [:show, :edit, :update]

  resources :posts

end
