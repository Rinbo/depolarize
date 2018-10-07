Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations', omniauth_callbacks: :omniauth_callbacks }
  root controller: :welcome, action: :index
  resources :feeds,  only: [:index]
end
