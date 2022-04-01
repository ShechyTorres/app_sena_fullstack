Rails.application.routes.draw do
  root "main#home"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :areas
  get 'areas/new', to: 'areas#new'
  post 'areas', to: 'areas#create'
  get 'area/:id', to: 'areas#show'
  get 'areas/:id/edit', to: 'areas#edit', as: 'edit_areas'
  patch 'area/:id', to: 'areas#update'
  delete 'area/:id', to: 'areas#delete'
  # get 'users/sessions#destroy'

  # get "users/sing_out#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
