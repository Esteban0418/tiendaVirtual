class Carrito < ApplicationRecord
	belongs_to :user 
    has_many :carrito_productos
    has_many :productos, through: :carrito_productos

    def restar_productos
        reporte = Reporte.new
        self.carrito_productos.each do |carrito_producto|
            producto = carrito_producto.producto
            inventario = producto.inventario
            reporte.productos << producto
            producto.cantidad = producto.cantidad - 1
            inventario.cantidad = producto.cantidad
            producto.save
            inventario.save
        end
        reporte.user = self.user
        reporte.save
    end

    def sumar_productos
        suma_productos = 0
        self.carrito_productos.each do |carrito_producto|
            producto = carrito_producto.producto
            suma_productos = producto.precio + suma_productos
        end
        suma_productos
    end
    
end
