class Order < ApplicationRecord
  belongs_to :user
  belongs_to :order_status
  has_many :order_items
  has_many :products, through: :order_items
  
  before_create :set_order
  before_save :update_order
  
#  around_create do
#	self.order_status_id = 1
#	self.user_id = 1
#  end
  
  
  def ordertotal
	order_items.collect{|oi| oi.valid? ? (oi.quantity* oi.unit_price):0}.sum
  
  end
  
  private
	def set_order
		#self[:order_status_id]  = 1
		#self[:user_id]  = 1
	end
  
	def update_order
		self[:total_order] = ordertotal.to_f
		self[:total_not_insured] = 0
		self[:total_insured] = 0
	end
end
