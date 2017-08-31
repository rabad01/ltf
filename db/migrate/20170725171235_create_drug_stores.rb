class CreateDrugStores < ActiveRecord::Migration[5.1]
  def change
    create_table :drug_stores do |t|
      t.string :name
      t.text :address
      t.references :location, foreign_key: true
      t.string :tel1, limit: 15
      t.string :tel2, limit: 15
      t.string :cel, limit: 15
      t.string :email
      t.string :contact
      t.time :hour_open_regular
      t.time :hour_close_regular
      t.string :days_regular
      t.time :hour_open_other
      t.time :hour_close_other
      t.string :days_other
      t.string :logo_file_name
      t.string :store_type
      t.references :holding, foreign_key: true

      t.timestamps
    end
  end
end
