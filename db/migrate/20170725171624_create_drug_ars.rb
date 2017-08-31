class CreateDrugArs < ActiveRecord::Migration[5.1]
  def change
    create_table :drug_ars do |t|
      t.references :drug_store, foreign_key: true
      t.references :ars, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
