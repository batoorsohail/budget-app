Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :groups, path: 'categories', only: %i[index show new create edit update destroy] do
      resources :entries, path: 'transactions', only: %i[index show new create edit update destroy]
    end
  end

  root 'splash#index'
end
