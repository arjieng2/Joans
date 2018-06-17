Rails.application.routes.draw do
  root 'homepages#index'
  devise_for :users
end
