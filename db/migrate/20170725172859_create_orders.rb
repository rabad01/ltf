class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :order_status, foreign_key: true
      t.decimal :total_insured, precision: 12, scale: 5
      t.decimal :total_not_insured, precision: 12, scale: 5
      t.decimal :total_order, precision: 12, scale: 5
      t.text :comment

      t.timestamps
    end
  end
end
