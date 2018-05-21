class CreateTableProductosReportes < ActiveRecord::Migration[5.1]
  def change
    create_table :productos_reportes do |t|
      t.belongs_to :producto, index: true
      t.belongs_to :reporte, index: true
    end
  end
end
