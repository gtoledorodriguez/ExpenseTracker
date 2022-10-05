class AddAccountReferenceToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :accounts, :reference
  end
end
