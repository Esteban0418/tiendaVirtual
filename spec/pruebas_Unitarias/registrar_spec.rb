require 'rails_helper'
RSpec.feature "pruebas unitarias del registro de un cliente" do 

	it "registro correcto" do 
		visit root_path
		click_on "Registrarse"
		fill_in "user[documento]", with: "123"
		fill_in "user[NIT]", with: "12234233"
		fill_in "user[telefono]", with: "71232123"
		fill_in "user[nombre]", with: "meliza"
		fill_in "user[direccion]", with: "30-23-23"
		fill_in "user[celular]", with: "32131231221"
		fill_in "user[ciudad]", with: "armenia"
		fill_in "user[password]", with: "123456789"
		fill_in "user[profesion]", with: "ing. de sistemas"
		fill_in "user[email]", with: "yessikameliza@uqvirtual.edu.co"
		click_button('Crear usuario')
		page.has_content?('32131231221')
		#capibara
		#expect(page) 
	end
end