Rails.application.routes.draw do
  get 'movie/index'
  get 'show/:id', :to => "movie#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root "movie#index"
end
