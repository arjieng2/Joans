Rails.application.routes.draw do
  root 'homepages#index'

  get 'users' => 'homepages#users'
  get 'settings' => 'homepages#settings'

  devise_for :users
end
