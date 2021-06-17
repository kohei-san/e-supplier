Rails.application.routes.draw do
  devise_for :suppliers
  devise_for :buyers
  root to: "parts#index"
  resources :parts
  get '/parts/:id/mail', to: 'parts#mail'
  patch '/parts/:id/mail', to: 'parts#send_mail'
  resources :buyers, only: :show
  resources :suppliers, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end