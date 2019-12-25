class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.integer     :client_id
      t.string      :bills_type,      null: false, default: ''
      t.float       :amount,          null: false, default: 0
      t.float       :percent,         null: false, default: 0
      t.date        :expired_bill_at, null: false, default: ''
      t.float       :amount_limit,    null: false, default: ''

      t.float       :regular_replenishment_amount, null: false, default: 0

      t.string      :early_close_status
      t.datetime    :close_at
      t.datetime    :replenishment_at

      t.timestamps

    end
  end
end
