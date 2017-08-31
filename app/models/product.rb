class Product < ApplicationRecord
  belongs_to :active_ingredient
  belongs_to :lab
  has_many :drug_store_prices
  has_many :order_items
 
  
  validates :name, presence: true
  
	def self.search(search)
		Product.joins(:active_ingredient).where("(name LIKE ? or active_ingredients.description like ?) and products.active = true", "%#{search}%", "%#{search}%") 
	end
  
end
