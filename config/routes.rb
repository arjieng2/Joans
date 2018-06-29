Rails.application.routes.draw do
  root 'homepages#index'

  get 'users' => 'homepages#users'
  get 'settings' => 'homepages#settings'
  post 'update_settings' => 'homepages#update_settings'
  devise_for :users
end
