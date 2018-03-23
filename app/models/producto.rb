class Producto < ActiveRecord::Base
    belongs_to :inventario
    has_many :carrito_productos
    has_many :carritos, through: :carrito_productos
end
