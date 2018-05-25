ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  controller do
    # This code is evaluated within the controller class

    def destroy
      @user = User.find(params[:id])
      if @user.reportes.empty?
        @user.destroy
        respond_to do |format|
          format.html { redirect_to users_url, notice: 'Usuario eliminado de forma exitosa.' }
          format.json { head :no_content }
        end
      else
        respond_to do |format|
          format.html { redirect_to "/admin/users", alert: 'El usuario ha realizado compras y no puede ser eliminado.' }
          format.json { head :no_content }
        end
      end
    end
  end
  
  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
