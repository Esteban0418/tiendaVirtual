require 'rails_helper'
RSpec.feature "pruebas unitarias del login" do 

	it "login correcto" do 
		visit root_path
		click_on "Iniciar sesion"
		fill_in "user[email]", with: "yessika@hotmail.com"
		fill_in "user_password", with: "123456789"
		click_button('Log in')
		#capibara
		#expect(page) 
	end

	it "cambiar contraseña" do
		visit root_path
		click_on "Iniciar sesion"
		click_on "Forgot your password?"
		fill_in "user[email]", with: "yessika@hotmail.com"
		click_button('Send me reset password instructions')
	end
	
end