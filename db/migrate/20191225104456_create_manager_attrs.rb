class CreateManagerAttrs < ActiveRecord::Migration[5.2]
  def change
    create_table :manager_attrs do |t|
      t.string  :first_name,         null: false, default: ''
      t.string  :last_name,          null: false, default: ''
      t.string  :nickname,           null: false, default: ''
      t.integer :manager_id
      t.timestamps
    end
  end
end
