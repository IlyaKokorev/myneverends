Rails.application.routes.draw do
  resources :compliments

  root 'compliments#index'
end
