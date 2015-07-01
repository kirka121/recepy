Rails.application.routes.draw do
  root 'recepies#index'

  resources :recepies do
    collection do
      get '/categorized/:id', to: 'recepies#show_categorized', as: 'show_categorized'
    end
  end

  resources :categories
end
