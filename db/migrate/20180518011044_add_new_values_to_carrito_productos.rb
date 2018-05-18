class AddNewValuesToCarritoProductos < ActiveRecord::Migration[5.1]
  def change
    add_column :carrito_productos, :cantidad_productos, :integer
  end
end
