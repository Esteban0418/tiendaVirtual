ActiveAdmin.register Reporte do
  
    index do
        selectable_column
        column :user
        column "productos" do |reporte|
            reporte.productos.map{|p| p.nombre}
        end
        column :created_at, label: "Fecha"
        actions
    end

    filter :user, collection: -> {
        User.all.map{ |u| [u.email, u.id]}
    }
    filter :created_at, label: 'Fecha', as: :date_range
  end
  