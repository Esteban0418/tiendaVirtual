require 'rails_helper'
RSpec.feature "pruebas unitarias de buscar producto" do 

	it "busqueda_productos correcto" do 
		visit root_path
		fill_in "search", with: "dell"
		click_button('Buscar')
		#capibaras
		#expect(page) 
	end
end