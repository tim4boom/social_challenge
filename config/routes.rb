Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :challenges do
    member do
      put "like" => "challenges#like"
    end
    # resources :own_content_comments, only: [:index, :new, :create, :show]
    # resources :favourites, only: [:new, :create,:destroy]
  end

  get '/suggest', to: 'pages#suggest'
  get '/about', to: 'pages#about'

  resources :users, only: [:show, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
