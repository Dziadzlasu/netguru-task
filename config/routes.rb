Rails.application.routes.draw do
  resources :quotes, only: [:index, :new, :create]
  root to: 'quotes#index'
end
