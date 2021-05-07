# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

specialties = Specialty.create([{name:"Allergology"}, {name:"Cardiology"}, {name:"Dermatology"}, {name:"Endocrinology"}, {name:"General Medicine"}, {name:"Gastroenterology"}, {name:"General Practice"}, {name:"Geriatrics"}, {name:"Hematology"}, {name:"Immunology"}])

10.times do
    c = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
    p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c)
    d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty:Faker::Job.title , zip_code: Faker::Address.zip_code, city: c)
    rdv = Appointment.new(date: Faker::Date.forward(days: 30))
    rdv.doctor = d
    rdv.patient = p
    rdv.city = c
    rdv.save
  end


=begin
specialties = Specialty.create([{name:"Allergology"}, {name:"Cardiology"}, {name:"Dermatology"}, {name:"Endocrinology"}, {name:"General Medicine"}, {name:"Gastroenterology"}, {name:"General Practice"}, {name:"Geriatrics"}, {name:"Hematology"}, {name:"Immunology"}, {name:"Infectious diseases"}, {name:"Internal medicine"}, {name:"Laboratory medicine"}, {name:"Nephrology"}, {name:"Neuropsychiatry"}, {name:"Neurology"}, {name:"Neurosurgery"}, {name:"Nuclear medicine"}, {name:"Obstetrics and gynaecology"}, {name:"Ophthalmology"}, {name:"Dental surgery"}, {name:"Orthopaedics"}, {name:"Otorhinolaryngology"}, {name:"Paediatrics"}, {name:"Pharmacology"}, {name:"Plastic surgery"}, {name:"Podiatric surgery"}, {name:"Preventive medicine"}, {name:"Psychiatry"}, {name:"Public health"},{name:"Radiation Oncology"}, {name:"Radiology"}, {name:"Respiratory medicine"}, {name:"Rheumatology"}, {name:"Stomatology"}, {name:"Thoracic surgery"}, {name:"Tropical medicine"}, {name:"Urology"}, {name:"Vascular surgery"}, {name:"Venereology"}])
=end


