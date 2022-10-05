class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string :trans_type
      t.decimal :amount
      t.integer :act_num

      t.timestamps
    end
  end
end
