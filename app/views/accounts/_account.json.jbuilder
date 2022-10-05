json.extract! account, :id, :act_name, :act_num, :act_type, :balance, :created_at, :updated_at
json.url account_url(account, format: :json)
