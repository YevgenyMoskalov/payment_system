class CreateManagerNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :manager_notifications do |t|
      t.text    :message, null: false, default: ''
      t.integer :manager_id
      t.integer :bill_id

      t.timestamps
    end
  end
end
