class ProductController < ApplicationController

  def index
	  if params[:search]
		@Product = Product.search(params[:search]).order("name").first(50)
		@search = params[:search]
	  else
		@Product = Product.all.order('name').first(50)
		#raise "Por favor, debe digitar el medicamento que busca!"
	  end

	  if !params[:province].nil?
		session[:prov_search] = params[:province]
	  end
	  
	  if !params[:location].nil?
		session[:loc_search] = params[:location]
	  end

	  
	  #@order_item = current_order.order_item.new
	  
	  #@provinces = Province.all
  end

  def show
	@Product_show = Product.find(params[:id])
	
	#DrogStorePriceController.List_price(params[:product_id],params[:location_id])

	 @DrugStorePrice = DrugStorePrice.search(params[:id], params[:location_id])

	 
	 @order_item = current_order.order_items.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
