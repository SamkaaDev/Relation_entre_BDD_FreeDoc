class Speciality < ApplicationRecord
	has_many :studies
	has_many :doctors, through: :studies
end
