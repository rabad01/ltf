class CreateArs < ActiveRecord::Migration[5.1]
  def change
    create_table :ars do |t|
      t.string :name
      t.text :address
      t.string :tel, limit: 15
      t.string :cel, limit: 15
      t.boolean :active

      t.timestamps
    end
  end
end
