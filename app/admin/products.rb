ActiveAdmin.register Producto do
    permit_params :nombre, :descripcion, :tipo, :material, :dimenciones, :color, :peso, :precio, :cantidad, :foto
  
    index do
        selectable_column
        id_column
        column :foto
        column :nombre
        column :descripcion
        column :tipo
        column :material
        column :precio
        column :dimenciones
        column :color
        column :peso
        column :cantidad
        actions
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
  