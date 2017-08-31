Rails.application.routes.draw do

  root :to => 'pages#index'

  resources :makes
  resources :models

end
