class AddCardAceptedToDrugStore < ActiveRecord::Migration[5.1]
  def change
    add_column :drug_stores, :card_acepted, :boolean
  end
end
