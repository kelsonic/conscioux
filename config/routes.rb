Rails.application.routes.draw do
  
  root 'pages#home'

  get '/about', to: 'pages#about'

  get '/contact', to: 'contacts#new'

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  resources :users do
    resources :profiles
  end

  resources :posts

end
