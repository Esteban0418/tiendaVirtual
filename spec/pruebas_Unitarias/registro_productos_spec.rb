require 'rails_helper'
RSpec.feature "pruebas unitarias del registro de un producto" do 

	it "registro correcto" do 
		visit ('/admin')
		fill_in "user[email]", with: "admin@example.com"
		fill_in "user[password]", with: "password"
		click_button('Ingresar')
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
		#capibara
		#expect(page) 
	end
end