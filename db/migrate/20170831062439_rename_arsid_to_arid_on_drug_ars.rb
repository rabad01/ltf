class RenameArsidToAridOnDrugArs < ActiveRecord::Migration[5.1]
   def change
    rename_column :drug_ars, :ars_id, :ar_id
  end
end
