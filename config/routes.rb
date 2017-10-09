Rails.application.routes.draw do


  root 'users#new'
  get  '/welcome',  to: 'welcome#show'
get  'users/:nick_name',  to: 'welcome#show'
post '/signup',  to: 'users#create'
resources :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
