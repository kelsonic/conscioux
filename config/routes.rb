Rails.application.routes.draw do
  
  resources :cosmetics_reviews
  resources :contacts
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#home'
  
end
