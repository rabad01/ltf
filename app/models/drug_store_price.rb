class DrugStorePrice < ApplicationRecord
  belongs_to :product
  belongs_to :drug_store
  
  
  	def self.search(product_id, location_id)
		DrugStorePrice.joins(:drug_store).where("Drug_store_prices.product_id = ? and drug_stores.location_id = ?", "#{product_id}", "#{location_id}") 
	end
  
  
end
