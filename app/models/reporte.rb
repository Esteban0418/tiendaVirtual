class Reporte < ApplicationRecord
    has_and_belongs_to_many :productos
    belongs_to :user
end
