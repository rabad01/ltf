class Product < ApplicationRecord
  belongs_to :active_ingredient
  belongs_to :lab
  has_many :drug_store_prices
  has_many :order_items
 
  
  validates :name, presence: true
  
#	def self.search(search)
#		Product.joins(:active_ingredient).where("(name like ? or active_ingredients.description like ?) and products.active = true", "%#{search}%", "%#{search}%") 
#	end

	#postgress ilike
	def self.search(search)
		Product.joins(:active_ingredient).where("(name ilike ? or active_ingredients.description ilike ?) and products.active = true", "%#{search}%", "%#{search}%") 
	end


	
end
