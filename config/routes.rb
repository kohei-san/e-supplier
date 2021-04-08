Rails.application.routes.draw do
  devise_for :suppliers
  devise_for :buyers
  root to: "parts#index"
  resources :parts, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
