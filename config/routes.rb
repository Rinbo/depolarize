Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations' }
  root controller: :welcome, action: :index
  resources :feeds,  only: [:index]
end
