Rails.application.routes.draw do
  devise_for :users
  root 'root#index'
  get '/root/mypage/card/' => 'root#mypage_card'
end
