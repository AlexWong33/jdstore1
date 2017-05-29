Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resource :products
  end
  root 'welcome#index'
end
