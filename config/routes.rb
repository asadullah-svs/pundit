Rails.application.routes.draw do
  resources :posts
  root to: 'posts#index'

  resources :users, only: [:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
