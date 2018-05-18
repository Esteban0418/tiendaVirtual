class Producto < ActiveRecord::Base
    after_validation :create_inventario
    belongs_to :inventario, optional: true
    has_many :carrito_productos
    has_many :carritos, through: :carrito_productos

    has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/

    def self.search(search)
      where("nombre LIKE ? OR descripcion LIKE ? OR tipo LIKE ? OR material LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
    end

    def create_inventario
      inventario = Inventario.new(cantidad: self.cantidad, precio: self.precio* self.cantidad)
      inventario.save
      self.inventario = inventario
    end
     def sumar_cantidad
    cantidad = Producto.carrito_productos.cantidad_productos+1
    Producto.carrito_productos.cantidad_productos.save
    self.carrito_productos.cantidad_productos = cantidad
  end
end
