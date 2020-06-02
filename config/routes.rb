Rails.application.routes.draw do
  # get 'spotifys/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  root to: 'spotifys#index'

  get '/spotifys', to: 'spotifys#search'
  resources :spotifys do
    collection {get "search"}
  end
end
