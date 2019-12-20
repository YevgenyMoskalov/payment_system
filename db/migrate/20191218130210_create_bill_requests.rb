class CreateBillRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_requests do |t|
      t.integer  :manager_id
      t.integer  :bill_id
      t.datetime :approved_at,     null: false, default: ''
      t.string   :approved_status, null: false, default: ''
      t.text     :message,         null: false, default: ''
      t.timestamps
    end
  end
end