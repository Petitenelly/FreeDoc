# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
specialties = Specialty.create([{name:"Allergology"}, {name:"Cardiology"}, {name:"Dermatology"}, {name:"Endocrinology"}, {name:"General Medicine"}, {name:"Gastroenterology"}, {name:"General Practice"}, {name:"Geriatrics"}, {name:"Hematology"}, {name:"Immunology"}, {name:"Infectious diseases"}, {name:"Internal medicine"}, {name:"Laboratory medicine"}, {name:"Nephrology"}, {name:"Neuropsychiatry"}, {name:"Neurology"}, {name:"Neurosurgery"}, {name:"Nuclear medicine"}, {name:"Obstetrics and gynaecology"}, {name:"Ophthalmology"}, {name:"Dental surgery"}, {name:"Orthopaedics"}, {name:"Otorhinolaryngology"}, {name:"Paediatrics"}, {name:"Pharmacology"}, {name:"Plastic surgery"}, {name:"Podiatric surgery"}, {name:"Preventive medicine"}, {name:"Psychiatry"}, {name:"Public health"},{name:"Radiation Oncology"}, {name:"Radiology"}, {name:"Respiratory medicine"}, {name:"Rheumatology"}, {name:"Stomatology"}, {name:"Thoracic surgery"}, {name:"Tropical medicine"}, {name:"Urology"}, {name:"Vascular surgery"}, {name:"Venereology"}])
=end


require 'faker'

10.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip
  )
end
puts "10 docteurs ont été créés"

10.times do
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name
  )
end
puts "10 patients ont été créés"

10.times do
  appointment = Appointment.create(doctor_id: rand(1..25), patient_id: rand(1..50), date: Faker::Date.in_date_period 
)                                
end
puts "10 RDV ont été créés"

=begin
10.times do
    city = City.create(city: Faker::Address.city, doctor_id: rand(1..25), patient_id: rand(1..50), appointment_id:rand(1..25)
  )
  end
  puts "10 villes ont été créés"

  10.times do
  specialty = Specialty.create(specialty: Faker::Job.title, doctor_id: rand(1..25), appointments_id: rand(1..25)
)
end
puts "10 spécialités ont été créés"

=end