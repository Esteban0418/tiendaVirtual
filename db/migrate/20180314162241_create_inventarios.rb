class CreateInventarios < ActiveRecord::Migration[5.1]
  def change
    create_table :inventarios do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
