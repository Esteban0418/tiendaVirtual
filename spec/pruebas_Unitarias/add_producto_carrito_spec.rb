require 'rails_helper'
RSpec.feature "pruebas unitarias del registro de un producto" do 

	it "aggregar un producto al carrito" do 
		 @user = User.create
         user:create, user_id: @user.id, item: { documento: "112", NIT: "1212", telefono: "3123", nombre: "h", direccion: "wwrg",celular: "341341234", ciudad: "wefew", password: "1234567890",profesion: "nfg", email: "yessikameliza@hotmail.com"}
         @producto = User.create
         producto:create, user_id: @user.id, item: { nombre: "name", descripcion: "wfdsd", tipo: "computador", material: "sfdf", precio: "23432" ,dimension:"wrefre", color: "#000000", peso: "3", cantidad: "3"}
	    visit root_path
		click_on "Iniciar sesion"
		fill_in "user[email]", with: @user.email
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