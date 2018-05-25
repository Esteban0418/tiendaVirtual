require 'rails_helper'
RSpec.feature "pruebas unitarias del registro de un producto" do 

	it "aggregar un producto al carrito" do 
		visit root_path
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
		fill_in "user[email]", with: "yessikameliza@hotmail.com"
		click_button('Create User')
		page.has_content?('32131231221')
		visit ('/admin')
		fill_in "user[email]", with: "admin@example.com"
		fill_in "user[password]", with: "password"
		click_button('Log in')
		click_on "Productos"
		click_on "New Producto"
		fill_in "producto[nombre]", with: "dell"
		fill_in "producto[descripcion]", with: "computador portatil"
		fill_in "producto[tipo]", with: "computador"
		fill_in "producto[material]", with: "hierro	"
		fill_in "producto[precio]", with: "1234423"
		fill_in "producto[dimenciones]", with: "30-23-23"
		fill_in "producto[color]", with: "#000000"
		fill_in "producto[peso]", with: "3"
		fill_in "producto[cantidad]", with: "12"
		click_button('Create Producto')
		page.has_content?('dell')
	    visit root_path
		click_on "Iniciar sesion"
		fill_in "user[email]", with: "yessika@hotmail.com"
		fill_in "user_password", with: "1234567890"
		click_button('Log in')
		page.has_content?('Productos disponibles')
		click_on "Productos"
		click_on "Carrito"
		visit carritos_path
		page.has_content?('1')

		#capibara
		#expect(page) 
	end
end