Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#index'

  get 'my_protfolio', to: 'users#my_portfolio'
end
