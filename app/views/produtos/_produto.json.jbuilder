json.extract! produto, :id, :name, :price, :description, :amount, :picture, :code, :created_at, :updated_at
json.url produto_url(produto, format: :json)
