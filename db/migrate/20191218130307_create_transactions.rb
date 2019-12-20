class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :sender_id,    null: false
      t.integer :recipient_id, null: false
      t.float   :amount,       null: false, default: 0
      t.string  :status,       null: false, default: ''

      t.timestamps
    end
  end
end
