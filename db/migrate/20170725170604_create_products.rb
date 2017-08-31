class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :active_ingredient, foreign_key: true
      t.string :metric
      t.decimal :dosage
      t.references :lab, foreign_key: true
      t.boolean :receipt_required
      t.string :picture_file_name
      t.boolean :active

      t.timestamps
    end
  end
end
