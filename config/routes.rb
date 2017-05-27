Rails.application.routes.draw do
  namespace :admin do
    resource :products
  end
  root 'welcome#index'
end
