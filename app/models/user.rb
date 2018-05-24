class User < ApplicationRecord
  rolify
  has_one :carrito
  has_many :reportes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

    
end
