class CreateLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :labs do |t|
      t.string :name
      t.text :address
      t.string :tel, limit: 15
      t.string :cel, limit: 15
      t.string :logo_file_name
      t.boolean :active

      t.timestamps
    end
  end
end
