Rails.application.routes.draw do
  root controller: :products, action: :index
  resources :products
end
