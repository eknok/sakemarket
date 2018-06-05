Rails.application.routes.draw do

  resources :comments, only: [:index, :create, :update, :destory]
  resources :posts, only: [:index, :show, :edit, :update, :destroy]
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root to: 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
