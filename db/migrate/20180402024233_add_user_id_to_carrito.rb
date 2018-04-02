class AddUserIdToCarrito < ActiveRecord::Migration[5.1]
  def change
    add_reference :carritos, :user, foreign_key: true
  end
end
