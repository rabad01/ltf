class AddCashAceptedToDrugStore < ActiveRecord::Migration[5.1]
  def change
    add_column :drug_stores, :cash_acepted, :boolean
  end
end
