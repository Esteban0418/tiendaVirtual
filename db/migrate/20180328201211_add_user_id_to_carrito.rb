class AddUserIdToCarrito < ActiveRecord::Migration[5.1]
  def change
    add_column :carritos, :user, :reference
  end
end
