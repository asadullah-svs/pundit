Rails.application.routes.draw do
  resources :posts do
    collection do
      get '/users_posts', to: 'posts#user_posts', as: :user
    end
  end
  root to: 'posts#index'

  resources :users, only: [:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
