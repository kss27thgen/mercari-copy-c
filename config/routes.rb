Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'toppages#index'
  get 'items/new'
  get 'items/purchase'
  resources :toppages , only: [:index, :show]
  get 'mypages/main' => 'mypages#main'
  get 'mypages/logout' => 'mypages#logout'
  get 'mypages/card' => 'mypages#card'
  get 'mypages/info' => 'mypages#info'
  get 'mypages/deliver_address'
  get 'mypages/identification'
  get 'mypages/email_password'
  get 'mypages/notification'
  get 'mypages/support'
  get 'mypages/point'
  get 'mypages/sales'
<<<<<<< HEAD
  get 'mypages/selling_item' => 'mypages#selling_item'
=======
  get 'mypages/sign_up'
>>>>>>> d5ced14ebbd0a90553de330ca8d777d3699a8708
  get 'help_center/index' => 'help_center＃index'
  root 'toppages#index'
end
