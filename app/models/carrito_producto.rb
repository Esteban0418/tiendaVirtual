class CarritoProducto < ApplicationRecord
    belongs_to :producto
    belongs_to :carrito
end
