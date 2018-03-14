json.extract! producto, :id, :nombre, :descripcion, :tipo, :material, :dimenciones, :color, :peso, :created_at, :updated_at
json.url producto_url(producto, format: :json)
