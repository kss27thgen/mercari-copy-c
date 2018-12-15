Rails.application.routes.draw do
  devise_for :users
  root 'root#index'
  get 'root/task1' => 'root#task1'
end
