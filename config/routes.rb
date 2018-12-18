Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root 'root#index'
  get '/root/mypage/card/' => 'root#mypage_card'
=======
  root 'toppages#index'
  get 'mypages/deliver_address' => 'mypages#deliver_address'
  get 'mypages/identification' => 'mypages#identification'
  get 'mypages/email_password' => 'mypages#email_password'
  get 'mypages/notification' => 'mypages#notification'
  get 'mypages/support' => 'mypages#support'
  get 'mypages/point' => 'mypages#point'
  get 'mypages/sales' => 'mypages#sales'
  get 'help_center/index' => 'help_center＃index'
  get 'items/new'
  get 'mypages/main' => 'mypages#main'
>>>>>>> be70a77ef12045bb9a392e68c77cbf91bbeb5f7a
end
