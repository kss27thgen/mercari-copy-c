Rails.application.routes.draw do
  devise_for :users
  root 'root#index'
  get 'root/mypage' => 'root#mypage'
end
