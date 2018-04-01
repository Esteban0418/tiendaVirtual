class Producto < ActiveRecord::Base
    belongs_to :inventario
    has_many :carrito_productos
    has_many :carritos, through: :carrito_productos

    has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/

    def self.search(search)
      where("nombre LIKE ? OR descripcion LIKE ? OR tipo LIKE ? OR material LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
end
