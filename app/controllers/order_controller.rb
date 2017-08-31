class OrderController < ApplicationController

  def show
	#@order = Order.find(param[:order_id])
  
	@order_items = current_order.order_items
	
	#@Drug_distinct = current_order.order_items.select(:drug_store_id).distinct
	
	@Drug_distinct = current_order.order_items.select(:drug_store_id, "SUM(total) as total").group(:drug_store_id)
	
  end
  
end
