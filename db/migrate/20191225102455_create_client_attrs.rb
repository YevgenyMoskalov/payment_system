class CreateClientAttrs < ActiveRecord::Migration[5.2]
  def change
    create_table :client_attrs do |t|
      t.string  :first_name,         null: false, default: ''
      t.string  :last_name,          null: false, default: ''
      t.date    :birthday,           null: false, default: ''
      t.string  :gender,             null: false, default: ''
      t.integer :city_id
      t.integer :client_id

      t.timestamps
    end
  end
end
