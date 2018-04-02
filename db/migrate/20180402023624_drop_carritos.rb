class DropCarritos < ActiveRecord::Migration[5.1]
 def up
    drop_table :carritos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
