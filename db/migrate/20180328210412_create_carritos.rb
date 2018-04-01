class CreateCarritos < ActiveRecord::Migration[5.1]
  def change
    create_table :carritos do |t|
      t.integer :cantidad_productos
    end
  end
end
