Rails.application.routes.draw do
  root 'beers#index'
  resources :beers do
    resource :favorite, only: [:create, :destroy]
    resources :reviews, only: [:new, :create]
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end
  resources :users, only: [:show] do
    member do
      get :following, :follower
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :profiles, only: [:edit, :update]
  resources :reviews, only: [:show] do
    resource :like, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :comments, only: [:show] do
    resource :good, only: [:create, :destroy]
  end
  resources :search, only: [:index]
  get 'detail_search', to: 'search#detail_search'
end
