class DestroyInventario < ActiveRecord::Migration[5.1]
  def change
    drop_table :inventarios
  end
end
