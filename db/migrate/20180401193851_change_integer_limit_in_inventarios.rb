class ChangeIntegerLimitInInventarios < ActiveRecord::Migration[5.1]
  def change
  	 change_column :inventarios, :cantidad, :integer, limit: 4
  end
end
