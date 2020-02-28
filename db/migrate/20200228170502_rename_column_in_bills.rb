class RenameColumnInBills < ActiveRecord::Migration[5.2]
  def change
    rename_column :bills, :client_id, :client_attr_id
  end
end
