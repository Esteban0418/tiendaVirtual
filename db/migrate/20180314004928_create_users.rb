class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :documento
      t.string :NIT
      t.string :telefono
      t.string :nombre
      t.string :direccion
      t.string :celular
      t.string :ciudad
      t.string :password
      t.string :profesion
      t.string :correo

      t.timestamps
    end
  end
end
