Rails.application.routes.draw do
  root 'beer#index'
  devise_for :users
end
