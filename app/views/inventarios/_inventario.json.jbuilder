json.extract! inventario, :id, :cantidad, :created_at, :updated_at
json.url inventario_url(inventario, format: :json)
