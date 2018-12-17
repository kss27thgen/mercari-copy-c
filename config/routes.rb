Rails.application.routes.draw do
  devise_for :users
  root 'roots#index'
  get 'mypages/deliver_address' => 'mypages#deliver_address'
  get 'mypages/identification' => 'mypages#identification'
  get 'mypages/email_password' => 'mypages#email_password'
  get 'mypages/notification' => 'mypages#notification'
  get 'mypages/support' => 'mypages#support'
  get 'mypages/point' => 'mypages#point'
  get 'mypages/sales' => 'mypages#sales'
  get 'help_center/index' => 'help_center＃index'
  get 'items/new'

end


