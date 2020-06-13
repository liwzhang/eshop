Rails.application.routes.draw do
  resources :lineitems
  resources :carts
  get 'shopper/index'

  root 'shopper#index', as: 'shopper'

  get 'shopper', to: 'shopper#index'

  resources :products

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
