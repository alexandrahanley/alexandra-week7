Rails.application.routes.draw do


  get '/signup' => 'registrations#new'
  post '/signup' => 'registrations#create'
  get '/signin' => 'authentication#new'
  post '/signin' => 'authentication#create'
  get '/signout' => 'authentication#destroy'


  root 'courses#index'
  resources :courses
  resources :users
end
