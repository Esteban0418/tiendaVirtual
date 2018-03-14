json.extract! user, :id, :documento, :NIT, :telefono, :nombre, :direccion, :celular, :ciudad, :password, :profesion, :correo, :created_at, :updated_at
json.url user_url(user, format: :json)
