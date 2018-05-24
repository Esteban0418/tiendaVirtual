require 'rails_helper'
RSpec.feature "pruebas unitarias de agregar productos al  carrito" do 

	it "registro correcto" do 
		visit root_path
		click_on "Iniciar sesion"
		fill_in "user[email]", with: "yessika@hotmail.com"
		fill_in "user_password", with: "123456789"
		click_button('Log in')
		click_on "Carrito"
		#capibara
		#expect(page) 
	end
end