Rails.application.routes.draw do

  get 'auth/github', :as => 'github_auth'
  match 'auth/:provider/callback' => 'session#create', :via => [:get, :post]

  get 'session/destroy'

  resources 'users', only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'associations#new'
  resources 'associations', only: [:new, :create] do
    resources 'games', only: [:show, :new, :create]
  end
  get '/logout', to: 'sessions#destroy', as: 'logout'
  root  "games#index", :as => 'welcome_suckes'
end
