require 'rails_helper'
RSpec.feature "pruebas de mostrar los productos en el carrito" do 

	it "mostrar producto en el carrito" do 
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
		fill_in "user[email]", with: "yessika@hotmail.com"
		click_button('Crear usuario')
		click_on "Iniciar sesion"
		fill_in "user[email]", with: "yessika@hotmail.com"
		fill_in "user_password", with: "1234567890"
		click_button('Ingresar')
		click_on "Carrito"
		page.has_content?('Cantidad productos')
		

		

		#capibara
		#expect(page) 
		
	end
end