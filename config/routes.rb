Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trekkings, only: %i[index create new] do
    resources :orders, only: %i[index new create]
  end

  get "my_orders", to: "orders#my", as: "my_orders"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
