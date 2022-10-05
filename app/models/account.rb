class Account < ApplicationRecord
    has_many :transactions
    has_many :account_transactions
end
