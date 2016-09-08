json.extract! produto, :id, :name, :price, :description, :amount, :picture, :created_at, :updated_at
json.url produto_url(produto, format: :json)