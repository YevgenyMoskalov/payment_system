class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.integer :country_id
      t.string :name,       null: false, default: ''
      t.string :short_name, null: false, default: ''
      t.string :post_code,  null: false, default: ''
      t.timestamps
    end
  end
end
