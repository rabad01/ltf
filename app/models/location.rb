class Location < ApplicationRecord
  belongs_to :community
  
  
  	def self.search(search)
		Location.joins(:community).where("communities.province_id = ?", "#{search}") 
	end
  
  
end
