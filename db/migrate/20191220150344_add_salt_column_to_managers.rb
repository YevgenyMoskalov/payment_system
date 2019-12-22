class AddSaltColumnToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :salt, :string
  end
end
