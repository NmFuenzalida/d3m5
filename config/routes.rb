Rails.application.routes.draw do
  resources :series, only: [:index, :new, :create]
  resources :documentary_film, only: [:index, :new, :create]

  get 'documentary_film/index'
  get 'documentary_film/new'
  get 'documentary_film/create'
  get 'series/index'
  get 'series/new'
  get 'series/create'
  get 'movies/index'
  get 'movies/new'
  get 'movies/create'

  post 'series' => "series#create"
  post 'movies' => "movies#create"
  post 'documentary_film' => "documentary_film#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
