Rails.application.routes.draw do
  
  root 'pages#home'
  
  resources :lifestyle_posts
  resources :cosmetics_reviews
  resources :contacts
  
  get '/about', to: 'pages#about'
  get '/cosmetics', to: 'pages#choose'
  get '/lifestyle', to: 'lifestyle_posts#index'
  get '/request-review', to: 'pages#request_review'
  
  get '/makeup', to: 'cosmetics_reviews#makeup' 
  get '/bodybath', to: 'cosmetics_reviews#bodybath' 
  get '/hair', to: 'cosmetics_reviews#hair'
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  resource :pages, only: [:index] do
    collection do
      post :search, to: 'pages#search'
    end
  end
  
  resources :users do
    resource :profile
  end
  
end
