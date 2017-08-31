Rails.application.routes.draw do

	resources :order_item, only: [:create, :update, :destroy]
	resources :order, only: [:show]
	resources :product, only: [:index, :show]

  get 'pages/about'
  get 'pages/home'
  get 'order/show'
  
  put 'order_item/create'
  post 'order_item/create'
  get 'order_item/create'
  
  put 'order_item/destroy'
  post 'order_item/destroy'
  get 'order_item/destroy'
  delete 'order_item/destroy'
  
  root 'pages#home', layout: 'pages'
 end
