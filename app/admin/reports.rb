ActiveAdmin.register Reporte do
  
    index do
        column "Algo" do |reporte|
            reporte.productos.map{|p| p.nombre}
        end
    end
  
    filter :email
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :foto
        f.input :nombre
        f.input :descripcion
        f.input :tipo
        f.input :material
        f.input :precio
        f.input :dimenciones
        f.input :color
        f.input :peso
        f.input :cantidad
      end
      f.actions
    end
  
  end
  