Rails.application.routes.draw do
  get 'feeds/index'
  root 'welcome#index'

end
