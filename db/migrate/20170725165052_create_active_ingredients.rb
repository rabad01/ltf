class CreateActiveIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :active_ingredients do |t|
      t.string :description
      t.boolean :under_insurance
      t.decimal :insurance_coverage

      t.timestamps
    end
  end
end
