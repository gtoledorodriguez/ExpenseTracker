class Account < ApplicationRecord
    validates :type, presence: true
    validates :balance, presence:true
end
