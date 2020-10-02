Rails.application.routes.draw do
  root 'beers#index'
  resources :beers do
    resource :favorite, only: [:create, :destroy]
    resources :reviews, only: [:create]
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end
  resources :users, only: :show
  resources :reviews, only: [:show] do
    resource :like, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :comments, only: [:show] do
    resource :good, only: [:create, :destroy]
  end
end
