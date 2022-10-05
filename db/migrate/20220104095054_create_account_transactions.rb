class CreateAccountTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :account_transactions do |t|
      t.datetime :date
      t.string :trans_type
      t.decimal :amount
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
