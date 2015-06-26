Rails.application.routes.draw do
  root 'recepies#index'

  resources :recepies

end
