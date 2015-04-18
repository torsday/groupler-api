Rails.application.routes.draw do

  resources :projects, :only => [:create, :index, :show]
  resources :users, :only => [:index, :create]
end
