class AddUuidNumberColumnToBills < ActiveRecord::Migration[5.2]
  enable_extension 'pgcrypto' unless extension_enabled?('pgrcypto')
  def change
    add_column :bills, :uuid, :uuid, default: 'gen_random_uuid()', null: false
  end
end
