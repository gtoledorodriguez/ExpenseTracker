class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :type
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
