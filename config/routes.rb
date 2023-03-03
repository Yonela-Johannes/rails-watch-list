Rails.application.routes.draw do
  get 'movie/index'
  get 'show/:id', :to => "movie#show", :as => :show

  post 'create', :to => "movie#create"
  get 'new', :to => "movie#new", :as => :new
  root "movie#index"
  # list methods
  get 'list', :to => "list#index", :as => :list_index
  get 'list/show/:id', :to => "list#show", :as => :list_show
end
