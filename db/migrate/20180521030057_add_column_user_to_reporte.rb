class AddColumnUserToReporte < ActiveRecord::Migration[5.1]
  def change
    add_reference :reportes, :user, index: true
  end
end
