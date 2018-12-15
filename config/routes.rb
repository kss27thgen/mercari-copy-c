Rails.application.routes.draw do
  devise_for :users
  root 'root#index'
  get 'root/deliver_address' => 'root#deliver_address'
end

