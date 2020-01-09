class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name,       null: false, default: ''
      t.string :short_code, null: false, default: ''
      t.string :phone_code, null: false, default: ''
      t.timestamps
    end
  end
end
