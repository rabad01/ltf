class AddUseInsuranceToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :use_insurance, :boolean
  end
end
