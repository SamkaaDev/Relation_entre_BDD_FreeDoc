class Doctor < ApplicationRecord
	has_many :appointments
	has_many :studies
  	has_many :patients, through: :appointments
  	has_many :specialities, through: :studies
  	belongs_to :city
end
