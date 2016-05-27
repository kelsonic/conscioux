Rails.application.routes.draw do
  
  post '/rate' => 'rater#create', :as => 'rate'
  root 'pages#under_construction'
  
  get '/', to: 'pages#under_construction'
  
  resources :lifestyle_posts
  resources :cosmetics_reviews
  resources :contacts
  
  get '/about', to: 'pages#about'
  get '/cosmetics', to: 'pages#choose'
  get '/blog', to: 'lifestyle_posts#index'
  get '/request-review', to: 'pages#request_review'
  get '/collaborate', to: 'pages#collaborate'
  
  get '/makeup', to: 'cosmetics_reviews#makeup' 
  get '/bodybath', to: 'cosmetics_reviews#bodybath' 
  get '/hair', to: 'cosmetics_reviews#hair'
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, :only => [:show, :edit]
  
  resource :pages, only: [:index] do
    collection do
      post :search, to: 'pages#search'
    end
  end

end
