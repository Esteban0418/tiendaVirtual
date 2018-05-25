require 'rails_helper'
RSpec.feature "pruebas de mostrar los productos en el carrito" do 

	it "agregar producto al carrito" do 
		visit root_path
		click_on "Iniciar sesion"
		fill_in "user[email]", with: "yessika@hotmail.com"
		fill_in "user_password", with: "1234567890"
		click_button('Log in')
		page.has_content?('Productos disponibles')
		click_on "Carrito"
		page.has_content?('Carrito')
		

		#capibara
		#expect(page) 
	end
end