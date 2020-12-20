Rails.application.routes.draw do
  resources :textbooks
  devise_for :users
  resources :historyborrowtables
  resources :unaffirmedbooks
  resources :searches
  resources :bookcases
  resources :departments
  resources :materials
  resources :journals
  resources :damagebooks
  resources :bookclasees
  resources :authors
  resources :presses
  resources :borrowtables
  resources :managers
  resources :books
  resources :students
  resources :textbooksearches
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
