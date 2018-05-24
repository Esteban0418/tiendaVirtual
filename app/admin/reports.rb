ActiveAdmin.register Reporte do
  
    index do
        selectable_column
        column :user
        column "Algo" do |reporte|
            reporte.productos.map{|p| p.nombre}
        end
        actions
    end

    filter :user, collection: -> {
        User.all.map{ |u| [u.email, u.id]}
    }
  end
  