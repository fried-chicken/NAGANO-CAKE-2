Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
# 管理者
 get "/admin"=>"admin_homes#top"
 resources :admin_customers, only: [:index,:show,:edit,:update]
 resources :admin_genres, only: [:index,:edit,:create,:update]
 resources :admin_items, only: [:new,:index,:show,:edit,:create,:update]
 resources :admin_orders, only: [:show,:update] do
   resources :admin_order_details, only: [:update]
 end
 
# 会員
 get "/"=>"public_homes#top"
 get "/about"=>"public_homes#about"
 resources :public_addresses, only: [:index,:edit,:create,:update,:destroy]
 resources :public_cart_items, only: [:index,:create,:update,:destroy,:destroy_all]
 resources :public_customers, only: [:show,:edit,:update,:unsubscribe,:withdraw]
 resources :public_items, only: [:index,:show]
 resources :public_orders, only: [:new,:index,:show,:confirm,:thanks,:create]
 
end
