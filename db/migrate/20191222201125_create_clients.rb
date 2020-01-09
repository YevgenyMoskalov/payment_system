class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients, &:timestamps
  end
end
