Rails.application.routes.draw do
  root 'courses#index'
  resources :courses
  resources :users
end
