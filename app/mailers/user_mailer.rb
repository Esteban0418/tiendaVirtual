class UserMailer < ActionMailer::Base
    default from: 'Tienda Virtual <reporte@tiendavirtual.com>'

    def send_confirmation(email, carrito_productos)
        @carrito_productos = carrito_productos
        @email = email
        mail( :to => @email, :subject => 'Compra Realizada Exitosamente' )
    end

end
