class CreateInventarios < ActiveRecord::Migration[5.1]
  def change
    create_table :inventarios do |t|
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
