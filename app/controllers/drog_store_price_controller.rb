class DrogStorePriceController < ApplicationController


	def self.List_price(product_id,location_id)
		@DrugStorePrice  =	DrugStorePrice.search(product_id, location_id)
	end
end
