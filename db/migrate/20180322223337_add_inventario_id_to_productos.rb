class AddInventarioIdToProductos < ActiveRecord::Migration[5.1]
  def change
    add_reference :productos, :inventario, foreign_key: true
  end
end
