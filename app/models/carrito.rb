class Carrito < ApplicationRecord
	belongs_to :user 
    has_many :carrito_productos
    has_many :productos, through: :carrito_productos
end
