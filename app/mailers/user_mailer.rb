class UserMailer < ActionMailer::Base
    default from: 'Tienda Virtual <reporte@tiendavirtual.com>'

    def send_confirmation(email, carrito_productos, suma_total)
        @carrito_productos = carrito_productos
        @email = email
        @suma_total = suma_total
        mail( :to => @email, :subject => 'Compra Realizada Exitosamente' )
    end

end
