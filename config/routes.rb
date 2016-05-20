Rails.application.routes.draw do
  
  resources :cosmetics_reviews
  resources :contacts
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/cosmetics', to: 'pages#choose'
  get '/request-review', to: 'pages#request_review'
  
  get '/makeup', to: 'cosmetics_reviews#makeup' 
  get '/bodybath', to: 'cosmetics_reviews#bodybath' 
  get '/hair', to: 'cosmetics_reviews#hair'
  
  resource :pages, only: [:index] do
  collection do
    post :search, to: 'pages#search'
  end
end
  
end
