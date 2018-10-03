Rails.application.routes.draw do
  root controller: :welcome, action: :index
  resources :feeds,  only: [:index]
end
