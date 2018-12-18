Rails.application.routes.draw do
  devise_for :users
  root 'toppages#index'
  get 'mypages/deliver_address' => 'mypages#deliver_address'
  get 'mypages/identification' => 'mypages#identification'
  get 'mypages/email_password' => 'mypages#email_password'
  get 'mypages/notification' => 'mypages#notification'
  get 'mypages/support' => 'mypages#support'
  get 'mypages/point' => 'mypages#point'
  get 'mypages/sales' => 'mypages#sales'
  get 'help_center/index' => 'help_center＃index'
  get 'items/itemEntry'
  get 'items/new'
  resources :toppages , only: [:index, :show]
  get 'mypages/main' => 'mypages#main'
  get 'mypages/logout' => 'mypages#logout'
  get 'mypage/card/' => 'muypage#mypage_card'
end
