class DrugStore < ApplicationRecord
  belongs_to :location
  belongs_to :holding
  has_many :drug_store_prices
  has_many :drug_ars
end
