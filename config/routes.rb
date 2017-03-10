Rails.application.routes.draw do
  resources :images
  resources :chordatum, :only => [:index, :new, :create, :update, :show]
  resources :species
  resources :biome, :only => [:index, :create, :show]

  get 'home' => 'pages#home', as: 'home'
  get 'search' => 'pages#search', as: 'search'
  get 'search_results' => 'pages#search_results', as: 'search_results'

  root to: 'pages#landing'

end
