Rails.application.routes.draw do
  devise_for :people
  resources :users
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'sample#index'
  get 'sample/about',to:'sample#index'
  get 'abc/abc/abc',to:'sample#about'
  get 'create/abc',to:'sample#about'
  get 'create/:id',to:'sample#about'
end
