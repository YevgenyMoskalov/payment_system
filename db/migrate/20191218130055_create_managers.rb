class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :first_name,         null: false, default: ''
      t.string :last_name,          null: false, default: ''
      t.string :nickname,           null: false, default: ''
      t.string :email,              null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      t.timestamps
    end
  end
end
