Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, :controllers => { :confirmations => "confirmations" }
  resources :users
  resources :applications

  as :user do
    patch '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
end
