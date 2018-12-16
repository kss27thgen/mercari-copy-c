Rails.application.routes.draw do
  devise_for :users
  root 'root#index'
  get 'mypages/deliver_address' => 'mypages#deliver_address'
  get 'mypages/identification' => 'mypages#identification'
  get 'mypages/email_password' => 'mypages#email_password'
  get 'mypages/support' => 'mypages#support'
  get 'mypages/point' => 'mypages#point'
  get 'mypages/sales' => 'mypages#sales'
end


