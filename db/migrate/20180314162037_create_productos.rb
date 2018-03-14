class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tipo
      t.string :material
      t.string :dimenciones
      t.string :color
      t.integer :peso
      t.integer :precio

      t.timestamps
    end
  end
end
