class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :userlogin
      t.string :password
      t.text :address
      t.references :location, foreign_key: true
      t.string :cel, limit: 15
      t.string :tel, limit: 15
      t.boolean :wspp_used
      t.string :email
      t.datetime :birthdate
      t.boolean :active

      t.timestamps
    end
  end
end
