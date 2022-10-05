json.extract! transaction, :id, :date, :trans_type, :amount, :act_num, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
