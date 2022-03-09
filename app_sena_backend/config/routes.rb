Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }
  # devise_for :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  root "main#home"
  # get 'users/sessions#destroy'

  # get "users/sing_out#destroy"
  # get 'main/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
