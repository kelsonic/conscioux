Rails.application.routes.draw do
  
  # Refactored
  root 'pages#home'

  get '/about', to: 'pages#about'

  get '/contact', to: 'contacts#new'

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  resources :users, except: [:index] do
    resources :profiles
  end

  resources :posts

end
