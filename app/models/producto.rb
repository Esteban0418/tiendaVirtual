class Producto < ActiveRecord::Base
    belongs_to :inventario
    has_many :carrito_productos
    has_many :carritos, through: :carrito_productos
    def self.search(search)
  where("nombre LIKE ? OR descripcion LIKE ? OR tipo LIKE ? OR material LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
end
end
