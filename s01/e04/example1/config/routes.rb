Rails.application.routes.draw do
  get 'home/index'

  get '/home', to: 'home#index'


  get 'home/about'

  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
