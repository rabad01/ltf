class CreateDrugStorePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :drug_store_prices do |t|
      t.references :product, foreign_key: true
      t.references :drug_store, foreign_key: true
      t.decimal :price, precision: 12, scale: 5
      t.boolean :active

      t.timestamps
    end
  end
end
