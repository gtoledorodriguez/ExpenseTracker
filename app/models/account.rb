class Account < ApplicationRecord
    validates :act_number, presence: true
    validates :act_type, presence: true
    validates :balance, presence:true
end
