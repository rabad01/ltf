class OrderItemController < ApplicationController

  def create
  
	@order_one = current_order
	
	if @order_one.order_items.where('product_id = ? and drug_store_id = ?', order_item_params[:product_id], order_item_params[:drug_store_id]).blank?
	
		@order = current_order
		@order_item = @order.order_items.new(order_item_params)
		@order_item.save

		#@order_item.errors.full_messages

		session[:order_id] = @order.id
		redirect_to product_path(:id => session[:Prod_id], :location_id => session[:loc_search])
		
		flash[:notice] = @order_item.product.name + " agregado al carrito..."
		#flash[:notice] = "Existe..."

	else
		redirect_to product_path(:id => session[:Prod_id], :location_id => session[:loc_search])
		flash[:notice] = "Producto ya fue seleccionado para esta farmacia."

	end
	
	#flash[:notice] = :product_id.to_s+' Drug:'+ :drug_store_id.to_s
	
  end

  def update
	@order = current_order
	@order_item = @order.order_items.find(params[:id])
	
	nombre = @order_item.product.name
	
	@order_item.update_attributes(order_item_params)
	@order_items = @order.order_items
	
	redirect_to order_show_path
	
	flash[:notice] = "Cantidad de "+nombre + " actualizada."
	
  end

  def destroy
	@order = current_order
	@order_item = @order.order_items.find(params[:id])

	nombre = @order_item.product.name
	farma = @order_item.drug_store.name
	
	@order_item.destroy
	@order_items = @order.order_items
	
	redirect_to order_show_path
	
	flash[:notice] = nombre + " de "+farma+" eliminado del carrito..."
  end
  
private
	def order_item_params
		params.require(:order_item).permit(:product_id, :drug_store_id, :quantity, :unit_price, :payment_method_id, :comment, :order_item_status_id, :use_insurance)
	end

end
