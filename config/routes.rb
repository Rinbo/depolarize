Rails.application.routes.draw do
  get 'feed/index'
  root 'welcome#index'

end
