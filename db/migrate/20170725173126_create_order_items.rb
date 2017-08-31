class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.references :drug_store, foreign_key: true
      t.references :payment_method, foreign_key: true
      t.decimal :quantity
      t.decimal :unit_price, precision: 12, scale: 5
      t.decimal :total, precision: 12, scale: 5
      t.text :comment
      t.references :order_item_status, foreign_key: true

      t.timestamps
    end
  end
end
