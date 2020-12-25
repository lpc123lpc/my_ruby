Rails.application.routes.draw do
  resources :managers
  resources :lostbooks
  resources :textbooks
  devise_for :users
  resources :historyborrowtables
  resources :unaffirmedbooks
  resources :searches
  resources :materials
  resources :journals
  resources :damagebooks
  resources :borrowtables
  resources :books
  resources :students
  resources :textbooksearches
  root 'books#index'
  get '/statistics', to: "statistics#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
