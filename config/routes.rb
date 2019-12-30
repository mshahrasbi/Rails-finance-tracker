Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#index'

  get 'my_protfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'

  resources :user_stocks, only: [:create, :destroy]
end
