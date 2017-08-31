class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :drug_store
  belongs_to :payment_method
  belongs_to :order_item_status
  
  validates :quantity, presence: true, :numericality => {:greater_than => 0}
 
  validate :product_present
  validate :order_present
  
  before_save :finalize
  
#	def unit_price
#		if persisted?
#			self[:unit_price]
#		else
#			0
#		end
#	end
  
	#def total
	#	unit_price * quantity
	#end
 
private
	def product_present
		if product.nil?
			errors.add(:product, "No es un producto valido")
		end
	end

	def order_present
		if order.nil?
			error.add(:order, "No es una orden valida")
		end
	end
	
	
	def finalize
		#self[:unit_price] = unit_price
		self[:total] = self[:quantity] * self[:unit_price]
	end
	
	
end
