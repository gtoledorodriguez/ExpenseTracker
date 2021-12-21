class Transaction < ApplicationRecord
    validates :type, presence: true
    validates :amount, presence: true
    validates :date, presence: true
end
