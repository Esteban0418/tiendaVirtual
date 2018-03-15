class CreateCarritoProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :carrito_productos do |t|
      t.references :carrito
      t.references :producto
      t.timestamps
    end
  end
end
