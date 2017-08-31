class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	#include CurrentCart
	#before_action :set_cart
	helper_method :current_order, :provinces_all, :location_all
	#helper_method :provinces_all, :location_all

	def current_order
        Order.find(session[:order_id])
      rescue ActiveRecord::RecordNotFound
        order = Order.new(:user_id => 1, :order_status_id => 1)
		order.save
		order.errors.full_messages
        session[:order_id] = order.id
		order
	end
 
#  def current_order
#	if !session[:order_id].nil?
#		Order.find(session[:order_id])
#	else
#		Order.new(:user_id =>1)
#	end
#  end
  
  def provinces_all
	Province.all
  end
  
  def location_all
	Location.all
  end

  
end
