json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :source_id, :destination_id, :amount, :comment
  json.url transaction_url(transaction, format: :json)
end
