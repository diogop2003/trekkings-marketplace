Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trekkings, only: %i[create new] do
    resources :orders, only: %i[index new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
