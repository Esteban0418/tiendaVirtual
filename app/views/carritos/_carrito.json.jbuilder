json.extract! carrito, :id, :cantidad_productos, :created_at, :updated_at
json.url carrito_url(carrito, format: :json)
