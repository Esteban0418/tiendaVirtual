class ChangeIntegerLimitInProductos2 < ActiveRecord::Migration[5.1]
  def change
  	change_column :productos, :cantidad, :integer, limit: 8
  end
end
