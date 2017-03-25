Rails.application.routes.draw do
  root 'users#show'

  get 'auth/github', :as => 'github_auth'
  match 'auth/:provider/callback' => 'session#create', :via => [:get, :post]

  get 'session/destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
