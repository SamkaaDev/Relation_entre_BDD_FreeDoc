# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all
Study.destroy_all


50.times do 
	city_seed = City.create!(name: Faker::Address.city)
end

50.times do
	patient_seed = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(from: 51, to: 100))
 	doctor_seed = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: Faker::Number.between(from: 51, to: 100))
end

50.times do 
	appointment_seed = Appointment.create!(date: Faker::Date.forward(days: 365), doctor_id: Faker::Number.between(from: 103, to: 152), patient_id: Faker::Number.between(from: 103, to: 152), city_id: Faker::Number.between(from: 51, to: 100))

end

specialities_array = "ALLERGY_IMMUNOLOGY,ANESTHESIOLOGY,DERMATOLOGY,RADIOLOGY,EMERGENCY_MEDICINE,FAMILY_MEDICINE,INTERNAL_MEDICINE,MEDICAL_GENETICS,NEUROLOGY,NUCLEAR_MEDICINE,OBSTETRICS_GYNECOLOGY,OPHTHALMOLOGY,PATHOLOGY,PEDIATRICS,PHYSICAL_MEDICINE,PSYCHIATRY,RADIATION_ONCOLOGY,SURGERY,UROLOGY".split(",")
19.times do 
	speciality_seed = Speciality.create!(speciality: specialities_array[0])
	specialities_array.delete(specialities_array[0])
end

50.times do 
	study_seed = Study.create!(doctor_id: Faker::Number.between(from: 103, to: 152), speciality_id: Faker::Number.between(from: 71, to: 89))
end
