class ChangeIntegerLimitInInventarios2 < ActiveRecord::Migration[5.1]
  def change
  	 change_column :inventarios, :precio, :integer, limit: 8
  end
end
