class CreateCarritos < ActiveRecord::Migration[5.1]
  def change
    create_table :carritos do |t|
    	t.text :cantidad_producto
 
      t.timestamps
    end
  end
end
