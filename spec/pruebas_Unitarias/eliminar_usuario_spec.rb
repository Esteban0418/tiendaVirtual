require 'rails_helper'
RSpec.feature "Prueba de validacion para eliminar usuarios:" do 

    it "Eliminar usuario que no ha hecho compras" do 
        visit root_path
        click_on "Registrarse"
		fill_in "user[documento]", with: "123"
		fill_in "user[telefono]", with: "71232123"
		fill_in "user[nombre]", with: "meliza"
		fill_in "user[direccion]", with: "30-23-23"
		fill_in "user[celular]", with: "32131231221"
		fill_in "user[ciudad]", with: "armenia"
		fill_in "user[password]", with: "password"
		fill_in "user[profesion]", with: "ing. de sistemas"
		fill_in "user[email]", with: "admin@example.com"
		click_button('Crear usuario')
        click_on "Registrarse"
		fill_in "user[documento]", with: "123"
		fill_in "user[NIT]", with: "12234233"
		fill_in "user[telefono]", with: "71232123"
		fill_in "user[nombre]", with: "meliza"
		fill_in "user[direccion]", with: "30-23-23"
		fill_in "user[celular]", with: "32131231221"
		fill_in "user[ciudad]", with: "armenia"
		fill_in "user[password]", with: "1234567890"
		fill_in "user[profesion]", with: "ing. de sistemas"
		fill_in "user[email]", with: "yessika@hotmail.com"
		click_button('Crear usuario')
		visit ('/admin')
		fill_in "user[email]", with: "admin@example.com"
		fill_in "user[password]", with: "password"
		click_button('Ingresar')
        click_on "Users"
        first(".delete_link").click
        expect(page).to have_content("Usuario eliminado de forma exitosa.")
    end


	it "Eliminar un usuario que si ha hecho compras" do 
		visit root_path
		click_on "Registrarse"
		fill_in "user[documento]", with: "123"
		fill_in "user[telefono]", with: "71232123"
		fill_in "user[nombre]", with: "meliza"
		fill_in "user[direccion]", with: "30-23-23"
		fill_in "user[celular]", with: "32131231221"
		fill_in "user[ciudad]", with: "armenia"
		fill_in "user[password]", with: "password"
		fill_in "user[profesion]", with: "ing. de sistemas"
		fill_in "user[email]", with: "admin@example.com"
		click_button('Crear usuario')
        click_on "Registrarse"
		fill_in "user[documento]", with: "123"
		fill_in "user[NIT]", with: "12234233"
		fill_in "user[telefono]", with: "71232123"
		fill_in "user[nombre]", with: "meliza"
		fill_in "user[direccion]", with: "30-23-23"
		fill_in "user[celular]", with: "32131231221"
		fill_in "user[ciudad]", with: "armenia"
		fill_in "user[password]", with: "1234567890"
		fill_in "user[profesion]", with: "ing. de sistemas"
		fill_in "user[email]", with: "yessika@hotmail.com"
		click_button('Crear usuario')
		visit ('/admin')
		fill_in "user[email]", with: "admin@example.com"
		fill_in "user[password]", with: "password"
		click_button('Ingresar')
		click_on "Productos"
		click_on "New Producto"
		fill_in "producto[nombre]", with: "dell"
		fill_in "producto[descripcion]", with: "computador portatil"
		select('Computador', from: 'producto_tipo')
		fill_in "producto[material]", with: "hierro	"
		fill_in "producto[precio]", with: "1234423"
		fill_in "producto[dimenciones]", with: "30-23-23"
		fill_in "producto[color]", with: "#000000"
		fill_in "producto[peso]", with: "3"
		fill_in "producto[cantidad]", with: "12"
		click_button('Create Producto')
		page.has_content?('dell')
		click_on "Logout"
		click_on "Iniciar sesion"
		fill_in "user[email]", with: "yessika@hotmail.com"
		fill_in "user_password", with: "1234567890"
		click_button('Ingresar')
		page.has_content?('Productos disponibles')
		click_on "Productos"
		click_on "Agregar al carrito"
		click_on "Agregar al carrito"
		visit carritos_path
		page.has_content?('2')
		click_on "Comprar"
        expect(page).to have_content("Compra realizada exitosamente")
        click_on "Salir"
        visit ('/admin')
		fill_in "user[email]", with: "admin@example.com"
		fill_in "user[password]", with: "password"
		click_button('Ingresar')
        click_on "Users"
        first(".delete_link").click
        save_and_open_page
        expect(page).to have_content("El usuario ha realizado compras y no puede ser eliminado.")
		#capibara
		#expect(page) 
	end
end