class ChangeIntegerLimitInProductos < ActiveRecord::Migration[5.1]
  def change
  	change_column :productos, :precio, :integer, limit: 8
  end
end
