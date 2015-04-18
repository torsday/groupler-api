Rails.application.routes.draw do

  root 'users#index'

  resources :users,    :only => [:create]
  resources :projects, :only => [:create, :index, :show]
end
