Rails.application.routes.draw do
  root controller: :products, action: :index
  resources :categories do
    resources :products
  end
end
